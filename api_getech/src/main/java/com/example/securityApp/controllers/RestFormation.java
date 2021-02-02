package com.example.securityApp.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.securityApp.dao.IFormation;
import com.example.securityApp.entities.Formation;

@RestController
public class RestFormation {
	
	@Autowired
	private IFormation iformation;

	//get all the formations
	@GetMapping(value= {"/formations"})
	public List<Formation> getAll(){
		return iformation.findAll();
	}	

	//get all the formations in one departement
	@GetMapping(value= {"/formations/departements/{id}"})
	public List<Formation> getAllFormationOnId(@PathVariable("id") int id_departement){
		return iformation.getDepartementById(id_departement);
	}

	//insert one formation
	@PostMapping(value= {"/formations"} , consumes = {"application/json"})
	public Formation saveFormation(@RequestBody() Formation formation) {
		iformation.save(formation);
		return formation;
	}

	//delete one formation
	@DeleteMapping(value= {"/formations/{id}"})
	public Formation deleteFormation(@PathVariable("id") int id) {
		Formation formation = iformation.getOne(id);
		iformation.delete(iformation.getOne(id));
		return formation;
	}

}
