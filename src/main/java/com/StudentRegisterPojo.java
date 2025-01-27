package com;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class StudentRegisterPojo  {
	@Id
	private int roll_number;
	private String full_name;	
	private int phone_number;
	private String date;
	private String gender;
	private String address;
	private String password;
	
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFull_name() {
		return full_name;
	}
	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}
	public int getRoll_number() {
		return roll_number;
	}
	public void setRoll_number(int roll_number) {
		this.roll_number = roll_number;
	}
	public int getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(int phone_number) {
		this.phone_number = phone_number;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public StudentRegisterPojo() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "StudentRegisterPojo [roll_number=" + roll_number + ", full_name=" + full_name + ", phone_number="
				+ phone_number + ", date=" + date + ", gender=" + gender + ", address=" + address + ", password="
				+ password + "]";
	}
	public StudentRegisterPojo(int roll_number, String full_name, int phone_number, String date, String gender,
			String address, String password) {
		super();
		this.roll_number = roll_number;
		this.full_name = full_name;
		this.phone_number = phone_number;
		this.date = date;
		this.gender = gender;
		this.address = address;
		this.password = password;
	}

}
