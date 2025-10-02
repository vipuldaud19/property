package com.example.realestate.controller;

import com.example.realestate.model.Booking;
import com.example.realestate.model.User;
import com.example.realestate.repository.BookingRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/booking")   // base URL for this controller
public class BookingController {

    private final BookingRepository bookingRepository;

    public BookingController(BookingRepository bookingRepository) {
        this.bookingRepository = bookingRepository;
    }

    // Show booking form (JSP)
    @GetMapping
    public String showForm(Model model) {
        model.addAttribute("booking", new Booking());
        return "booking"; // booking.jsp
    }

    // Handle form submission
    @PostMapping
    public String saveBooking(@ModelAttribute Booking booking, Model model) {
        bookingRepository.save(booking);
        model.addAttribute("message", "Booking submitted successfully!");
        return "redirect:/project";
    }

   

    // Show registration page from BookingController
    @GetMapping("/login")
    public String showRegisterForm(Model model) {
        model.addAttribute("user", new User()); // needed for the registration form
        return "login"; // register.jsp
    }
   
   
}
