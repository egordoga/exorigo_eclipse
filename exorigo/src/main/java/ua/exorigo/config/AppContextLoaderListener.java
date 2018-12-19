package ua.exorigo.config;

import javax.servlet.annotation.WebListener;

import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;

@WebListener
public class AppContextLoaderListener extends ContextLoaderListener{

	public AppContextLoaderListener() {
        super(getWebApplicationContext());
    }

    private static WebApplicationContext getWebApplicationContext() {
        AnnotationConfigWebApplicationContext context
                = new AnnotationConfigWebApplicationContext();
        context.scan("ua.exorigo");
        context.refresh();
        return context;
    }
}
