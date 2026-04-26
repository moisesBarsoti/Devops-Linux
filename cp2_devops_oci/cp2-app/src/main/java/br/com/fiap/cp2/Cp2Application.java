package br.com.fiap.cp2;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class Cp2Application {

    record HealthStatus(String status, String message){}

    public static void main(String[] args) {
        SpringApplication.run(Cp2Application.class, args);
    }

    @GetMapping("/")
    public HealthStatus healthCheack() {
        return new HealthStatus("Ok", "Api is run");
    }
}
