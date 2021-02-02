package com.example.securityApp.dao;

import java.util.List;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;

import com.example.securityApp.entities.Formation;

public interface IFormation extends JpaRepository<Formation, Integer> {
	@Query("SELECT f FROM formation f WHERE f.id_departement = ?1 ")
	public List<Formation> getDepartementById(int id);
}
