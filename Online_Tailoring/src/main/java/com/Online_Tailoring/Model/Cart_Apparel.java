package com.Online_Tailoring.Model;

public class Cart_Apparel {

	private String ApparelId;
	private String ApparelType;
	private String Gender;
	private String Size;
	private String Color;
	private String Material;
	private double Price;

	public Cart_Apparel() {
		super();
	}

	public Cart_Apparel(String apparelId, String apparelType, String gender, String size, String color, String material,
			double price) {
		super();
		ApparelId = apparelId;
		ApparelType = apparelType;
		Gender = gender;
		Size = size;
		Color = color;
		Material = material;
		Price = price;
	}

	public String getApparelId() {
		return ApparelId;
	}

	public void setApparelId() {
		String apparelId = Gender.substring(0, 1) + ApparelType.substring(0, 3);
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

	public String getSize() {
		return Size;
	}

	public void setSize(String size) {
		Size = size;
	}

	public String getColor() {
		return Color;
	}

	public void setColor(String color) {
		Color = color;
	}

	public String getMaterial() {
		return Material;
	}

	public void setMaterial(String material) {
		Material = material;
	}

	public double getPrice() {

		return Price;
	}

	public void setPrice() {
		double sp = 0, ap = 0, mp = 0;
		if (Size.equals("S")) {
			sp = 100;
		}
		if (Size.equals("M")) {
			sp = 200;
		}
		if (Size.equals("L")) {
			sp = 400;
		}
		if (Size.equals("XL")) {
			sp = 600;
		}
		if (ApparelType.equals("Saree")) {
			ap = 600;
		}
		if (ApparelType.equals("Salwar Suit")) {
			ap = 800;
		}
		if (ApparelType.equals("Tshirt")) {
			ap = 600;
		}
		if (ApparelType.equals("Shirt")) {
			ap = 800;
		}
		if (ApparelType.equals("Pants")) {
			ap = 900;
		}
		if (ApparelType.equals("Shorts")) {
			ap = 500;
		}
		if (Material.equals("Cotton")) {
			mp = 200;
		}
		if (Material.equals("Silk")) {
			mp = 300;
		}
		if (Material.equals("Polyester")) {
			mp = 250;
		}
		if (Material.equals("Nylon")) {
			mp = 150;
		}
		Price = sp + ap + mp;
	}

	@Override
	public String toString() {
		return "Cart_Apparel [ApparelId=" + ApparelId + ", ApparelType=" + ApparelType + ", Gender=" + Gender
				+ ", Size=" + Size + ", Color=" + Color + ", Material=" + Material + ", Price=" + Price + "]";
	}

}
