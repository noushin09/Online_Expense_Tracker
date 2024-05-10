package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.dao.UserDao;
import com.db.HibernateUtil;
import com.entity.User;

@WebServlet("/userRegister")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 String UserName=req.getParameter("fullname"); 
	        String UserEmail=req.getParameter("txtemail");
	        String Userpass=req.getParameter("txtpassword");
	        String About=req.getParameter("about");
	        User u = new User(0, UserName, UserEmail, Userpass, About);
	       // System.out.println(u);   
	        UserDao dao=new UserDao(HibernateUtil.getSessionFactory());
	        boolean f=dao.saveuser(u);	        
	        HttpSession session=req.getSession();	        
	        if(f) {
	        	session.setAttribute("msg", "Register Successfully!");
	        	//System.out.print("Register Successfully!");
	        	resp.sendRedirect("Register.jsp");
	        }else {
	        	session.setAttribute("msg", "Something Went Wrong!");
	        	//System.out.print("Something Went Wrong!");
	        	resp.sendRedirect("Register.jsp");
	        }    
	}
	

}
