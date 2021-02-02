package com.example.securityApp.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.example.securityApp.dao.IDepartement;
import com.example.securityApp.entities.Departement;

@RestController
public class RestDepartement {
	@Autowired
	private IDepartement idepartement;
	
	
	@GetMapping(value= {"/departements"})
	public List<Departement> getAllDepartements(){
		return idepartement.findAll();
	}

	@GetMapping(value= {"/departements/respo/{id_responsable}"})
	public  List<Departement> getDepartementofRespo(@PathVariable int id_responsable ) {
		return idepartement.getResponsableById(id_responsable);
	}

	@GetMapping(value={"/departements/{id}"})
	public Departement getOneDepartement(@PathVariable("id") int id){
		return idepartement.findById(id).orElse(null);
	}
	
	@PostMapping(value= {"/departements"},consumes = {"application/json"})
	public Departement insertOne(@RequestBody() Departement departement) {
		idepartement.save(departement);
		return departement;
	}
	
	@DeleteMapping(value= {"/departements/{id}"})
	public Departement deleteOne(@PathVariable() int id) {
		Departement dep = idepartement.findById(id).orElse(null);
		idepartement.deleteById(id);
		return dep;
	}
	
	
	
	
}
