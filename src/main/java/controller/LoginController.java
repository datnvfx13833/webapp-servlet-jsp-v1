package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginController
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		processRequest(request, response);
	}
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		try {
			String userID = request.getParameter("username");
			String password = request.getParameter("password");
			
			String uid = getServletContext().getInitParameter("username");
			String pwd = getServletContext().getInitParameter("password");
			
			if (userID != null && password.equals(pwd) && userID.equalsIgnoreCase(uid)) {
				response.sendRedirect("home.jsp");
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				//response.getWriter().println("<font color='red'>User name or password is invalid</font>");
				response.getWriter().println("<script type=\"text/javascript\">");
				response.getWriter().println("alert('User or password is invalid')");
				response.getWriter().println("location='login.jsp'");
				response.getWriter().println("</script>");
				rd.include(request, response);
			}
			
		} catch (Exception ex) {
			response.getWriter().println(ex);
		}
	}

}

























