package com.example.realestate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.realestate.model.aregister;
import com.example.realestate.repository.aregisterRepository;

@Controller
public class AdminLoginController {

    private final aregisterRepository aregisterRepository;

    public AdminLoginController(aregisterRepository aregisterRepository) {
        this.aregisterRepository = aregisterRepository;
    }

    // Show login page
    @GetMapping("/adminlogin")
    public String showLoginPage() {
        return "adminlogin";  // /WEB-INF/views/adminlogin.jsp
    }

    // Handle login form submit
    @PostMapping("/adminlogin")
    public String processLogin(@RequestParam("username") String username,
                               @RequestParam("password") String password,
                               Model model) {
        aregister admin = aregisterRepository.findByUsernameAndPassword(username, password);

        if (admin != null) {
            return "redirect:/adminmain"; // ✅ redirect to dashboard
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "adminlogin";
        }
    }
}
