package com.Online_Tailoring.Model;

public class Customer {
	private String FName, LName, Sex, Address, UserId, Password;
	private int Age;
	private long PhoneNumber;

	// Constructor
	public Customer(String fName, String lName, String sex, String address, String userId, String password, int age,
			long phoneNumber) {
		super();
		FName = fName;
		LName = lName;
		Sex = sex;
		Address = address;
		UserId = userId;
		Password = password;
		Age = age;
		PhoneNumber = phoneNumber;
	}

	public Customer() {
		super();
	}

	public String getFName() {
		return FName;
	}

	public void setFName(String fName) {
		FName = fName;
	}

	public String getLName() {
		return LName;
	}

	public void setLName(String lName) {
		LName = lName;
	}

	public String getSex() {
		return Sex;
	}

	public void setSex(String sex) {
		Sex = sex;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getUserId() {
		return UserId;
	}

	public void setUserId(String userId) {
		UserId = userId;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public int getAge() {
		return Age;
	}

	public void setAge(int age) {
		Age = age;
	}

	public long getPhoneNumber() {
		return PhoneNumber;
	}

	public void setPhoneNumber(long phoneNumber) {
		PhoneNumber = phoneNumber;
	}

	@Override
	public String toString() {
		return "Customer [FName=" + FName + ", LName=" + LName + ", Sex=" + Sex + ", Address=" + Address + ", UserId="
				+ UserId + ", Password=" + Password + ", Age=" + Age + ", PhoneNumber=" + PhoneNumber + "]";
	}

}
