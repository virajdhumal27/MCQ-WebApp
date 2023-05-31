package com.viraj.mcq;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@ServletComponentScan
@SpringBootApplication
public class McqApplication {

	public static void main(String[] args) {
		SpringApplication.run(McqApplication.class, args);
	}

}
