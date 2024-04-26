package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// 비동기 방식으로 통신할 때 XML이나 JSON을 상요하는 경우
// 이와 같이 순수 데이터만 출력해야 하는 경우에는 서블릿에서 직접 출력
// 이 외 대부분 JSP를 통해 출력하는 것이 편리
public class DirectServletPrint extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter writer = resp.getWriter(); // println() 메서드 제공
		writer.println("<html>");
		writer.println("<head><title>DirectServletPrint</title></head>");
		writer.println("<body>");
		writer.println("<h2>서블릿에서 직접 출력</h2>");
		writer.println("<p>jsp로 서로 포워드하지 않음</p>");
		writer.println("</body>");
		writer.println("</html>");
		writer.close();
	}
}
