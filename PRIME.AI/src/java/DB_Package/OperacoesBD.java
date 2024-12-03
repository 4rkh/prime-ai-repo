package DB_Package;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jakarta.servlet.http.HttpServlet;

public class OperacoesBD extends HttpServlet {

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
        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD); PreparedStatement stmt = conn.prepareStatement(query)) {
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
        String query = "SELECT emailUsuario FROM usuarios WHERE emailUsuario = ?";

        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD); PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, email);

            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
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
        return null;
    }

    public static String buscarSenhaLogin(String login) throws Exception {
        String query = "SELECT senhaUsuario FROM usuarios WHERE loginUsuario = ?";

        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD); PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, login);

            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
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
        return null;
    }

    public static String obterTabela(String tabela) throws Exception {
        
        StringBuilder resultado = new StringBuilder();

        // Query para selecionar todos os dados da tabela
        String query = "SELECT * FROM " + tabela;

        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {

            // Obter metadados da tabela
            int columnCount = rs.getMetaData().getColumnCount();

            // Adicionar cabeçalho da tabela
            resultado.append("Tabela: ").append(tabela).append("\n");
            for (int i = 1; i <= columnCount; i++) {
                resultado.append(rs.getMetaData().getColumnName(i)).append("\t");
            }
            resultado.append("\n-------------------------------------------\n");

            // Iterar sobre os resultados
            while (rs.next()) {
                for (int i = 1; i <= columnCount; i++) {
                    resultado.append(rs.getString(i)).append("\t");
                }
                resultado.append("\n");
            }

        } catch (Exception ex) {
            resultado.append("Erro ao acessar os dados: ").append(ex.getMessage()).append("\n");
            throw ex; // Repassa a exceção para ser tratada, se necessário
        }

        return resultado.toString();
    }

}
