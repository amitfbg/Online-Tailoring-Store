package com.Online_Tailoring.DAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.Online_Tailoring.Model.Customer;

@Repository
@Service
public class UserDAO {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	    this.jdbcTemplate = jdbcTemplate;
	}
	
	public JdbcTemplate getJdbcTemplate() {
	    return jdbcTemplate; 
	}
	
	public int registerCustomer(Customer user) {
		
		String sql = "INSERT INTO CUSTOMER(FName,LName,sex,Age,PhoneNumber,Address,UserId,Password) VALUES(?,?,?,?,?,?,?,?)";

		try {
			
			int count= jdbcTemplate.update(sql, new Object[] { user.getFName(),user.getLName(),user.getSex(), user.getAge(),user.getPhoneNumber(),user.getAddress(),user.getUserId(),user.getPassword() });
			return count;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

}
