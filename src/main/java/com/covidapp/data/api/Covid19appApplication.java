package com.covidapp.data.api;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

/**
 * spring boot app starter
 */
@SpringBootApplication
public class Covid19appApplication {

    public static void main(String[] args) {
        SpringApplication.run(Covid19appApplication.class, args);
    }

   /* @Bean
    public BCryptPasswordEncoder bCryptPasswordEncoder(){
        return new BCryptPasswordEncoder();
    }*/

    @Bean
    public RestTemplate restTemplate() {
        return new RestTemplate();
    }

}
