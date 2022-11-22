package com.codingdojo.paltech;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication

public class PalTechApplication {

	public static void main(String[] args) {
		SpringApplication.run(PalTechApplication.class, args);
	}

}
