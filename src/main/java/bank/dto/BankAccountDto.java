package bank.dto;

import java.util.Random;

public class BankAccountDto {
	private String name;
	private long phone;
	private long accountno;
	private String accounttype;
	private String address;
	private long aadhar;
	private int balance;
	private String ifsc;
	private int pin;
	private String email;
	
	//constructor
	public BankAccountDto(String name, long phone, long accountno, String accounttype, String address, long aadhar,
			int balance, String ifsc ,int pin,String email) {
		super();
		this.name = name;
		this.phone = phone;
		this.accountno = accountno;
		this.accounttype = accounttype;
		this.address = address;
		this.aadhar = aadhar;
		this.balance = balance;
		this.ifsc = ifsc;
		this.pin =pin;
		this.email=email;
	}public BankAccountDto(long phone){this.phone=phone;}
	
	
	//gettres and setters
	public BankAccountDto() {
		super();
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public String getAccounttype() {
		return accounttype;
	}
	public void setAccounttype(String accounttype) {
		this.accounttype = accounttype;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public long getAadhar() {
		return aadhar;
	}
	public void setAadhar(long aadhar) {
		this.aadhar = aadhar;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	
	public void setIfsc(String ifsc) {
		this.ifsc = ifsc;
	}


	public int getPin() {
		return pin;
	}


	public void setPin(int pin) {
		this.pin = pin;
	}


	public long getAccountno() {
		return accountno;
	}


	public String getIfsc() {
		return ifsc;
	}
    

	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	@Override
	public String toString() {
		return "BankAccountDto [name=" + name + ", phone=" + phone + ", accountno=" + accountno + ", accounttype="
				+ accounttype + ", address=" + address + ", aadhar=" + aadhar + ", balance=" + balance + ", ifsc="
				+ ifsc + ", pin=" + pin + "]";
	}	
}