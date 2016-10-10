import io.vertx.camel.CamelBridge;
import io.vertx.camel.CamelBridgeOptions;
import io.vertx.core.AbstractVerticle;
import org.apache.camel.CamelContext;
import org.apache.camel.RoutesBuilder;
import org.apache.camel.builder.RouteBuilder;
import org.apache.camel.impl.DefaultCamelContext;

import static io.vertx.camel.InboundMapping.fromCamel;
import static io.vertx.camel.OutboundMapping.fromVertx;
import static org.apache.activemq.camel.component.ActiveMQComponent.activeMQComponent;
import static org.apache.camel.language.simple.SimpleLanguage.simple;

/**
 * Created by jochen on 09Oct16.
 */
public class OptimizerNotification extends AbstractVerticle {

    @Override
    public void start() throws Exception {
        CamelContext camelContext = new DefaultCamelContext();

        camelContext.addComponent("activemq", activeMQComponent("tcp://10.236.57.154:8810"));

        camelContext.addRoutes(createMyRoutes());

        camelContext.start();

        CamelBridge.create(vertx, new CamelBridgeOptions(camelContext)
                .addOutboundMapping(fromVertx("calculationCompleted").toCamel("direct:losCalculationCompleted")))
                .start();
    }

    private RoutesBuilder createMyRoutes() {
        return new RouteBuilder() {
            public void configure() throws Exception {

                from("direct:losCalculationCompleted")
                        .to("direct:fileNotification")
                        .to("direct:jmsNotification");

                from("direct:fileNotification")
                        .to("file:///home/jochen/projects/optstub/target/notifications");

                from("direct:jmsNotification")
                        .to("activemq:queue:LOS.Q.CCC.CALCULATIONCOMPLETED.TO.IFS.NONE");
            }
        };
    }

}
