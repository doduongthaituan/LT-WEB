package controllers.Auth;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import services.UserService;

/**
 * Servlet implementation class Modify
 */
@WebServlet("/default/account/modify")
public class Modify extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Modify() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String fullname = request.getParameter("fullname");
			String phonenumber = request.getParameter("phonenumber");
			String address = request.getParameter("address");
			UserService us = new UserService();
//			int isUpdated = us.update("u01", fullname, phonenumber, address);
			int isUpdated = 1;
			if (isUpdated == 1) {
				String url = request.getContextPath() + "/default/account/index.jsp";
				response.sendRedirect(url);
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
