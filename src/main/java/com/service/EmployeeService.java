package com.service;

import com.dto.EmployeeDTO;

public interface EmployeeService {

	String postEmployeeSignup(EmployeeDTO employeeDTO);

	EmployeeDTO login(String email, String password);

}
