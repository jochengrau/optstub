import io.vertx.core.Vertx;

/**
 * Created by jochen on 09Oct16.
 */
public class VertxRunner {
    public static void main(String[] args) {
        Vertx vertx = Vertx.vertx();
        vertx.deployVerticle(OptimizerStub.class.getName());
        vertx.deployVerticle(OptimizerNotification.class.getName());
    }
}
