package bank_controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bank.dto.BankAccountDto;
@WebServlet("/profile")
public class BankProfile extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession hs=req.getSession();
		BankAccountDto bank1=(BankAccountDto)hs.getAttribute("bank");
		if(bank1.getAccountno()!=0) {
			RequestDispatcher dispatcher=req.getRequestDispatcher("profile.jsp");
			dispatcher.forward(req, resp);
		}else {
			RequestDispatcher dispatcher=req.getRequestDispatcher("profile1.jsp");
			dispatcher.forward(req, resp);
		}
	}
}
