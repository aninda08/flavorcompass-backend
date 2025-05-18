package com.flavorcompass.mealrecommendation;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication
@EnableFeignClients
public class MealrecommendationApplication {

	public static void main(String[] args) {
		SpringApplication.run(MealrecommendationApplication.class, args);
	}

}
