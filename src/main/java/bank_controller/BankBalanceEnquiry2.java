package bank_controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bank.dao.BankAccountDao;
import bank.dto.BankAccountDto;
@WebServlet("/bankpin")
public class BankBalanceEnquiry2 extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pin=req.getParameter("pin");
		HttpSession hs=req.getSession();
		BankAccountDto bank1=(BankAccountDto)hs.getAttribute("bank");
		try {
			if(Integer.parseInt(pin)==bank1.getPin()) {
				req.setAttribute("balance", bank1.getBalance());
				RequestDispatcher dispatcher=req.getRequestDispatcher("enquiry3.jsp");
				dispatcher.forward(req, resp);
			}else {
				req.setAttribute("pin1","Invalid pin");
				RequestDispatcher dispatcher=req.getRequestDispatcher("enterpin.jsp");
				dispatcher.forward(req, resp);
			}
		} catch (NumberFormatException | ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
