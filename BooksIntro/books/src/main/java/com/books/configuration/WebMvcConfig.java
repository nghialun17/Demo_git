package com.books.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.thymeleaf.templatemode.TemplateMode;
import org.thymeleaf.templateresolver.ClassLoaderTemplateResolver;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
        return bCryptPasswordEncoder;
    }
    
    public static void main(String[] args) {
    	BCryptPasswordEncoder bCryptPasswordEncoder = new  BCryptPasswordEncoder() ;
    	System.out.print(bCryptPasswordEncoder.encode("admin")); 
	}
    
    public class WebConfig implements WebMvcConfigurer {
        @Bean
        public ClassLoaderTemplateResolver yourTemplateResolver() {
            ClassLoaderTemplateResolver configurer = new ClassLoaderTemplateResolver();
            configurer.setPrefix("templates/");
            configurer.setSuffix(".html");
            configurer.setTemplateMode(TemplateMode.HTML);
            configurer.setCharacterEncoding("UTF-8");
            configurer.setOrder(0);  
            configurer.setCacheable(false);
            configurer.setCheckExistence(true);
            return configurer;
        }
    }

}