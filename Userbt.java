package maakaliflorist.bt;

import java.sql.*;
import maakaliflorist.model.*;

public class Userbt {
	private Connection con;

	private String query;
    private PreparedStatement pst;
    private ResultSet rs;

	public Userbt(Connection con) {
		this.con = con;
	}
	
	public User userLogin(String Email, String Password) {
		User user = null;
        try {
            query = "select * from user where Email=? and Password=?";
            pst = this.con.prepareStatement(query);
            pst.setString(1, Email);
            pst.setString(2, Password);
            rs = pst.executeQuery();
            if(rs.next()){
            	user = new User();
            	user.setId(rs.getInt("Emailid"));
            	user.setName(rs.getString("Name"));
            	user.setEmail(rs.getString("Email"));
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return user;
    }
}
