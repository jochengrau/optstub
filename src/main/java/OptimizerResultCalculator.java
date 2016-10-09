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

public class OptimizerResultCalculator {

    static Configuration cfg;

    static {
        cfg = new Configuration(Configuration.VERSION_2_3_23);
        try {
            cfg.setDirectoryForTemplateLoading(new File("/Users/jochen/IdeaProjects/optstub/target/classes/templates"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        cfg.setDefaultEncoding("UTF-8");
        cfg.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER);
        cfg.setLogTemplateExceptions(false);
    }

    public String computeResult(String flightLeg, String traceId){

        String result = "computation failed";

        try {
            Map<String, String> data = new HashMap<>();
            Template template = cfg.getTemplate("result.ftl");
            data.put("flightLeg", flightLeg);
            data.put("traceId", traceId);
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
