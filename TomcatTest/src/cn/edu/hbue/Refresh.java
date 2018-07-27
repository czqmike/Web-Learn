package cn.edu.hbue;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Refresh
 */
@WebServlet("/Refresh")
public class Refresh extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Refresh() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setIntHeader("Refresh", 1);
		
		response.setContentType("text/html;charset=UTF-8");
		
		Calendar cale = Calendar.getInstance();
		
		Date tasktime = cale.getTime();
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		String nowTime = df.format(tasktime);
		PrintWriter out = response.getWriter();
		String title = "自动刷新Header设置";
		String docType = "<!DOCTYPE html>\n";
		out.println(docType + 
				"<html>\n" + 
				"<head>\n" +
				"<title>" + title + "</title>\n" + 
				"</head>\n" + 
				
				"<body bgcolor=\"#f0f0f0\">\n" + 
				"<h1 align=\"center\">" + title + "</h1>" + 
				"<p>" + "now time is : " + nowTime +  "</p>" + 
				"</body>\n" +
				"</html>\n");	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
