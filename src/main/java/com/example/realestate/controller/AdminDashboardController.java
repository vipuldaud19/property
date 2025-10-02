package com.example.realestate.controller;

import com.example.realestate.model.Booking;
import com.example.realestate.model.Contact;
import com.example.realestate.model.Estate;
import com.example.realestate.model.Property;
import com.example.realestate.model.User;
import com.example.realestate.repository.BookingRepository;
import com.example.realestate.repository.ContactRepository;
import com.example.realestate.repository.EstateRepository;
import com.example.realestate.repository.PropertyRepository;
import com.example.realestate.repository.UserRepository;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class AdminDashboardController {

    private final PropertyRepository propertyRepository;
    private final BookingRepository bookingRepository;
    private final UserRepository userRepository;
    private final ContactRepository contactRepository;
    private final EstateRepository estateRepository;
    public AdminDashboardController(
            PropertyRepository propertyRepository,
            BookingRepository bookingRepository,
            UserRepository userRepository,
            ContactRepository contactRepository,
    		EstateRepository  estateRepository)
    {
        this.propertyRepository = propertyRepository;
        this.bookingRepository = bookingRepository;
        this.userRepository = userRepository;
        this.contactRepository = contactRepository;
        this.estateRepository = estateRepository;
    }

    // ✅ Admin Dashboard (summary + recent bookings)
    @GetMapping("/admindashboard")
    public String showDashboard(Model model) {
        long totalProperties = propertyRepository.count();
        long totalBookings = bookingRepository.count();
        long totalUsers = userRepository.count();
        long totalEstate=estateRepository.count();
        // Show recent 5 bookings
        List<Booking> recentBookings = bookingRepository.findTop5ByOrderByBookingDateDesc();

        model.addAttribute("totalProperties", totalProperties);
        model.addAttribute("totalBookings", totalBookings);
        model.addAttribute("totalUsers", totalUsers);
        model.addAttribute("recentBookings", recentBookings);

        return "adminDashboard";  // → adminDashboard.jsp
    }

    // ✅ Show all Properties
    @GetMapping("/admin/properties")
    public String showAllProperties(Model model) {
        List<Property> properties = propertyRepository.findAll();
        model.addAttribute("properties", properties);
        return "properties"; // → properties.jsp
    }

    // ✅ Show all Bookings
    @GetMapping("/admin/bookings")
    public String showAllBookings(Model model) {
        List<Booking> bookings = bookingRepository.findAll();
        model.addAttribute("bookings", bookings);
        return "bookings"; // → bookings.jsp
    }

    // ✅ Show all Users
    @GetMapping("/admin/users")
    public String showAllUsers(Model model) {
        List<User> users = userRepository.findAll();
        model.addAttribute("users", users);
        return "users"; // → users.jsp
    }

    // ✅ Show Contact Messages
    @GetMapping("/admin/contact")
    public String showAllContacts(Model model) {
        List<Contact> contacts = contactRepository.findAll();
        model.addAttribute("contacts", contacts);
        return "contact-list"; // → contact-list.jsp
    }
   
    
   
    }

