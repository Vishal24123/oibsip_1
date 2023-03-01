package reservationSystem;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.io.PrintWriter;

/**
 * Servlet implementation class Delete
 */
@WebServlet("/delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
    	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pnr1 = request.getParameter("pnr");
		int pnr=Integer.parseInt(pnr1);
		RequestDispatcher dispatcher = null;
			Connection con = null;
		try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/reservation?useSSL=false&allowPublicKeyRetrieval=true","root","V1shal@24");
				
				PreparedStatement pt= con.prepareStatement("DELETE from detail where pnr=?");
				pt.setInt(1, pnr); 
				int rs = pt.executeUpdate();
				
				if (rs> 0)
				{
					request.setAttribute("dstatus",  "success");
					dispatcher=request.getRequestDispatcher("action.jsp");					 
				}
				else
				{
					request.setAttribute("dstatus",  "failure");
					dispatcher=request.getRequestDispatcher("see.jsp");					
				}
				dispatcher.forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				con.close();
			} catch (SQLException e) {
					e.printStackTrace();
			}
	}

}
