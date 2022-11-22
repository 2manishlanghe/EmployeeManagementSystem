package com.employee.model;

import java.sql.Connection;
import java.sql.SQLException;

public interface DBservice {
	Connection getConnection() throws ClassNotFoundException,SQLException;

}
