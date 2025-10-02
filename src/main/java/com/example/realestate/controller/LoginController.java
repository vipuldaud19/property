package com.example.realestate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.realestate.model.User;
import com.example.realestate.repository.UserRepository;

@Controller
public class LoginController {

    private final UserRepository userRepository;

    public LoginController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    // Show login page
    @GetMapping("/login")
    public String showLoginForm() {
        return "login"; // login.jsp
    }

    // Handle login submission
    @PostMapping("/login")
    public String loginUser(
            @RequestParam("email") String email,
            @RequestParam("password") String password,
            Model model) {

        // Find user by email
        User user = userRepository.findByEmail(email);

        if (user == null) {
            model.addAttribute("error", "Email not registered!");
            return "login";
        }

        // Match password
        if (!user.getPassword().equals(password)) {
            model.addAttribute("error", "Incorrect password!");
            return "login";
        }

        model.addAttribute("user", user);
       ;
        return "redirect:/project"; // dashboard.jsp or home page
    }  // Successful login
      
    
}
