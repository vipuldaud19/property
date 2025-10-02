package com.example.realestate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.realestate.model.User;
import com.example.realestate.repository.UserRepository;

@Controller

public class UserController {

    private final UserRepository userRepository;

    public UserController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    // Show registration form
    @GetMapping("/register")
    public String showRegisterForm() {
        return "registration";   // loads register.jsp
    }

    // Handle form submission
    @PostMapping("/register")
    public String registerUser(
            @RequestParam("name") String fullName,
            @RequestParam("username") String username,
            @RequestParam("email") String email,
            @RequestParam("number") String phoneNumber,
            @RequestParam("password") String password,
            Model model) {

        User user = new User();
        user.setFullName(fullName);
        user.setUsername(username);
        user.setEmail(email);
        user.setPhoneNumber(phoneNumber);
        user.setPassword(password);

        userRepository.save(user);

        // Load all users into model for users.jsp
        model.addAttribute("users", userRepository.findAll());

        return "project";   // loads users.jsp

     

        
    }

    
}
