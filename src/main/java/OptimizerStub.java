import io.vertx.core.*;
import io.vertx.core.eventbus.EventBus;
import io.vertx.core.http.HttpMethod;
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

        router.post("/lido/los/calculation/").handler(this::handleCalculationRequest);
        router.get("/lido/sms/:traceid").handler(this::handleProgressRequest);
        router.get("/lido/los/results/:traceid").handler(this::handleResultRequest);

        server.requestHandler(router::accept).listen(8080);
    }

    private void handleResultRequest(RoutingContext routingContext) {
        String traceId = routingContext.request().getParam("traceid");

        HttpServerResponse response = routingContext.response();
        response.putHeader("content-type", "text/plain");
        String completed = progress.get(traceId);

        response.setStatusCode(200).end(("in progress".equals(completed)?"in progress":completed));
    }

    private void handleProgressRequest(RoutingContext routingContext) {
        String traceId = routingContext.request().getParam("traceid");

        HttpServerResponse response = routingContext.response();
        response.putHeader("content-type", "text/plain");
        String completed = progress.get(traceId);
        if("in progress".equals(completed)){
            response.setStatusCode(200).end("Calculation in progress\n");
        }
        else{
            response.putHeader("Location", "http://" + routingContext.request().host() + "/lido/los/results/" + traceId);
            response.setStatusCode(303).end();
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
                String computeResult = new OptimizerResultCalculator().computeResult(flightleg, traceId);
                logger.info("calculation completed");
                progress.put(traceId, computeResult);
                vertx.eventBus().send("calculationCompleted", computeResult);
            }
        });

        logger.info("send calculation request acceptance");
        HttpServerResponse response = routingContext.response();
        response.putHeader("content-type", "text/plain");
        response.putHeader("Location", "http://" + routingContext.request().host() + "/lido/los/results/" + traceId);
        response.setStatusCode(202).end();
    }
}
