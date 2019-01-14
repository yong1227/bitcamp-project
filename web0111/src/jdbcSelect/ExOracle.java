package jdbcSelect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ExOracle {
	public static void main(String[] args) {
		Connection conn = null;
//		Statement stmt = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "student";
		String pw = "1234";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, pw);
			System.out.println("데이터베이스에 접속했습니다");

		}catch(Exception e) {
			e.printStackTrace();
		}
		
		try {
//			stmt = conn.createStatement();
			String selectSql = "select deptno from emp where ename=?";
			pstmt = conn.prepareStatement(selectSql);
			pstmt.setString(1, "KING");
//			rs = stmt.executeQuery(selectSql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				System.out.println(rs.getInt(1));
			}
			rs.close();
			conn.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
	}

}
