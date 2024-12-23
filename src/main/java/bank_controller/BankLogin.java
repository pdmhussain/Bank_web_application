package bank_controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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
import bank.dao.UserDao;
import bank.dto.BankAccountDto;
import bank.dto.UserDto;

@WebServlet("/login")
public class BankLogin extends HttpServlet{
	public static boolean isAccount=false;
	@Override
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		try {
			/*
			 * Class.forName("com.mysql.cj.jdbc.Driver"); Connection
			 * con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankuser",
			 * "root", "root"); PreparedStatement
			 * ps=con.prepareStatement("select * from usertable where email=?");
			 * ps.setString(1, email);
			 */
			UserDao ud=new UserDao();
			
			ResultSet set=ud.fetch(email);
			if(set.next())
			{
				String firstname=set.getString("firstname");
				String lastname=set.getString("lastname");
				String email1=set.getString("email");
				String gender=set.getString("gender");
				String address=set.getString("address");
				int age=set.getInt("age");
				String password1=set.getString("password");
				long phone=set.getLong("phone");
				if(password1.equals(password))
				{	
					UserDto user=new UserDto(firstname, lastname,email1,phone, age, gender, address, password1);
					HttpSession session=req.getSession();
					session.setAttribute("usermsg", user);
					/*
					 * PreparedStatement
					 * ps1=con.prepareStatement("select * from accounttable where phone=?");
					 * ps1.setLong(1, phone);
					 */
					session.setAttribute("welcome", set.getString("firstname"));
					BankAccountDao bad=new BankAccountDao();
					ResultSet set1=bad.fetchBank(phone);
					//boolean isAccount=false;
					
					//int count=0;
					if(set1.next()) {
						isAccount=true;
						//count++;
					    session.setAttribute("bank", new BankAccountDto(set1.getString(1),set1.getLong(2),set1.getLong(3),set1.getString(4),set1.getString(5),set1.getLong(6),set1.getInt(7),set1.getString(8),set1.getInt(9),set1.getString(10)));
					    //session.setAttribute("accountno",set1.getLong("account_no"));
					    
					}
					else session.setAttribute("bank",new BankAccountDto());
					/*
					
						 * if(count>0) isAccount=true; else isAccount=false;
						 */
					RequestDispatcher dispatcher =req.getRequestDispatcher("home.jsp");
					dispatcher.forward(req, resp);
				}
				else
				{
//					out.println("password is incorrect");.
					req.setAttribute("msg2","password is invalid");
					
					RequestDispatcher dispatcher =req.getRequestDispatcher("login1.jsp");
					dispatcher.include(req, resp);
					
				}
			}
			else {
				req.setAttribute("msg1", "Email is inavlid");
				RequestDispatcher dispatcher =req.getRequestDispatcher("login.jsp");
				dispatcher.include(req, resp);
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	

}