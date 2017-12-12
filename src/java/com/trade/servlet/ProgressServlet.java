package com.trade.servlet;

import java.io.IOException;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProgressServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, 
			             HttpServletResponse response) 
                throws ServletException, IOException 
	{
		HttpSession session = request.getSession();
		Integer progress = 0;
		if ((session != null) && session.getAttribute("Progress") != null)
			progress = (Integer) session.getAttribute("Progress");
		
		progress += 10;
		session.setAttribute("Progress", progress);
		
		response.setContentType("text/plain");
		response.getWriter().write(String.valueOf(progress));
	}
}
