package cse.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	 protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        PrintWriter out = response.getWriter();
	        String name = request.getParameter("name");
	        String username = request.getParameter("username");
	        String password = request.getParameter("pass");
	        String email = request.getParameter("email");
	        String contact_no = request.getParameter("contact");
	        String usertype = request.getParameter("usertype");
	        out.print(usertype);

	        // JDBC connection parameters
	        String jdbcUrl = "jdbc:mysql://localhost:3306/phpmyadmin";
	        String dbUser = "phpmyadmin";
	        String dbPassword = "2020331092@abdullah";

	        try {
	            // Load MySQL JDBC driver
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            
	            // Establish connection
	            Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

	            // SQL statement to insert user information into the database
	            String sql = "INSERT INTO Users (name, username, password, email, usertype,contact_no) VALUES (?, ?, ?, ?, ?,?)";
	            PreparedStatement statement = conn.prepareStatement(sql);
	            statement.setString(1, name);
	            statement.setString(2, username);
	            statement.setString(3, password);
	            statement.setString(4, email);
	            statement.setString(5, usertype);
	            statement.setString(6, contact_no);

	            

	            // Execute the SQL statement
	            int rowsInserted = statement.executeUpdate();
	            if (rowsInserted > 0) {
	                out.println("User registered successfully!");
	            } else {
	                out.println("Failed to register user.");
	            }

	            // Close the connection and statement
	            statement.close();
	            conn.close();

	        } catch (ClassNotFoundException | SQLException e) {
	            e.printStackTrace();
	            out.println("Database connection error!");
	        }
	        // doGet(request, response); // This line might cause infinite loop, commenting it out.
	    }
	}