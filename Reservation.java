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
import java.util.Random;

/**
 * Servlet implementation class Reservation
 */
@WebServlet("/reserve")
public class Reservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("addr");
		String type = request.getParameter("type");
		String froms= request.getParameter("froms");
		String tos=request.getParameter("tos");
		String date=request.getParameter("dates");
		String tname=request.getParameter("train_name");
		String tnum=request.getParameter("trn_no");
		
		
		RequestDispatcher dispatcher = null;
		Connection con = null;
		Random ran = new Random();
		int nxt = ran.nextInt(100000);
	  	int pnr= (nxt%100000+100000);
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/reservation?useSSL=false&allowPublicKeyRetrieval=true","root","V1shal@24");
			PreparedStatement pt= con.prepareStatement("insert into detail(fname, lname, email, phone, address, classtype, trnum, trname, dates, froms, tos,  pnr) values (?,?,?,?,?,?,?,?,?,?,?,?)");
			pt.setString(1, fname);
			pt.setString(2, lname);
			pt.setString(3, email);
			pt.setString(4, phone);
			pt.setString(5, address);
			pt.setString(6,type);
			pt.setString(7, tnum);
			pt.setString(8, tname);
			pt.setString(9, date);
			pt.setString(10, froms);
			pt.setString(11, tos);
			pt.setInt(12, pnr);
						
			int rowCount = pt.executeUpdate();
			if (rowCount > 0) {
				request.setAttribute("rstatus", "success");
				request.setAttribute("pnr",pnr );
				dispatcher = request.getRequestDispatcher("view.jsp");
			} else {
				request.setAttribute("rstatus",  "failure");
				dispatcher = request.getRequestDispatcher("reserve.jsp");
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
