package tn.esprit.spring;  // adapte ce package selon ton projet

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {

    @GetMapping("/")
    public String home() {
        return "Bienvenue sur mon application!";
    }
}
