package com.billpayment.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.billpayment.helper.DBUtil;

public class AdminDAO {

	public boolean verify(final String username, final String password)
			throws ClassNotFoundException, SQLException {// String
		// username,String
		// password
		Connection con = null;
		boolean status = false;

		try {
			con = DBUtil.createConnection();
			final PreparedStatement stmt = con
					.prepareStatement("SELECT USERNAME,PASSWORD FROM ADMIN");

			final ResultSet rsAdmin = stmt.executeQuery();

			while (rsAdmin.next()) {
				if (rsAdmin.getString("USERNAME").equalsIgnoreCase(username)
						&& rsAdmin.getString("PASSWORD").equals(password)) {
					status = true;

					break;
				}
			}
			rsAdmin.close();
		} finally {
			DBUtil.closeConnection();
			if (con != null) {
				con.close();

			}
		}
		return status;
	}
}
