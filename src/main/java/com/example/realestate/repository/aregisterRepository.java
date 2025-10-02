package com.example.realestate.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.realestate.model.aregister;

public interface aregisterRepository extends JpaRepository<aregister, Long> {
    // Spring Data JPA will implement this automatically
    aregister findByUsernameAndPassword(String username, String password);
}
