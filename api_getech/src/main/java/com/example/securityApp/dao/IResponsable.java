package com.example.securityApp.dao;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;

import com.example.securityApp.entities.Departement;
import com.example.securityApp.entities.Responsable;

import java.util.List;

public interface IResponsable extends JpaRepository<Responsable, Integer> {
    @Query("SELECT c FROM responsable c where c.email=?1 and password=?2")
    public Responsable getResponsableByEmailAndPassword(String email,String password);
}
