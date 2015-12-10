package com.billpayment.BO;

import java.sql.SQLException;

import org.apache.log4j.Logger;

import com.billpayment.dao.AdminDAO;
import com.billpayment.exception.DatabaseException;

public class AdminBO {

	private Logger LOGGER = Logger.getLogger(com.billpayment.BO.AdminBO.class);

	public boolean verify(String username, String password)
			throws DatabaseException {
		AdminDAO isadmin = new AdminDAO();
		boolean status;

		try {
			status = isadmin.verify(username, password);
		} catch (ClassNotFoundException e) {
			// TODO: handle exception
			LOGGER.error("Jar for Oracle 10g not found.");
			throw new DatabaseException(e);
		} catch (SQLException e) {
			// TODO: handle exception
			LOGGER.error("Exception related to database");
			throw new DatabaseException(e);
		}
		return status;
	}
}
