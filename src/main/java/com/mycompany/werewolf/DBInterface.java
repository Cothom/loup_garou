package com.mycompany.werewolf;

import javax.sql.DataSource;
import javax.annotation.Resource;
import java.sql.*;

public class DBInterface {

	//private static Context ctx = new InitialContext();
	@Resource(name="jdbc/werewolf")
	private DataSource ds;// = (DataSource) ctx.lookup("/jdbc/werewolf");

	public boolean isLoginValid(String login, String password) {
		boolean ret = false;
		try {
			Class.forName("oracle.jdbc.OraclDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try (Connection conn = ds.getConnection()) {
			Statement st = conn.createStatement();
			String query = "SELECT password FROM Users WHERE login='"+login+"'";
			ResultSet rSet = st.executeQuery(query);
			rSet.next();
			ret = password.equals(rSet.getString("password"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}

	public boolean registerUser(String pseudo, String password) {

		return true;
	}
}

