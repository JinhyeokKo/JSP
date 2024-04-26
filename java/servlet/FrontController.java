package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// 와일드카드(*)를 사용하여 URL 패턴이 "*.one"에 해당하는 요청을 모두 이 서블릿과 매핑
@WebServlet("*.one")
public class FrontController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 현재 경로에서 호스트명을 제외한 나머지 부분 파악
		String uri = req.getRequestURI();
		// 마지막 슬래시(/)의 인덱스 구함
		int lastSlash = uri.lastIndexOf("/");
		// 인덱스로 경로의 마지막 부분의 문자열을 확보
		String commandStr = uri.substring(lastSlash);
		
		// 문자열을 통한 페이지 구분 및 각 페이지를 처리할 수 있는 메서드 호출
		if (commandStr.equals("/regist.one"))
			registFunc(req);
		else if(commandStr.equals("/login.one"))
			loginFunc(req);
		else if(commandStr.equals("/freeboard.one"))
			freeboardFunc(req);
		
		// request 영역에 저장
		req.setAttribute("url", uri);
		req.setAttribute("commandStr", commandStr);
		// 포워드
		req.getRequestDispatcher("/Servlet/FrontController.jsp").forward(req, resp);
	}
	
	// 페이지별 처리 메서드 --> 각 페이지에 출력할 데이터를 request 영역에 저장
	void registFunc(HttpServletRequest req) {
        req.setAttribute("resultValue", "<h4>회원가입</h4>");
    }

    void loginFunc(HttpServletRequest req) {
        req.setAttribute("resultValue", "<h4>로그인</h4>");
    }

    void freeboardFunc(HttpServletRequest req) {
        req.setAttribute("resultValue", "<h4>자유게시판</h4>");
    }
}
