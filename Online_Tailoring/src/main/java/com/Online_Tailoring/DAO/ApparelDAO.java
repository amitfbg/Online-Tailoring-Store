package com.Online_Tailoring.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import com.Online_Tailoring.Model.Apparel;


@Service
public class ApparelDAO {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<Apparel> getApparel()
	{  
	    return jdbcTemplate.query("select * from Apparel", new RowMapper<Apparel>()
	    {  
	        public Apparel mapRow(ResultSet rs, int row) throws SQLException 
	        {  
	            Apparel e=new Apparel();  
	            e.setApparelId(rs.getString(1));  
	            e.setApparelType(rs.getString(2));  
	            e.setGender(rs.getString(3));         
	            return e;  
	        }  
	    });  
	}

}
