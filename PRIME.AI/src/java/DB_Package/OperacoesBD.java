package DB_Package;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class OperacoesBD {

    private static final String URL = "jdbc:derby://localhost:1527/primedb";
    private static final String USER = "usuario";
    private static final String PASSWORD = "usuario";

    public static String buscarAtributo(String tabela, String coluna, String idtabela, int id) throws Exception {
        String query = ("SELECT " + coluna + " FROM " + tabela + " WHERE " + idtabela + "=" + id);
        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD); PreparedStatement stmt = conn.prepareStatement(query)) {

            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getString(coluna);
                }
            } catch (Exception quer) {
                System.out.println("Falha na querry F");
            }
        } catch (Exception ex) {
            System.out.println("Falha na conexão");
        }
        return null; // Retorna null se nada for encontrado
    }

    public static String inserirUsuario(String login, String senha, String email) throws Exception {

        String query = "INSERT INTO usuarios (loginUsuario, senhaUsuario, emailUsuario) VALUES (?, ?, ?)";

        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD); PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, login);
            stmt.setString(2, senha);
            stmt.setString(3, email);
            
            // Executando a atualização (inserção)
            int rowsAffected = stmt.executeUpdate();
            // Se a inserção foi bem-sucedida (rowsAffected > 0), você pode retornar o login inserido
            if (rowsAffected > 0) {
                return "Sucesso";
            }
        } catch (Exception ex) {
            System.out.println("Falha na conexão");
        }
        return null; // Retorna null se nada for encontrado
    }

public static String buscarLogin(String login) throws Exception {
    String query = "SELECT loginUsuario FROM usuarios WHERE loginUsuario = ?";
    try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
         PreparedStatement stmt = conn.prepareStatement(query)) {
        // Define o valor do parâmetro (substitui o ? pela variável login)
        stmt.setString(1, login);
        // Executa a consulta e obtém o resultado
        try (ResultSet rs = stmt.executeQuery()) {
            if (rs.next()) {
                // Retorna o login encontrado
                return rs.getString("loginUsuario");
            }
        } catch (Exception quer) {
            System.out.println("Erro ao processar o ResultSet: " + quer.getMessage());
            quer.printStackTrace();
        }

    } catch (Exception ex) {
        System.out.println("Erro ao conectar ao banco de dados: " + ex.getMessage());
        ex.printStackTrace();
    }

    // Retorna null se o login não for encontrado
    return null;
}
public static String buscarEmail(String email) throws Exception {
    // Query SQL com um placeholder para o parâmetro
    String query = "SELECT emailUsuario FROM usuarios WHERE emailUsuario = ?";

    // Tentativa de conexão com o banco de dados
    try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
         PreparedStatement stmt = conn.prepareStatement(query)) {

        // Define o valor do parâmetro (substitui o ? pela variável login)
        stmt.setString(1, email);

        // Executa a consulta e obtém o resultado
        try (ResultSet rs = stmt.executeQuery()) {
            if (rs.next()) {
                // Retorna o login encontrado
                return rs.getString("emailUsuario");
            }
        } catch (Exception quer) {
            System.out.println("Erro ao processar o ResultSet: " + quer.getMessage());
            quer.printStackTrace();
        }

    } catch (Exception ex) {
        System.out.println("Erro ao conectar ao banco de dados: " + ex.getMessage());
        ex.printStackTrace();
    }
    // Retorna null se o login não for encontrado
    return null;
}
public static String buscarSenhaLogin(String login) throws Exception {
    // Query SQL com um placeholder para o parâmetro
    String query = "SELECT senhaUsuario FROM usuarios WHERE loginUsuario = ?";

    // Tentativa de conexão com o banco de dados
    try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
         PreparedStatement stmt = conn.prepareStatement(query)) {

        // Define o valor do parâmetro (substitui o ? pela variável login)
        stmt.setString(1, login);

        // Executa a consulta e obtém o resultado
        try (ResultSet rs = stmt.executeQuery()) {
            if (rs.next()) {
                // Retorna o login encontrado
                return rs.getString("senhaUsuario");
            }
        } catch (Exception quer) {
            System.out.println("Erro ao processar o ResultSet: " + quer.getMessage());
            quer.printStackTrace();
        }

    } catch (Exception ex) {
        System.out.println("Erro ao conectar ao banco de dados: " + ex.getMessage());
        ex.printStackTrace();
    }
    // Retorna null se o login não for encontrado
    return null;
}
}
