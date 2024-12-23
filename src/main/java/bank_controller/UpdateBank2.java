package bank_controller;

import java.io.IOException;

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

@WebServlet("/updatebank")
public class UpdateBank2 extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession hs=req.getSession();
		UserDto ut=(UserDto)hs.getAttribute("usermsg");
		BankAccountDto bat=(BankAccountDto)hs.getAttribute("bank");
		UserDao ud=new UserDao();
		String phon= req.getParameter("phone");
		String add=req.getParameter("address");
		String ag=req.getParameter("age");
		try {
			if(ud.fetchPhone(Long.parseLong(phon))==0) {
			ud.updateUser(Long.parseLong(phon),add,Integer.parseInt(ag),ut,bat);
			hs.setAttribute("usermsg", new UserDto(ut.getFirstName(), ut.getLastName(), ut.getEmail(), ut.getPhone(), Integer.parseInt(ag),ut.getGender(), ut.getAddress(),ut.getPassword()));
			hs.setAttribute("bank", new BankAccountDto(bat.getName(),Long.parseLong(phon),bat.getAccountno(),bat.getAccounttype(),add, bat.getAadhar(), bat.getBalance(), bat.getIfsc(), bat.getPin(),bat.getEmail()));
			RequestDispatcher dispatcher =req.getRequestDispatcher("home.jsp");
			dispatcher.forward(req, resp);
			}else {
				req.setAttribute("phone", "enter the new phone no correctly");
				RequestDispatcher dispatcher =req.getRequestDispatcher("update.jsp");
				dispatcher.include(req, resp);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
