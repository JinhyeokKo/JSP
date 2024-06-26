package utils;
import java.io.PrintWriter;

import jakarta.servlet.http.HttpServletResponse;
// 기본 내장 객체인 out이 JspWriter 타입
import jakarta.servlet.jsp.JspWriter;

public class JSFunction {
	// msg : 알림창에 띄울 메시지
	// url : 알림창을 닫은 후 이동할 페이지의 URL
	// out : 자바스크립트 코드를 삽입할 출력 스트림(JSP의 out 내장 객체)
	public static void alertLocation(String msg, String url, JspWriter out) {
		try {
			// 삽입할 자바스크립트 코드
			String script = ""
					+ "<script>"
					+ "    alert('" + msg + "');"
					+ "    location.href='" + url + "';"
					+ "</script>";
			out.println(script); // 자바스크립트 코드를 out 내장 객체로 출력(삽입)
		} catch(Exception e) {}
	}
	
	// 메시지 알림창을 띄운 후 이전 페이지로 되돌아갑니다.
	public static void alertBack(String msg, JspWriter out) {
		try {
			// 삽입할 자바스크립트 코드
			String script = ""
					+ "<script>"
					+ "    alert('" + msg + "');"
					+ "    history.back();" // 브라우저가 세션 기록의 바로 뒤 페이지로 이동하도록 지시
					+ "</script>";
			out.println(script);
		} catch(Exception e) {}
	}
	
	// 메시지 알림창을 띄운 후 명시한 URL로 이동합니다.
    public static void alertLocation(HttpServletResponse resp, String msg, String url) {
        try {
            resp.setContentType("text/html;charset=UTF-8");
            PrintWriter writer = resp.getWriter();
            String script = ""
                          + "<script>"
                          + "    alert('" + msg + "');"
                          + "    location.href='" + url + "';"
                          + "</script>";
            writer.print(script);
        }
        catch (Exception e) {}
    }

    // 메시지 알림창을 띄운 후 이전 페이지로 돌아갑니다.
    public static void alertBack(HttpServletResponse resp, String msg) {
        try {
            resp.setContentType("text/html;charset=UTF-8");
            PrintWriter writer = resp.getWriter();
            String script = ""
                          + "<script>"
                          + "    alert('" + msg + "');"
                          + "    history.back();"
                          + "</script>";
            writer.print(script);
        }
        catch (Exception e) {}
    }
}
