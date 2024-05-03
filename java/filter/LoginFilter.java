package filter;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import membership.MemberDAO;
import membership.MemberDTO;
import utils.JSFunction;

@WebFilter(filterName="LoginFilter", urlPatterns="/FilterListener/LoginFilter.jsp")
public class LoginFilter implements Filter {
	// 회원 정보를 얻어오기 위해 필요한 DB 접속 정보
	String MySQLDriver, MySQLURL, MySQLId, MySQLPwd;

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse resp = (HttpServletResponse)response;
		
		HttpSession session = req.getSession();
		String method = req.getMethod();
		
		if (method.equals("POST")) { // 로그인 처리
			// 로그인 정보와 일치하는 회원 확인
			String user_id = request.getParameter("user_id");
			String user_pw = request.getParameter("user_pw");
			
			MemberDAO dao = new MemberDAO(MySQLDriver, MySQLURL, MySQLId, MySQLPwd);
			MemberDTO memberDTO = dao.getMemberDTO(user_id, user_pw);
			dao.close();
			
			if(memberDTO.getId() != null) { // 일치하는 회원 존재
				// 세션에 로그인 정보 저장
				session.setAttribute("Userid", memberDTO.getId());
				session.setAttribute("UserName", memberDTO.getName());
				
				// 다음 페이지로 이동
				String backUrl = request.getParameter("backUrl");
				if(backUrl != null && !backUrl.equals("")) {
					JSFunction.alertLocation(resp, "로그인 전 요청한 페이지로 이동", backUrl);
					return;
				} else {
					resp.sendRedirect("../FilterListener/LoginFilter.jsp");
				}
			}else { // 일치하는 회원 없음
				req.setAttribute("LoginErrMsg", "로그인에 실패");
				req.getRequestDispatcher("../FilterListener/LoginFilter.jsp").forward(req, resp);
			}
		} else if (method.equals("GET")) { // 로그아웃 처리
			String mode = request.getParameter("mode");
			if(mode!=null&&mode.equals("logout")) {
				session.invalidate();
			}
		}
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		ServletContext application = filterConfig.getServletContext();
		
		MySQLDriver = application.getInitParameter("MySQLDriver");
		MySQLURL = application.getInitParameter("MySQLURL");
		MySQLId = application.getInitParameter("MySQLId");
		MySQLPwd = application.getInitParameter("MySQLPwd");
	}
	
	
}
