package bank.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import bank.dto.BankAccountDto;

public class BankAccountDao {
	
	public Connection createConnection() throws Exception
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankuser?createDatabaseIfNotExist=true", "root", "root");
		return con;
	}

	public void createAccountTable() throws Exception{
		Statement s=createConnection().createStatement();
		s.execute("create table if not exists accounttable(name varchar(45),phone bigint(10) primary key,"
				+ "account_no bigint(12),account_type varchar(45),address varchar(45),aadharno bigint(12),balance int not null,ifsc_code varchar(45),setpin int,email varchar(45))");
		s.close();
	}
	
	public void saveAccount(BankAccountDto bankaccountdta) throws Exception, Exception
	{
		PreparedStatement ps=createConnection().prepareStatement("insert into accounttable values(?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, bankaccountdta.getName());
		ps.setLong(2, bankaccountdta.getPhone());
		ps.setLong(3, bankaccountdta.getAccountno());
		ps.setString(4, bankaccountdta.getAccounttype());
		ps.setString(5, bankaccountdta.getAddress());
		ps.setLong(6, bankaccountdta.getAadhar());
		ps.setInt(7, bankaccountdta.getBalance());
		ps.setString(8, bankaccountdta.getIfsc());
		ps.setInt(9, bankaccountdta.getPin());
		ps.setString(10, bankaccountdta.getEmail());
		ps.execute();
		ps.close();
	}public ResultSet fetch1(long accno) throws Exception{
		PreparedStatement ps=createConnection().prepareStatement("select * from accounttable where account_no=?");
		ps.setLong(1, accno);
		return ps.executeQuery();
	}
	public void updateBalance(int amo,long phone,long accountno,int amo1) throws SQLException, Exception {
		PreparedStatement ps=createConnection().prepareStatement("update accounttable set balance=? where phone=?");
		ps.setInt(1,amo);
		ps.setLong(2, phone);
		ps.execute();
		/*
		 * PreparedStatement ps2=createConnection().
		 * prepareStatement("select * from accounttable where account_no=?");
		 * ps2.setLong(1, amo1);
		 */
		
		ResultSet rs=fetch1(accountno);
		int b =0 ;
		if(rs.next()) 
		{
			b=rs.getInt("balance")+amo1;
		}else b=rs.getInt("balance");
		
		PreparedStatement ps1=createConnection().prepareStatement("update accounttable set balance=? where account_no=?");
		ps1.setInt(1,b);
		ps1.setLong(2, accountno);
		ps1.execute();
		
	}public ResultSet fetchBank(long phone)throws Exception{
		PreparedStatement ps=createConnection().prepareStatement("select * from accounttable where phone=?");
		ps.setLong(1, phone);
		return ps.executeQuery();
	}


}