package lk.ijse.ecommercewebapp.Controller;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.mindrot.jbcrypt.BCrypt;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "AdminLoginServlet", value = "/admin-login")
public class AdminLoginServlet extends HttpServlet {
    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String emailOrPhone = req.getParameter("email");
        String password = req.getParameter("password");

        try (Connection connection = dataSource.getConnection()) {

            String query = "SELECT user_name , password  FROM users WHERE email = ? OR phone = ?";
            try (PreparedStatement ps = connection.prepareStatement(query)) {
                ps.setString(1, emailOrPhone);
                ps.setString(2, emailOrPhone);
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {

                    String storedPasswordHash = rs.getString("password"); // stored hash from DB
                    if (BCrypt.checkpw(password, storedPasswordHash)) {

                        req.getSession().setAttribute("user", rs.getString("user_name")); // store user info in session
                        resp.sendRedirect("admin.jsp"); // redirect to dashboard

                    } else {

                        req.setAttribute("error", "Invalid credentials. Please try again.");
                        req.getRequestDispatcher("/login.jsp").forward(req, resp);
                    }
                } else {

                    req.setAttribute("error", "Invalid credentials. Please try again.");
                    req.getRequestDispatcher("/login.jsp").forward(req, resp);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error.");
        }
    }
}
