package bank_controller;

import java.io.IOException;
//import java.net.http.HttpClient;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bank.dao.BankAccountDao;
import bank.dao.UserDao;
import bank.dto.BankAccountDto;
import bank.dto.UserDto;

@WebServlet("/creationofaccount")
public class CreationOfAccount extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Random r=new Random();
		HttpSession session=req.getSession();
		UserDto user=(UserDto)session.getAttribute("usermsg");
		System.out.println(user.getAddress());
		
		String phon=req.getParameter("phone");
		long phone=Long.parseLong(phon);
		String acctype=req.getParameter("account-type");
		String balanc=req.getParameter("balance");
		int balance=Integer.parseInt(balanc);
		String pi =req.getParameter("pin"); 
		int pin=Integer.parseInt(pi);
		String aadha= req.getParameter("aadhar");
		long aadhar=Long.parseLong(aadha);
		
		String name=user.getFirstName()+" "+user.getLastName();
		long accountno = 1000000000L + (Math.abs(r.nextLong()) % 9000000000L);
		String email=user.getEmail();

		String address=user.getAddress();
		String ifsc="jsp"+address.substring(0, 3)+r.nextInt(9999);
		
		
		try {
			if(phone==user.getPhone()) {
			BankAccountDao ba=new BankAccountDao();
			BankAccountDto bt=new BankAccountDto(name, phone, accountno, acctype, address, aadhar, balance, ifsc, pin,email);
			ba.createAccountTable();
			ba.saveAccount(bt);
			//req.setAttribute("mobile",phon);
			session.setAttribute("bank", bt);
			
			System.out.println("account table created-");
			RequestDispatcher rd=req.getRequestDispatcher("accountCreation2.jsp");
			rd.forward(req, resp);
			}
			else {
				req.setAttribute("phone"," your account already exist");
				RequestDispatcher rd=req.getRequestDispatcher("accountCreation.jsp");
				rd.include(req, resp);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}


