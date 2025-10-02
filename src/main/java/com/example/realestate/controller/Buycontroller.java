package com.example.realestate.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.realestate.model.Property;
import com.example.realestate.repository.PropertyRepository;

@Controller
public class Buycontroller {

    private final PropertyRepository propertyRepository;

    // Constructor injection
    public Buycontroller(PropertyRepository propertyRepository) {
        this.propertyRepository = propertyRepository;
    }

    // Home page for Buy section
    @GetMapping("/buy")
    public String home(Model model) {
        model.addAttribute("pageTitle", "EstateFinders - Find Your Dream Home");
        // Fetch only ACCEPTED properties
        List<Property> acceptedProperties = propertyRepository.findByStatus("ACCEPTED");
        model.addAttribute("properties", acceptedProperties);
        return "buy"; // buy.jsp will iterate over accepted properties
    }

    // Optional: Separate endpoint if needed for "estate list"
    @GetMapping("/buy/estate/add")
    public String showEstateList(Model model) {
        List<Property> acceptedProperties = propertyRepository.findByStatus("ACCEPTED");
        model.addAttribute("properties", acceptedProperties);
        return "estate-list"; // estate-list.jsp will iterate over accepted properties
    }

}
