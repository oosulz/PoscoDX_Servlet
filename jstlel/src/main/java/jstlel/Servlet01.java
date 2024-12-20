package jstlel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;


@WebServlet("/01")
public class Servlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int iVal = 10;
		long lVal = 10;
		float fVal = 3.14f;
		boolean bVal = true;
		String sVal = "가나다라마바사";
		
		request.setAttribute("iVal", iVal);
		request.setAttribute("lVal", lVal);
		request.setAttribute("fVal", fVal);
		request.setAttribute("bVal", bVal);
		request.setAttribute("sVal", sVal);
		
		UserVo vo = new UserVo();
		vo.setId(1L);
		vo.setName("test");
		
		request.setAttribute("user", vo);
		
		
		Map<String, Object> map = new HashMap<>();
		map.put("ival", iVal);
		map.put("sVal", sVal);
		map.put("bVal", bVal);
		map.put("fVal", fVal);
		map.put("lVal", lVal);
		
		request.setAttribute("val_map", map);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/01.jsp");
		dispatcher.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
