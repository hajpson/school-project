import org.apache.ibatis.jdbc.ScriptRunner;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.Reader;
import java.sql.Connection;
import java.sql.DriverManager;


public class Main{
    public static void main(String args[]) throws Exception {
        //Registering the Driver
        DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
        //Getting the connection
        String mysqlUrl = "jdbc:mysql://localhost?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
        Connection con = DriverManager.getConnection(mysqlUrl, "root", "banan12");
        System.out.println("Connection established......");
        //Initialize the script runner
        ScriptRunner sr = new ScriptRunner(con);
        //Creating a reader object
        Reader reader = new BufferedReader(new FileReader("C:\\Users\\Kacpah\\IdeaProjects\\projekt\\src\\main\\resources\\data.sql"));
        //Running the script
        sr.runScript(reader);
    }
}
