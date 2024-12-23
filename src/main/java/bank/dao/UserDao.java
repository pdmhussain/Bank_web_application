package bank.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpSession;

import bank.dto.BankAccountDto;
import bank.dto.UserDto;

public class UserDao {
	public Connection createConnection() throws Exception {
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/bankuser?createDatabaseIfNotExist=true","root","root");
	}public void createUserTable() throws Exception{
		Connection con=createConnection();
		Statement s=con.createStatement();
		s.execute("create table if not exists usertable(firstname varchar(45),lastname varchar(45),email varchar(45) primary key,phone bigint(10) unique,age int,gender varchar(45),address varchar(45),password varchar(45))");
		s.close();
	}
	public void saveUser(UserDto ud) throws Exception{
		PreparedStatement ps=createConnection().prepareStatement("insert into usertable values(?,?,?,?,?,?,?,?)");
		ps.setString(1, ud.getFirstName());
		ps.setString(2, ud.getLastName());
		ps.setString(3, ud.getEmail());
		ps.setLong(4, ud.getPhone());
		ps.setInt(5, ud.getAge());
		ps.setString(6, ud.getGender());
		ps.setString(7, ud.getAddress());
		ps.setString(8, ud.getPassword());	
		ps.execute();
		ps.close();
	}
	public void deleteUser(UserDto ud) throws Exception {
		PreparedStatement ps=createConnection().prepareStatement("delete from usertable where (email=? and password=?)");
		ps.setString(1, ud.getEmail());
		ps.setString(2, ud.getPassword());
		ps.execute();
		ps.close();
		PreparedStatement ps1=createConnection().prepareStatement("delete from accounttable where phone=?");
		ps1.setLong(1, ud.getPhone());
		ps1.execute();
		ps1.close();
	}
	public void updateUser(long phone,String address,int age,UserDto ud,BankAccountDto bat) throws SQLException, Exception {
		PreparedStatement ps1=createConnection().prepareStatement("update accounttable set phone=?,address=? where email=?");
		ps1.setLong(1,phone);
		ps1.setString(2,address);
		ps1.setString(3, ud.getEmail());
		ps1.execute();
		ps1.close();
		PreparedStatement ps=createConnection().prepareStatement("update usertable set phone=?,address=?,age=? where email=?");
		ps.setLong(1,phone);
		ps.setString(2,address);
		ps.setInt(3,age);
		ps.setString(4, ud.getEmail());
		ps.execute();
		
	}public void updatePassword(String email,String password) throws SQLException, Exception {
		PreparedStatement ps=createConnection().prepareStatement("update usertable set password=? where email=?");
		ps.setString(1, password);
		ps.setString(2, email);
		ps.execute();
	}public ResultSet fetch(String email) throws Exception{
		PreparedStatement ps=createConnection().prepareStatement("select * from usertable where email=?");
		ps.setString(1, email);
		return ps.executeQuery();
	}public long fetchPhone(long phone) throws Exception {
		long ph = 0;
		PreparedStatement ps=createConnection().prepareStatement("select phone from usertable where phone=?");
		ps.setLong(1, phone);
		ResultSet rs= ps.executeQuery();
		if(rs.next())
		 ph=rs.getLong("phone");
		return ph;
	}
	//public void fetchUser() {}
}
