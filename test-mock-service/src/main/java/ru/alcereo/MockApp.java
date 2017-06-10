package ru.alcereo;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Random;

/**
 * Created by alcereo on 09.06.17.
 */
@SpringBootApplication
@RestController
public class MockApp {
    Logger logger = LoggerFactory.getLogger(MockApp.class);

    @GetMapping("/")
    public ResponseEntity mainGet(){
        Integer random = new Random().nextInt(100);
        String msg = "Get id:" + random;
        logger.info(msg);
        return ResponseEntity.ok(msg);
    }

    public static void main(String[] args) {
        SpringApplication.run(MockApp.class, args);
    }
}
