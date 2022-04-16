import java.sql.*;

public class main {

    public static final String DB_URL = "jdbc:mysql://localhost/todo";
    public static final String DB_USERNAME = "root";
    public static final String DB_PASSWORD = "";
    public static void main(String[] args) {



        Connection conn = null;
        Statement st = null;

        try {
            conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            System.out.println("başarılı: " );
            conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            st = conn.createStatement();
            ResultSet resultSet = st.executeQuery("SELECT * FROM kontrol");
            while (resultSet.next()) {
                System.out.println("ID : " + resultSet.getInt("id"));
                System.out.println("Adı : " + resultSet.getString("mail"));
                System.out.println("Soyadı : " + resultSet.getString("sifre"));
                System.out.println("Sınıfı : " + resultSet.getInt("yetki"));
                System.out.println("#################");





            }
            String updateQuery = "INSERT INTO kontrol (mail,sifre,yetki) VALUES ('baris@manco.com' ,'123456456987', 2 )";
            st.executeUpdate(updateQuery);

            // PreparedStatement ile Insert İşlemi
            PreparedStatement pr = conn.prepareStatement("INSERT INTO kontrol (mail,sifre,yetki) VALUES (?,?,?)");
            pr.setString(1, "mail@gmamail.com");
            pr.setString(2, "456987");
            pr.setString(3,    "9");
            pr.executeUpdate();



// Statement ile Update İşlemi
            String updateQuery2 = "UPDATE kontrol SET sifre = '11111111111'  WHERE id = 11";
            st.executeUpdate(updateQuery2);

            // PreparedStatement ile Update İşlemi
            PreparedStatement pr2 = conn.prepareStatement("UPDATE kontrol SET sifre = ?  WHERE id = ?");
            pr2.setString(1, "6666");
            pr2.setInt(2, 12);
            pr2.executeUpdate();







            // Statement ile Delete İşlemi
            String updateQuery3 = "DELETE FROM kontrol WHERE id = 1";
            st.executeUpdate(updateQuery3);

            // PreparedStatement ile Delete İşlemi
            PreparedStatement pr3 = conn.prepareStatement("DELETE FROM kontrol WHERE id = ?");
            pr3.setInt(1, 2);
            pr3.executeUpdate();

            st.close();
        } catch (SQLException ex) {

            System.out.println("SQLException: " + ex.getMessage());
            System.out.println("SQLState: " + ex.getSQLState());
            System.out.println("VendorError: " + ex.getErrorCode());
        }
    }
}
