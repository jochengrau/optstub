import io.vertx.core.*;

/**
 * Created by jochen on 09Oct16.
 */
public class VertxRunner extends AbstractVerticle{

    public static void main(String[] args) {
        Vertx myVertx = Vertx.vertx();
        new VertxRunner().deployVerticles(myVertx);
    }

    @Override
    public void start(){
        deployVerticles(vertx);
    }

    public void deployVerticles(Vertx vx){
        vx.deployVerticle(OptimizerStub.class.getName());
        vx.deployVerticle(OptimizerNotification.class.getName());
    }

}
