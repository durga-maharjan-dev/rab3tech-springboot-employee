package com.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.EmployeeDao;
import com.dto.EmployeeDTO;
import com.entity.Employee;

@Service
@Transactional
public class EmployeeServiceImpl implements EmployeeService {
	
	@Autowired
	private EmployeeDao employeeDao;

	@Override
	public String postEmployeeSignup(EmployeeDTO employeeDTO) {
		Employee employee = new Employee();
		BeanUtils.copyProperties(employeeDTO, employee);
		Employee dbEmployee = employeeDao.save(employee);
		if(dbEmployee!=null) {
			return "Signup successful.";
		}
		return "Error: Signup not done";
	}

	@Override
	public EmployeeDTO login(String email, String password) {
		Employee employee = employeeDao.findByEmailAndPassword(email,password);
		EmployeeDTO dto = null;
		
		if (employee!=null) {
			dto = new EmployeeDTO();
			BeanUtils.copyProperties(employee, dto);
			return dto;
		}
		return dto;
		
		
	}

}
