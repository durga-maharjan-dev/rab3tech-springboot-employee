package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dto.EmployeeDTO;
import com.service.EmployeeService;

@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService employeeService;
	
	@GetMapping("/")
	public String getWelcomePage() {
		return "welcome";
	}
	
	@GetMapping("/employeeLogin")
	public String getEmployeeLogin() {
		return "employee-login";
	}
	
	@PostMapping("/employeeLogin")
	public String postEmployeeLogin(@RequestParam String email, String password, Model model) {
		EmployeeDTO dto =employeeService.login(email,password);
		
		System.out.println("Employee Controller: "+ dto);
		if (dto != null) {
			model.addAttribute("emloyeeDto", dto);
			return "employee-profile";
		}
		model.addAttribute("message", "No valid username or password.");
		return "employee-login";
	}
	
	@GetMapping("/employeeSignup")
	public String getEmployeeSignup() {
		return "employee-signup";
	}
	
	@PostMapping("/employeeSignup")
	public String postEmployeeSignup(@ModelAttribute EmployeeDTO employeeDTO, Model model) {
		String message = employeeService.postEmployeeSignup(employeeDTO);
		model.addAttribute("message", message);
		System.out.println(message);
		return "employee-signup";
	}
	
	
	

}
