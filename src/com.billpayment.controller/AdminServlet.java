package com.billpayment.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.billpayment.BO.AdminBO;

/**
 * Servlet implementation class AdminServlet
 */
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		//out.print(username+" "+password);
		
		//Code to verify admin userid and password
		AdminBO isadmin=new AdminBO();
		Boolean check;
		check=isadmin.verify(username,password);
		
		
		//If Admin
		if(check==true){
		out.print("If you are a customer <a href='Customer.html'>CLICK HERE</a>");
		out.print("If you are a customer <a href='Vendor.html'>CLICK HERE</a>");
		}
		
		//If not Admin redirect to index page
		else
		{
			out.print("NO!!");
		}
	}

}