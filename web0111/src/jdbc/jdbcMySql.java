package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class jdbcMySql {
	public static void main(String[] args) {
		Connection conn = null;
		
		String url = "jdbc:mysql://localhost:3306/book_ex?";
		String user = "root";
		String pw = "1234";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, pw);
			System.out.println("데이터베이스에 접속했습니다.");
			conn.close();
		}catch(ClassNotFoundException cnfe) {
			System.out.println("해당 클래스를 찾을 수 없습니다." + cnfe.getMessage());
		}catch(SQLException se) {
			System.out.println(se.getMessage());
		}
	}

}
