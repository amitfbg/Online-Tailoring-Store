package com.Online_Tailoring.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.Online_Tailoring.Model.Cart_Apparel;
import com.Online_Tailoring.Model.Customer;
@Repository
public class Order_Details_DAO {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<Cart_Apparel> getApparel(Customer c)
	{ 
		String sql="select * from order1 where UserId=?";
	    return jdbcTemplate.query(sql, new Object[] {
				c.getUserId()}, new RowMapper<Cart_Apparel>()
	    {  
	        public Cart_Apparel mapRow(ResultSet rs, int row) throws SQLException 
	        {  
	        	Cart_Apparel e=new Cart_Apparel();  
	            e.setApparelType(rs.getString(3));  
	            e.setGender(rs.getString(4));
	            e.setSize(rs.getString(5));
	            e.setColor(rs.getString(6));
	            e.setMaterial(rs.getString(7));
	            e.setApparelId();
	            e.setPrice();
	            return e;  
	        }  
	    }); 

}
}
