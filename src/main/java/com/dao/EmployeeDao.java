package com.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.entity.Employee;

@Repository
public interface EmployeeDao extends JpaRepository<Employee, Integer>{


	Employee findByEmailAndPassword(String email, String password);

}
