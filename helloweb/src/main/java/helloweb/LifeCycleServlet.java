package helloweb;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/Servlet")
public class LifeCycleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LifeCycleServlet() {
        super();
        
    }

    @Override
	public void init(ServletConfig config) throws ServletException {
		
	}


	public void destroy() {
		
	}


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
