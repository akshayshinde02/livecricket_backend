package com.servlet;

import java.io.IOException;
import java.util.List;

import com.entities.AddCustomer;
import com.entities.Search;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;


@WebServlet("/search")
public class SearchCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;

        public SearchCustomer() {
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("employeeId"));
		
		Search search = new Search();
		AddCustomer emp = search.getCustomer(id);
		
	   if(emp==null) {
		   request.setAttribute("respMsg", HttpServletResponse.SC_NOT_FOUND);
	   }
	   else {
		request.setAttribute("emp", emp);
		 request.setAttribute("respMsg", HttpServletResponse.SC_OK);
	   }
	
		//response.sendRedirect("searchdisplay.jsp");
		request.getRequestDispatcher("searchdisplay.jsp").forward(request, response);
	}
 
}
