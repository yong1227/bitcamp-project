package jdbc;

import java.io.IOException;
import java.util.StringTokenizer;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Loader
 */
@WebServlet("/Loader")
public class Loader extends HttpServlet {
	
	public void init(ServletConfig config) throws ServletException {
		try {
			
		
		String driver = config.getInitParameter("jdbcdriver");
		
		StringTokenizer st = new StringTokenizer(driver, ",");
		
		while(st.hasMoreTokens()) {
			String jdbcdriver = st.nextToken();
			
			//데이터베이스 드라이버 로드
			Class.forName(jdbcdriver);
			
			System.out.println("데이터베이스 드라이버 로드 완료!!");
		}
		} catch(Exception e) {
			
		}
	}
}
