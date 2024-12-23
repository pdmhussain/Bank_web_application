package bank_controller;

import java.io.IOException;
/*import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;*/
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bank.dao.BankAccountDao;
import bank.dto.BankAccountDto;
@WebServlet("/transferform")
public class BankTransfer2 extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String acc=req.getParameter("accountNo");
		String ifsc=req.getParameter("ifscCode");
		String name=req.getParameter("name");
		String pin=req.getParameter("pin");
		String amount=req.getParameter("amount");
		BankAccountDao bad=new BankAccountDao();
		try {
			/*
			 * Class.forName("com.mysql.cj.jdbc.Driver"); Connection
			 * con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankuser",
			 * "root", "root"); PreparedStatement
			 * ps=con.prepareStatement("select * from accounttable where account_no=?");
			 */
			
			//ps.setString(1, acc);
			ResultSet set=bad.fetch1(Long.parseLong(acc));
			HttpSession hs=req.getSession();
			BankAccountDto bank1=(BankAccountDto)hs.getAttribute("bank");
			if(set.next()) {
				if(ifsc.equals(set.getString("ifsc_code"))) {
					if(Integer.parseInt(pin)==bank1.getPin()) {
						if(Integer.parseInt(amount)<bank1.getBalance()) {
							int amo=bank1.getBalance()-Integer.parseInt(amount);
							hs.setAttribute("transfer", amount);
							hs.setAttribute("name", name);
							int amo1=Integer.parseInt(amount);
							bad.updateBalance(amo,bank1.getPhone(),Long.parseLong(acc),amo1);
							hs.setAttribute("bank", new BankAccountDto(bank1.getName(), bank1.getPhone(), bank1.getAccountno(), bank1.getAccounttype(), bank1.getAddress(), bank1.getAadhar(), amo, bank1.getIfsc(), bank1.getPin(), bank1.getEmail()));
							RequestDispatcher rd=req.getRequestDispatcher("transfer2.jsp");
							rd.forward(req, resp);
						}else {
							req.setAttribute("balance","Insufficent balance");
							RequestDispatcher rd=req.getRequestDispatcher("transfer.jsp");
							rd.include(req, resp);
						}
					}else {
						req.setAttribute("pin","Incorrect pin");
						RequestDispatcher rd=req.getRequestDispatcher("transfer.jsp");
						rd.include(req, resp);
					}
				}else {
					req.setAttribute("ifsc","Invalid ifsc code");
					RequestDispatcher rd=req.getRequestDispatcher("transfer.jsp");
					rd.include(req, resp);
				}
			}
			else {
				req.setAttribute("account","Invalid account no");
				RequestDispatcher rd=req.getRequestDispatcher("transfer.jsp");
				rd.include(req, resp);
			}
		}catch (Exception e) {
			
			e.printStackTrace();
		}
		
	}
}
