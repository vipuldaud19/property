package com.example.realestate.controller;

import com.example.realestate.model.Property;
import com.example.realestate.repository.PropertyRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

@Controller
@RequestMapping("/property")
public class PropertyController {

    private final PropertyRepository propertyRepository;

    public PropertyController(PropertyRepository propertyRepository) {
        this.propertyRepository = propertyRepository;
    }

    // Submit new property (Sell form)
    @PostMapping("/submit-property")
    public String submitProperty(@RequestParam("title") String title,
                                 @RequestParam("description") String description,
                                 @RequestParam("price") double price,
                                 @RequestParam("address") String address,
                                 @RequestParam("image") MultipartFile imageFile) throws IOException {

        // Get project root
        String projectDir = new File(".").getCanonicalPath();

        // Ensure uploads directory exists
        String staticUploadsDir = projectDir + "/src/main/resources/static/uploads/";
        File uploadDir = new File(staticUploadsDir);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }

        // Generate unique filename
        String fileName = System.currentTimeMillis() + "_" + imageFile.getOriginalFilename();

        // Save the file to the uploads folder
        Files.copy(imageFile.getInputStream(), Paths.get(staticUploadsDir + fileName));

        // Save property details to DB
        Property property = new Property();
        property.setTitle(title);
        property.setDescription(description);
        property.setPrice(price);
        property.setAddress(address);
        property.setStatus("PENDING");
        property.setImagePath("/uploads/" + fileName); // this is the URL path for the frontend
        propertyRepository.save(property);

        return "project"; // redirect after submission
    }

    // Admin page: show all accepted properties
    @GetMapping("/properties")
    public String viewAcceptedProperties(Model model) {
        List<Property> acceptedProperties = propertyRepository.findByStatus("ACCEPTED");
        model.addAttribute("properties", acceptedProperties);
        return "sellproperty"; // JSP showing accepted properties
    }

    // Admin page: show pending properties for approval
    @GetMapping("/sellproperty")
    public String viewPendingSellRequests(Model model) {
        List<Property> pendingProperties = propertyRepository.findByStatus("PENDING");
        model.addAttribute("properties", pendingProperties);
        return "selldelete"; // JSP with accept/decline buttons
    }

    // Accept a pending property
    @PostMapping("/accept/{id}")
    public String acceptProperty(@PathVariable Long id) {
        Property property = propertyRepository.findById(id).orElseThrow();
        property.setStatus("ACCEPTED");
        propertyRepository.save(property);
        return "redirect:/admin/properties";
    }

    // Decline (delete) a pending property
    @PostMapping("/decline/{id}")
    public String declineProperty(@PathVariable Long id) {
        propertyRepository.deleteById(id);
        return "redirect:/property/sellproperty";
    }

    // Buy page: show accepted properties
    @GetMapping("/buy")
    public String showBuyPropertyPage(Model model) {
        List<Property> accepted = propertyRepository.findByStatus("ACCEPTED");
        model.addAttribute("properties", accepted);
        return "buy";
    }

    // Sell property form (user)
    @GetMapping("/sell-property")
    public String showSellPropertyForm() {
        return "sell-property";
    }

    // Rent page
    @GetMapping("/rent")
    public String showRentPropertyPage() {
        return "rent";
    }
}
