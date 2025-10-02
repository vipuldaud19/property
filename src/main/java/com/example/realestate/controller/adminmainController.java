package com.example.realestate.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class adminmainController {

    @GetMapping("/adminmain")
    public String home(Model model) {
        // you can add attributes for dashboard if needed
        return "adminmain"; // /WEB-INF/views/adminmain.jsp
    }
}

