package servlets;
import DB_Package.OperacoesBD;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");

        OperacoesBD busca = new OperacoesBD();
        HttpSession session = request.getSession();

        try {
            // Valida o login e senha
            if (busca.buscarLogin(login) != null && senha.equals(busca.buscarSenhaLogin(login))) {
                session.setAttribute("check", null); // Login bem-sucedido
                session.setAttribute("usuario", login); // Salva o usuário logado
                response.sendRedirect("http://localhost:8080/PRIME.AI/home.jsp");
            } else {
                // Login ou senha inválidos
                session.setAttribute("check", "error");
                response.sendRedirect("http://localhost:8080/PRIME.AI/login.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            session.setAttribute("check", "error");
            response.sendRedirect("http://localhost:8080/PRIME.AI/login.jsp");
        }
    }
}