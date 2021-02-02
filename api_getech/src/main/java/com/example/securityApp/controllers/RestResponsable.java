package com.example.securityApp.controllers;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.example.securityApp.dao.IResponsable;
import com.example.securityApp.entities.Departement;
import com.example.securityApp.entities.Responsable;

import javax.servlet.http.HttpServletRequest;

@RestController
public class RestResponsable {
	@Autowired
	private IResponsable iresponsable;
	
	@GetMapping(value= {"/responsables"})
	public List<Responsable> getAll(){
		return iresponsable.findAll();
	}

	@GetMapping(value= {"/responsables/{id}"})
	public Optional<Responsable> getRespoById(@PathVariable int id) {
		return iresponsable.findById(id);
	}
	
	
	@PostMapping(value= {"/responsables"},consumes = {"application/json"})
	public Responsable insertOne(@RequestBody Responsable respo) {
		iresponsable.save(respo);
		return respo;
	}


	@PostMapping(value={"/login_respo"})
	public Responsable loginRespo(HttpServletRequest request)  {
		Responsable resp = null;
		try {
			resp = new ObjectMapper().readValue(request.getInputStream(), Responsable.class);
		} catch (IOException e) {
			resp.setEmail("");
			resp.setPassword("");
		}
		return iresponsable.getResponsableByEmailAndPassword(resp.getEmail(),resp.getPassword());
	}
	
	
	@DeleteMapping(value= {"/responsables/{id}"})
	public Responsable deleteOne(@PathVariable int id) {
		Responsable rp = iresponsable.findById(id).orElse(null);
		iresponsable.deleteById(id);
		return rp;
	}
	
	
	
	
}
