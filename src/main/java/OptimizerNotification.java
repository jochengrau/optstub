import io.vertx.camel.CamelBridge;
import io.vertx.camel.CamelBridgeOptions;
import io.vertx.core.AbstractVerticle;
import org.apache.camel.CamelContext;
import org.apache.camel.RoutesBuilder;
import org.apache.camel.builder.RouteBuilder;
import org.apache.camel.component.stream.StreamComponent;
import org.apache.camel.impl.DefaultCamelContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import static io.vertx.camel.InboundMapping.fromCamel;
import static io.vertx.camel.OutboundMapping.fromVertx;
import static org.apache.activemq.camel.component.ActiveMQComponent.activeMQComponent;
import static org.apache.camel.language.simple.SimpleLanguage.simple;

/**
 * Created by jochen on 09Oct16.
 */
public class OptimizerNotification extends AbstractVerticle {

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    Boolean jmsNotificationEnabled = true;

    @Override
    public void start() throws Exception {

        String brokerUrl = System.getenv().getOrDefault("BROKER_URL", "tcp://10.236.57.152:8516");
        logger.info("using BROKER_URL (environment variable) " + brokerUrl);
        if("".equals(brokerUrl)) jmsNotificationEnabled = false;

        CamelContext camelContext = new DefaultCamelContext();

        camelContext.addComponent("activemq", activeMQComponent(brokerUrl));
        camelContext.addComponent("stream", new StreamComponent());

        camelContext.addRoutes(createMyRoutes());

        camelContext.start();

        CamelBridge.create(vertx, new CamelBridgeOptions(camelContext)
                .addOutboundMapping(fromVertx("calculationCompleted").toCamel("direct:losCalculationCompleted")))
                .start();
    }

    private RoutesBuilder createMyRoutes() {
        return new RouteBuilder() {
            public void configure() throws Exception {

                String notificationQueueName = System.getenv().getOrDefault("NOTIFICATION_QUEUENAME", "LOS.Q.CCC.CALCULATIONCOMPLETED.TO.IFS.NONE");
                logger.info("using NOTIFICATION_QUEUENAME (environment variable) " + notificationQueueName);

                if(jmsNotificationEnabled)
                    from("direct:losCalculationCompleted")
                            .to("stream:out")
                            .to("activemq:queue:" + notificationQueueName);
                else
                    from("direct:losCalculationCompleted")
                            .to("stream:out");
            }
        };
    }

}
