package com.example.realestate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.realestate.model.aregister;
import com.example.realestate.repository.aregisterRepository;

@Controller
public class aregisterController {

    private final aregisterRepository adregisterRepository;

    public aregisterController(aregisterRepository adregisterRepository) {
        this.adregisterRepository = adregisterRepository;
    }

    // Show registration form
    @GetMapping("/adregister")
    public String ashowRegisterForm() {
        return "adregister";   // loads adregister.jsp
    }

    // Handle form submission
    @PostMapping("/adregister")
    public String aregisterUser(
            @RequestParam("name") String fullName,
            @RequestParam("username") String username,
            @RequestParam("email") String email,
            @RequestParam("number") String phoneNumber,
            @RequestParam("password") String password,
            Model model) {

        aregister adregister = new aregister();
        adregister.setFullName(fullName);
        adregister.setUsername(username);
        adregister.setEmail(email);
        adregister.setPhoneNumber(phoneNumber);
        adregister.setPassword(password);

        // Save single entity
        adregisterRepository.save(adregister);

        // Add success message
        model.addAttribute("message", "Registration successful!");

        // Redirect or load success page
        return "redirect:/adminlogin"; // after registration, go to login page
        // OR return "users"; if you want to load a JSP with all users
    }
}
