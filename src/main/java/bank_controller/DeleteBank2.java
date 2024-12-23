package bank_controller;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bank.dao.UserDao;
import bank.dto.BankAccountDto;
import bank.dto.UserDto;
@WebServlet("/deleteform")
public class DeleteBank2 extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		UserDao ud=new UserDao();
		try {

			HttpSession hs=req.getSession();
			UserDto ut=(UserDto)hs.getAttribute("usermsg");
			if(ut.getEmail().equals(email))
			{
				if(ut.getPassword().equals(password))
				{	
					ud.deleteUser(ut);
					req.setAttribute("msgSuccess","account deleted");
					BankAccountDto bat=new BankAccountDto();
					hs.setAttribute("bank", bat);
					RequestDispatcher dispatcher =req.getRequestDispatcher("delete3.jsp");
					dispatcher.forward(req, resp);
				}
				else {
					req.setAttribute("msg2","password is invalid");
					RequestDispatcher dispatcher =req.getRequestDispatcher("delete.jsp");
					dispatcher.include(req, resp);
				}
			}
			else {
				req.setAttribute("msg1", "Email is inavlid");
				RequestDispatcher dispatcher =req.getRequestDispatcher("delete.jsp");
				dispatcher.include(req, resp);
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
}
