package com.Online_Tailoring.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.Online_Tailoring.Model.Cart_Apparel;
import com.Online_Tailoring.Model.Customer;

@Service
public class Cart_ApparelDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	
	
	public List<Cart_Apparel> addtocart(Cart_Apparel cartitems){
		List<Cart_Apparel> al= new ArrayList<Cart_Apparel>();
		al.add(cartitems);
		
		return al;
	}
	
public int registerCustomer(Cart_Apparel cap,Customer cus) {
	
		
		String sql = "INSERT INTO ORDER1(UserId,ApparelId,ApparelType,Gender,Size,Color,Material,Price) VALUES(?,?,?,?,?,?,?,?)";

		try {
			
			int count= jdbcTemplate.update(sql, new Object[] { cus.getUserId(),cap.getApparelId(),cap.getApparelType(),cap.getGender(),cap.getSize(),cap.getColor(),cap.getMaterial(),cap.getPrice() });
			return count;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

}
