package com.flavorcompass.mealrecommendation.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/recommendations")
public class RecommendationController {
    
    @GetMapping
    public ResponseEntity<String> getRecommendations() {
        return ResponseEntity.ok("recommendations");
    }

}
