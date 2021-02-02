package com.example.securityApp.dao;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;

import com.example.securityApp.entities.Departement;

import java.util.List;

public interface IDepartement extends JpaRepository<Departement, Integer> {
    @Query("SELECT c FROM departement c WHERE c.id_respo=?1")
    public List<Departement> getResponsableById(int id_respo);
}
