package net.failbook.db;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class Database {

	private String dbName = "";
	private String dbDriver = "";
	private String dbUsername = "";
	private String dbPassword = "";
	private Connection conn = null;

	public Connection getConnection() {
		return this.conn;
	}

	public static void main(String[] args) {
		try {
			Database db = new Database();
			if (!db.init()) {
				System.err.println("Database configuration file is incomplete. Please, fill all the parameters.");
				System.exit(-1);
			}
			db.closeConnection();
			System.out.println("Connection ok");
		} catch (ClassNotFoundException e) {
			System.err.println("Class not found.");
		} catch (FileNotFoundException e) {
			System.err.println("File does not exist: " + e.getLocalizedMessage());
			System.out.println(System.getProperty("user.dir"));
		} catch (IOException e) {
			System.err.println("Can't read file: " + e.getLocalizedMessage());
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public boolean init() throws FileNotFoundException, IOException, ClassNotFoundException, SQLException {
		FileInputStream input = null;
		try {
			String dbConfPath = System.getProperty("user.home") + "/Failbook-data/database.conf";
			input = new FileInputStream(dbConfPath);
			Properties properties = new Properties();
			properties.load(input);
			this.dbName = properties.getProperty("dbName");
			this.dbDriver = properties.getProperty("dbDriver");
			this.dbUsername = properties.getProperty("dbUsername");
			this.dbPassword = properties.getProperty("dbPassword");
			if (this.dbName.isEmpty() || this.dbDriver.isEmpty() || this.dbUsername.isEmpty()
					|| this.dbPassword.isEmpty()) {
				return false;
			}
			Class.forName(this.dbDriver);
			this.conn = DriverManager.getConnection(this.dbName, this.dbUsername, this.dbPassword);
		} finally {
			if (input != null)
				input.close();
		}
		return true;
	}

	public void closeConnection() throws SQLException {
		this.conn.close();
	}

}
