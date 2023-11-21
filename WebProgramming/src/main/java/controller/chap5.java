package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.User;

@WebServlet({ "/api/chap5/*" })
public class chap5 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pathInfo = "";
		if (request.getPathInfo() != null)
			pathInfo = request.getPathInfo().split("/")[1];
		if (!pathInfo.equals("test")) {
			response.setContentType("text/html");
			String action = request.getParameter("action");
			System.out.println(action);
			String get_firstname = request.getParameter("firstname");
			String get_lastname = request.getParameter("lastname");
			String get_email = request.getParameter("email");
			String get_dob = request.getParameter("dob");
			User user = new User();
			user.setEmail(get_email);
			user.setFirstName(get_firstname);
			user.setLastName(get_lastname);
			user.setDateOfBirth(get_dob);
			request.setAttribute("user", user);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/c5e2/thanks.jsp");
			dispatcher.forward((ServletRequest) request, (ServletResponse) response);
			PrintWriter out = response.getWriter();
			try {
				out.println("<h1>User's information stored</h1>");
				out.println(get_firstname);
				out.println(get_lastname);
				out.println(get_email);
				out.println(get_dob);
			} finally {
				out.close();
			}
		} else {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			try {
				out.println("<h1>TestServlet Post</h1>");
			} finally {
				out.close();
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
