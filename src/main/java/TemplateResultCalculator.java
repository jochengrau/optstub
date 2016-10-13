/**
 * Created by jochen on 09Oct16.
 */

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import freemarker.template.TemplateExceptionHandler;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.*;
import java.io.*;
import java.util.HashMap;
import java.util.Map;

public class TemplateResultCalculator {

    static Configuration cfg;

    static {
        cfg = new Configuration(Configuration.VERSION_2_3_23);
        cfg.setClassLoaderForTemplateLoading(TemplateResultCalculator.class.getClassLoader(), "/templates");
        cfg.setDefaultEncoding("UTF-8");
        cfg.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER);
        cfg.setLogTemplateExceptions(false);
    }

    static final Map<String, String> xpath_expressions;
    static {
        xpath_expressions = new HashMap<>();
        xpath_expressions.put("flightNumber", "/OfpCalculationRequest/RequestDescription/FlightNo");
        xpath_expressions.put("airline", "/OfpCalculationRequest/RequestDescription/Airline/Icao");
        xpath_expressions.put("airlineOperator", "/OfpCalculationRequest/RequestDescription/AirlineOperator/Icao");
        xpath_expressions.put("departureAirport", "/OfpCalculationRequest/RequestDescription/DepartureAirport/Iata");
        xpath_expressions.put("destinationAirport", "/OfpCalculationRequest/RequestDescription/DestinationAirport/Iata");
        xpath_expressions.put("flightDate", "/OfpCalculationRequest/RequestDescription/DayOfFlight");
    }

    public String generateOptimizerResult(String requestBody, String traceId){

        Map<String, String> data = new HashMap<>();
        data.put("traceId", traceId);
        extractRequestValues(requestBody, data);
        String templateName = "optimizerResult.ftl";

        return resolveTemplate(data, templateName);
    }

    public String generateSmsResult(String status, String traceId){

        Map<String, String> data = new HashMap<>();
        data.put("traceId", traceId);
        data.put("status", status);
        String templateName = "sms_response.ftl";

        return resolveTemplate(data, templateName);
    }

    String resolveTemplate(Map<String, String> data, String templateName) {
        String result = "";
        try {
            Template template = cfg.getTemplate(templateName);
            Writer out = new StringWriter();
            template.process(data, out);
            result = out.toString();
            return result;
        } catch (IOException | TemplateException e) {
            e.printStackTrace();
        }
        return result;
    }

    private void extractRequestValues(String requestBody, Map<String, String> data){
        try {
            DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
            DocumentBuilder db = dbf.newDocumentBuilder();
            Document document = db.parse(new InputSource(new StringReader(requestBody)));
            XPath xPath = XPathFactory.newInstance().newXPath();
            xpath_expressions.forEach((k,v)->{
                try {
                    data.put(k, (String) xPath.compile(v).evaluate(document, XPathConstants.STRING));
                } catch (XPathExpressionException e) {
                    e.printStackTrace();
                }
            });
        } catch (ParserConfigurationException | SAXException | IOException e) {
            e.printStackTrace();
        }
    }
}
