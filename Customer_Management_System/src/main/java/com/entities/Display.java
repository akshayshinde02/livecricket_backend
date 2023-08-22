package com.entities;

import java.util.List;

import org.hibernate.Session;

import com.provider.FactoryProvider;

public class Display {
	
	public List<AddCustomer> getAllCustomer(){
		
		Session s = FactoryProvider.getFactory().openSession();
		List<AddCustomer> employees = s.createQuery("FROM AddCustomer",AddCustomer.class).list();
//		System.out.print(employees.get(1));
		return employees;
	}

}
