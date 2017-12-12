/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.trade.servlet;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Denis
 */
public class UserServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, 
			             HttpServletResponse response) 
                throws ServletException, IOException 
	{
		String userName = request.getParameter("userName").trim();
		if(userName == null || "".equals(userName))
			userName = "Guest";
		
		String content = "Привет, " + userName;
		response.setContentType("text/plain");

//		System.out.println("UserServlet : " + content);
//		response.getWriter().write(greetings);
		OutputStream outStream = response.getOutputStream();
		outStream.write(content.getBytes("UTF-8"));
	    outStream.flush();
	    outStream.close();
	}
}