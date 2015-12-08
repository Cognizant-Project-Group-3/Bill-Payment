package com.billpayment.helper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class DBUtil {
private static Connection connStudent=null;

public static Connection createConnection() throws ClassNotFoundException,SQLException{
	ResourceBundle rsOracle=ResourceBundle.getBundle("oracle");
    String driver=rsOracle.getString("driver");
    String url = rsOracle.getString("url");//"jdbc:oracle:thin:@localhost:1521:XE";//port:databasename
    String user=rsOracle.getString("username");
    String password=rsOracle.getString("password");
    Class.forName(driver);
    connStudent = DriverManager.getConnection(url, user, password);
    return connStudent;
	
}
public static void closeConnection()throws SQLException{
	 connStudent.close();
}

}
