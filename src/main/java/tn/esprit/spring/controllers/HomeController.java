package tn.esprit.spring.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

    @GetMapping("/api")
    public String home() {
        return "Bienvenue dans mon application !";
    }
}
