package com.tbm5k.secretsdemo.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class homeController {
    
    @Value("${name}")
    private String name;

    @GetMapping("/")
    public String getText(){
        return name;
    }
}
