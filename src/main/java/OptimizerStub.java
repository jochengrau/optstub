import io.vertx.core.*;
import io.vertx.core.http.HttpServer;
import io.vertx.core.http.HttpServerResponse;
import io.vertx.core.json.JsonObject;
import io.vertx.ext.web.Router;
import io.vertx.ext.web.RoutingContext;
import io.vertx.ext.web.handler.BodyHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class OptimizerStub extends AbstractVerticle {

    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    static Map<String, String> progress = new ConcurrentHashMap<>();

    static final List<String> mandatoryHeaders;
    static {
        mandatoryHeaders = new ArrayList<>();
        mandatoryHeaders.add("X-lido-applicationId");
        mandatoryHeaders.add("X-lido-clientId");
        mandatoryHeaders.add("X-lido-businessId");
        mandatoryHeaders.add("X-lido-timeStamp");
        mandatoryHeaders.add("X-lido-traceId");
    }

    @Override
    public void start() {

        int listen_port = Integer.parseInt(System.getenv().getOrDefault("LISTEN_PORT", "8080"));
        logger.info("using LISTEN_PORT (environment variable) " + listen_port);

        HttpServer server = vertx.createHttpServer();

        Router router = Router.router(vertx);
        router.route().handler(BodyHandler.create());

        router.post("/lido/los/ofpcalculation/").handler(this::handleCalculationRequest);
        router.get("/lido/sms/status/:traceid").handler(this::handleProgressRequest);
        router.get("/lido/los/ofpcalculationresult/:traceid").handler(this::handleResultRequest);

        server.requestHandler(router::accept).listen(listen_port);
    }

    private void handleResultRequest(RoutingContext routingContext) {

        MultiMap headers = routingContext.request().headers();
        checkMandatoryHeaders(headers);

        String traceId = routingContext.request().getParam("traceid");

        HttpServerResponse response = routingContext.response();
        response.putHeader("content-type", "text/plain");
        if(!progress.containsKey(traceId)){
            response.setStatusCode(404).end("no result for traceId: " + traceId + "\n");
        }
        else {
            String result = progress.get(traceId);
            if ("in progress".equals(result)) {
                response.putHeader("Location", "http://" + routingContext.request().host() + "/lido/sms/status/" + traceId);
                response.setStatusCode(303).end();
            } else {
                response.putHeader("content-type", "application/xml");
                response.setStatusCode(200).end(result);
                progress.remove(traceId);
            }
        }
    }

    private void handleProgressRequest(RoutingContext routingContext) {

        MultiMap headers = routingContext.request().headers();
        checkMandatoryHeaders(headers);

        String traceId = routingContext.request().getParam("traceid");
        HttpServerResponse response = routingContext.response();
        response.putHeader("content-type", "text/plain");
        if (!progress.containsKey(traceId)) {
            response.setStatusCode(404).end("no result for traceId: " + traceId + "\n");
        } else {
            String status = progress.get(traceId);
            if ("in progress".equals(status)) {
                response.putHeader("Location", "http://" + routingContext.request().host() + "/lido/sms/status/" + traceId);
                response.setStatusCode(200).end(new TemplateResultCalculator().generateSmsResult("start", traceId));
            } else {
                response.setStatusCode(200).end(new TemplateResultCalculator().generateSmsResult("completed", traceId));
            }
        }
    }

    private void handleCalculationRequest(RoutingContext routingContext) {

        MultiMap headers = routingContext.request().headers();
        checkMandatoryHeaders(headers);

        int calculationLatencyMillis = Integer.parseInt(System.getenv().getOrDefault("CALCULATION_LATENCY_MILLIS", "5000"));
        logger.info("using CALCULATION_LATENCY_MILLIS (environment variable) " + calculationLatencyMillis);

        String traceId = headers.get("X-lido-traceId");
        String body = routingContext.getBodyAsString();

        logger.info("received calculation request for traceId " + traceId);
        progress.put(traceId, "in progress");

        // fake some computation time before sending completed event
        vertx.setTimer(calculationLatencyMillis, id -> {
            String computeResult = new TemplateResultCalculator().generateOptimizerResult(body, traceId);
            logger.info("calculation completed");
            progress.put(traceId, computeResult);
            String notification = "Calculation with traceId " + traceId + " completed!\n"
                    + "Location: http://" + routingContext.request().host() + "/lido/los/ofpcalculationresult/" + traceId;
            vertx.eventBus().send("calculationCompleted", notification);
        });

        logger.info("send calculation request acceptance");
        HttpServerResponse response = routingContext.response();
        response.putHeader("content-type", "text/plain");
        response.putHeader("Location", "http://" + routingContext.request().host() + "/lido/sms/status/" + traceId);
        response.setStatusCode(202).end();
    }

    private void checkMandatoryHeaders(MultiMap headers) {
        mandatoryHeaders.forEach( (v) -> {
            if( ! headers.contains(v) )
                logger.warn("Missing mandatory header: " + v);
        } );
    }
}
