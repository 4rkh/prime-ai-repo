package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet(urlPatterns = {"/benchmark"})
public class ConsultaBenchmark extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            String url = "jdbc:derby://localhost:1527/primedb";
            String user = "usuario";
            String password = "usuario";

            try (Connection conn = DriverManager.getConnection(url, user, password)) {
                String query = "SELECT * FROM benchmark";
                PreparedStatement stmt = conn.prepareStatement(query);
                ResultSet rs = stmt.executeQuery();

                while (rs.next()) {
                    out.println("<p>" + rs.getString("coluna") + "</p>");
                }
            } catch (Exception e) {
                out.println("Erro ao conectar: " + e.getMessage());
            }
        }
    }

    // Método para processar requisições POST (se necessário)
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response); // Encaminha para o método doGet
    }

    // Método para informações do servlet
    @Override
    public String getServletInfo() {
        return "Servlet de consulta ao banco de dados";
    }
}
