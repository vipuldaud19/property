package com.example.realestate.controller;

import com.example.realestate.model.Estate;
import com.example.realestate.model.Property;
import com.example.realestate.repository.EstateRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/estate")
public class EstateController {

    @Autowired
    private EstateRepository estateRepository;

    // Show add form
    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("estate", new Estate());
        return "add-estate"; // JSP page for adding estate
    }

    // Save property with images
    @PostMapping("/save")
    public String saveEstate(
            @ModelAttribute Estate estate,
            @RequestParam("mainImage") MultipartFile mainImage,
            @RequestParam("floorPlanImage") MultipartFile floorPlanImage
    ) throws IOException {

        // Define the path inside your project: resources/static/uploads
        String projectDir = new File(".").getCanonicalPath(); // project root
        String staticUploadsDir = projectDir + "/src/main/resources/static/uploads/";

        // Ensure the directory exists
        File dir = new File(staticUploadsDir);
        if (!dir.exists()) {
            dir.mkdirs();
        }

        // Save main image
        if (!mainImage.isEmpty()) {
            String mainImagePath = staticUploadsDir + mainImage.getOriginalFilename();
            mainImage.transferTo(new File(mainImagePath));
            estate.setMainImagePath("/uploads/" + mainImage.getOriginalFilename()); // relative path for JSP
        }

        // Save floor plan image
        if (!floorPlanImage.isEmpty()) {
            String floorPlanPath = staticUploadsDir + floorPlanImage.getOriginalFilename();
            floorPlanImage.transferTo(new File(floorPlanPath));
            estate.setFloorPlanImagePath("/uploads/" + floorPlanImage.getOriginalFilename()); // relative path
        }

        // Save estate in DB
        estateRepository.save(estate);
        return "redirect:/estate/list";
    }

    // Show all properties
    @GetMapping("/list")
    public String listEstates(Model model) {
        model.addAttribute("estates", estateRepository.findAll());
        return "estate-list"; // JSP page to display all estates
    }

    // Show property details
    @GetMapping("/details/{id}")
    public String estateDetails(@PathVariable Long id, Model model) {
        Estate estate = estateRepository.findById(id).orElse(null);
        model.addAttribute("estate", estate);
        return "estate-details"; // JSP page to show estate details
    }
    @PostMapping("/delete/{id}")
    public String deleteEstate(@PathVariable Long id) {
        estateRepository.deleteById(id);
        return "redirect:/estate/list";
    }
 // Show all properties for management (delete option)
    @GetMapping("/manage")
    public String manageProperties(Model model) {
        model.addAttribute("estates", estateRepository.findAll());
        return "admindelete"; // JSP page with table and delete button
    }
  

}
