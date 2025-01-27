package com;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class DataInsertionAdminPojo  {
	
	@Id
	private int Roll_No;
	
	private String Name;
	@Column(name = "FatherName")
	private String Fname;
	private int Room_No;
	private int Row_No;
	private int Chair_No;
	public DataInsertionAdminPojo(int roll_No, String name, String fname, int room_No, int row_No, int chair_No) {
		super();
		Roll_No = roll_No;
		Name = name;
		Fname = fname;
		Room_No = room_No;
		Row_No = row_No;
		Chair_No = chair_No;
	}
	public DataInsertionAdminPojo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getRoll_No() {
		return Roll_No;
	}
	public void setRoll_No(int roll_No) {
		Roll_No = roll_No;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getFname() {
		return Fname;
	}
	public void setFname(String fname) {
		Fname = fname;
	}
	public int getRoom_No() {
		return Room_No;
	}
	public void setRoom_No(int room_No) {
		Room_No = room_No;
	}
	public int getRow_No() {
		return Row_No;
	}
	public void setRow_No(int row_No) {
		Row_No = row_No;
	}
	public int getChair_No() {
		return Chair_No;
	}
	public void setChair_No(int chair_No) {
		Chair_No = chair_No;
	}
	
	

}
