//Apparel
package com.Online_Tailoring.Model;

public class Apparel {
	private String ApparelId;
	private String ApparelType;
	private String Gender;

	public Apparel(String apparelId, String apparelType, String gender) {
		super();
		ApparelId = apparelId;
		ApparelType = apparelType;
		Gender = gender;
	}

	public Apparel() {
		super();
	}

	public String getApparelId() {
		return ApparelId;
	}

	public void setApparelId(String apparelId) {
		ApparelId = apparelId;
	}

	public String getApparelType() {
		return ApparelType;
	}

	public void setApparelType(String apparelType) {
		ApparelType = apparelType;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	@Override
	public String toString() {
		return "Apparel [ApparelId=" + ApparelId + ", ApparelType=" + ApparelType + ", Gender=" + Gender + "]";
	}

}
