package com.billpayment.BO;

import com.billpayment.dao.AdminDAO;

public class AdminBO {

	public boolean verify(String username,String password){
		AdminDAO isadmin=new AdminDAO();
		boolean status;
		status=isadmin.verify(username,password);
		return status;
	}
}
