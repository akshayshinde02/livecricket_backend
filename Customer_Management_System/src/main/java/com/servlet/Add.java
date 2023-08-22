package com.servlet;

import java.io.*;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.AddCustomer;
import com.provider.FactoryProvider;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/add")
public class Add extends HttpServlet {
	private static final long serialVersionUID = 1L;

  
    public Add() {
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		  int id = Integer.parseInt(request.getParameter("id"));

		  String fname = request.getParameter("fname");

		  String lname =request.getParameter("lname");
		    
		  String street = request.getParameter("street");
		    
		  String address = request.getParameter("address");
		    
		  String city = request.getParameter("city");
		    
		  String state = request.getParameter("state");
		    
		  String email = request.getParameter("email");
		    
		  String phone = request.getParameter("phone");
		  
		  

		  Session s = FactoryProvider.getFactory().openSession();
		  
		  Transaction tx = s.beginTransaction();
		  
		  AddCustomer add = new AddCustomer(id,fname,lname,street,address,city,state,email,phone);
		  
		  request.setAttribute("responseMessage", HttpServletResponse.SC_CREATED);


	      request.getRequestDispatcher("successinsert.jsp").forward(request, response);
		  
		 
		 // response.sendRedirect("home.jsp");
		 
		  s.save(add);
		  tx.commit();
		  s.close();
		  
	
		  
		
	}

}
