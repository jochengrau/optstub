import io.vertx.core.*;
import io.vertx.core.http.HttpServer;
import io.vertx.core.http.HttpServerResponse;
import io.vertx.core.json.JsonObject;
import io.vertx.ext.web.Router;
import io.vertx.ext.web.RoutingContext;
import io.vertx.ext.web.handler.BodyHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class OptimizerStub extends AbstractVerticle {

    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    static Map<String, String> progress = new ConcurrentHashMap<>();

    @Override
    public void start() {
        HttpServer server = vertx.createHttpServer();

        Router router = Router.router(vertx);
        router.route().handler(BodyHandler.create());

        router.post("/lido/los/ofpcalculation/").handler(this::handleCalculationRequest);
        router.get("/lido/sms/status/:traceid").handler(this::handleProgressRequest);
        router.get("/lido/los/ofpcalculationresult/:traceid").handler(this::handleResultRequest);

        server.requestHandler(router::accept).listen(8080);
    }

    private void handleResultRequest(RoutingContext routingContext) {
        String traceId = routingContext.request().getParam("traceid");

        HttpServerResponse response = routingContext.response();
        response.putHeader("content-type", "text/plain");
        String result = progress.get(traceId);
        if("in progress".equals(result)){
            response.setStatusCode(303).end();
        }
        else{
            response.setStatusCode(200).end(("in progress".equals(result)?"in progress":result));
        }
    }

    private void handleProgressRequest(RoutingContext routingContext) {

        String traceId = routingContext.request().getParam("traceid");
        HttpServerResponse response = routingContext.response();
        response.putHeader("content-type", "text/plain");
        String status = progress.get(traceId);
        if("in progress".equals(status)){
            response.putHeader("Location", "http://" + routingContext.request().host() + "/lido/sms/status/" + traceId);
            response.setStatusCode(200).end(new TemplateResultCalculator().generateSmsResult("start", traceId));
        }
        else{
            response.setStatusCode(200).end(new TemplateResultCalculator().generateSmsResult("completed", traceId));
        }
    }

    private void handleCalculationRequest(RoutingContext routingContext) {
        String traceId = routingContext.request().getHeader("X-lido-traceId");
        JsonObject body = routingContext.getBodyAsJson();
        String flightleg = body.getString("flightleg");

        logger.info("received calculation request for traceId " + traceId + " and flightleg " + flightleg);
        progress.put(traceId, "in progress");

        // fake some computation time before sending completed event
        vertx.setTimer(5000, new Handler<Long>() {
            @Override
            public void handle(Long event) {
                String computeResult = new TemplateResultCalculator().generateOptimizerResult(flightleg, traceId);
                logger.info("calculation completed");
                progress.put(traceId, computeResult);
                String notification = "Calculation with traceId " + traceId + " completed!\n"
                        + "Location: http://" + routingContext.request().host() + "/lido/los/ofpcalculationresult/" + traceId;
                vertx.eventBus().send("calculationCompleted", notification);
            }
        });

        logger.info("send calculation request acceptance");
        HttpServerResponse response = routingContext.response();
        response.putHeader("content-type", "text/plain");
        response.putHeader("Location", "http://" + routingContext.request().host() + "/lido/sms/status/" + traceId);
        response.setStatusCode(202).end();
    }
}
