package jdbcUpdate;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ExOracle {
	public static void main(String args[]) {
		Connection conn = null;
//		Statement stmt = null;
		PreparedStatement pstmt = null;
		int rowNum = -1;
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "student";
		String pw = "1234";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, pw);
			System.out.println("데이터베이스에 접속했습니다.");
		}catch(Exception e) {
			e.printStackTrace();
		}	
		
		try {
			String updateSql = "update emp SET mgr=? where ename='KING'";
//			stmt = conn.createStatement();
			pstmt = conn.prepareStatement(updateSql);
			pstmt.setInt(1, 8000);
			System.out.println(123);
			rowNum = pstmt.executeUpdate();
			
			System.out.println(rowNum+" 줄 변경했습니다"); 
	
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}	
}
