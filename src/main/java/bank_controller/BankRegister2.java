package bank_controller;

import java.io.IOException;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bank.dao.UserDao;
import bank.dto.UserDto;
@WebServlet("/register2")
public class BankRegister2 extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserDao ud=new UserDao();
		UserDto dt=new UserDto(req.getParameter("firstName"),req.getParameter("lastName"), req.getParameter("email"),Long.parseLong(req.getParameter("phone")),Integer.parseInt(req.getParameter("age")), req.getParameter("gender"),req.getParameter("address"),req.getParameter("password"));
		try {
			ud.createUserTable();			
			ud.saveUser(dt);
		}catch (Exception e) {
			// TODO: handle exception
		}
		RequestDispatcher dispatcher=req.getRequestDispatcher("login.jsp");
		dispatcher.forward(req, resp);
	}
}
