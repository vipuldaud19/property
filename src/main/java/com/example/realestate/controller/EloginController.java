package com.example.realestate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.realestate.model.User;
import com.example.realestate.repository.UserRepository;

@Controller
public class EloginController {

    private final UserRepository userRepository;

    public EloginController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    // GET mapping for login page
    @GetMapping("/elogin")
    public String showLoginPage() {
        return "elogin"; // resolves to /WEB-INF/views/elogin.jsp
    }

    // POST mapping for login
    @PostMapping("/elogin")
    public String processLogin(@RequestParam("username") String username,
                               @RequestParam("password") String password,
                               Model model) {

        User user = userRepository.findByUsername(username);

        if (user != null && user.getPassword().equals(password)) {
            // Login successful, redirect to booking.jsp
            return "redirect:/booking";
        } else {
            // Login failed, show error
            model.addAttribute("error", "Invalid username or password");
            return "elogin";
        }
    }
    
}
