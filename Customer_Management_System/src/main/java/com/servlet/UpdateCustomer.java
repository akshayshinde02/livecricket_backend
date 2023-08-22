package com.servlet;

import com.entities.AddCustomer;
import com.entities.Update;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/update")
public class UpdateCustomer extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  int id = Integer.parseInt(request.getParameter("id"));

		  String fname = request.getParameter("fname");

		  String lname =request.getParameter("lname");
		    
		  String street = request.getParameter("street");
		    
		  String address = request.getParameter("address");
		    
		  String city = request.getParameter("city");
		    
		  String state = request.getParameter("state");
		    
		  String email = request.getParameter("email");
		    
		  String phone = request.getParameter("phone");

        
        AddCustomer updatedEmployee = new AddCustomer(id,fname,lname,street,address,city,state,email,phone);

        Update updateManager = new Update();
        updateManager.updateEmployee(id, updatedEmployee);

        request.setAttribute("responseMsg", HttpServletResponse.SC_OK);

        request.getRequestDispatcher("update.jsp").forward(request, response);
       // response.sendRedirect("read.jsp");
    }
}
