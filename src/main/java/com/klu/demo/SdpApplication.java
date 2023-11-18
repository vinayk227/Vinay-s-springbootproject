package com.klu.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@SpringBootApplication
@EnableDiscoveryClient
public class SdpApplication {

	public static void main(String[] args) {
		SpringApplication.run(SdpApplication.class, args);
	}

}
