package com.entities;
import org.hibernate.Session;
import org.hibernate.query.Query;

import com.provider.FactoryProvider;

public class CountCustomer {
	
	    public long countCustomer() {
	        
	        	Session s = FactoryProvider.getFactory().openSession();
	            Query<Long> query = s.createQuery("SELECT COUNT(e) FROM AddCustomer e", Long.class);
	            return query.uniqueResult();
	      
	    }
}
