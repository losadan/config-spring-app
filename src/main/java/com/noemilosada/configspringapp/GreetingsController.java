package com.noemilosada.configspringapp;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RefreshScope
@RestController
public class GreetingsController {
    @Value("${application.greeting}")
    private String hello;

    @GetMapping("/hello")
    public String hello() {
        return hello;
    }
}
