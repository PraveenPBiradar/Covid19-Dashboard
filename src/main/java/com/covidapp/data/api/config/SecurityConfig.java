/*
package com.covidapp.data.api.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    public void configure(HttpSecurity httpSecurity) throws Exception {
        httpSecurity
                .antMatcher("/login")
                .authorizeRequests()
                .antMatchers("/resources/**")
                .permitAll()
                .anyRequest()
                .permitAll();

    }
}
*/
