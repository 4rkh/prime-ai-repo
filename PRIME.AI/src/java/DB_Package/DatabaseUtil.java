package DB_Package;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DatabaseUtil {

    private static final String URL = "jdbc:derby://localhost:1527/primedb";
    private static final String USER = "usuario";
    private static final String PASSWORD = "usuario";

    public static String buscarAtributo(String tabela, String coluna, String idtabela, int id) throws Exception {
        String query = "SELECT " + coluna + " FROM " + tabela + " WHERE " + idtabela + "=" + id;
        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(query)) {
            
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getString(coluna);
                }
            }catch (Exception quer){
                System.out.println("Falha na querry F");
            }
        }catch (Exception ex){
            System.out.println("Falha na conexão");
        }
        return null; // Retorna null se nada for encontrado
    }

    public static String buscarLogin(String login) throws Exception {
        String query = "SELECT usuarioLogin FROM usuarios WHERE loginUsuario =" + login;
        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(query)) {
            
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getString("loginUsuario");
                }
            }catch (Exception quer){
                System.out.println("Falha na querry F");
            }
        }catch (Exception ex){
            System.out.println("Falha na conexão");
        }
        return null; // Retorna null se nada for encontrado
    }
    
    public static String buscarEmail(String login,String resposta) throws Exception {
        String query = "SELECT usuarioLogin FROM usuarios WHERE emailUsuario =" + login;
        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(query)) {
            
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getString(resposta);
                }
            }catch (Exception quer){
                System.out.println("Falha na querry F");
            }
        }catch (Exception ex){
            System.out.println("Falha na conexão");
        }
        return null; // Retorna null se nada for encontrado
    }
    
}
