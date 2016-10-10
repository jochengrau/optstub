/**
 * Created by jochen on 09Oct16.
 */

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import freemarker.template.TemplateExceptionHandler;

import java.io.File;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
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

    public String generateOptimizerResult(String flightLeg, String traceId){

        Map<String, String> data = new HashMap<>();
        data.put("flightLeg", flightLeg);
        data.put("traceId", traceId);
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
        } catch (IOException e) {
            e.printStackTrace();
        } catch (TemplateException e) {
            e.printStackTrace();
        }
        return result;
    }

}
