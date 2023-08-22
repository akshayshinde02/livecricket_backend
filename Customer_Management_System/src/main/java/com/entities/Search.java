package com.entities;

import org.hibernate.Session;

import com.provider.FactoryProvider;

public class Search {
	
	public AddCustomer getCustomer(int id) {
		
		Session s = FactoryProvider.getFactory().openSession();
		
		return s.get(AddCustomer.class, id);
	}

}
