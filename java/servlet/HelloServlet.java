package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {
	// 직렬화 클래스 버전관리 식별자
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// req는 doGet() 메서드의 배개변수로 전달받은 request 내장 객체
		req.setAttribute("message", "Hello Servlet");
		req.getRequestDispatcher("/Servlet/HelloServlet.jsp").forward(req, resp);
	}
}
