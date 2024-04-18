package utils;
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
					+ "    history.back();"
					+ "</script>";
			out.println(script);
		} catch(Exception e) {}
	}
}
