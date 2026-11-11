import com.mysql.cj.jdbc.exceptions.CommunicationsException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

public class db_conn {
  
//    String url="jdbc:mysql://sql201.epizy.com:3306";
//    String db_Id="epiz_24557345";
//    String db_Pass="Tpg20bBvGH";
//    String db_name="fb";
    
    String url="jdbc:mysql://localhost:3306";
    String db_Id="root";
    String db_Pass="";
    String db_name="restaurant_management";

    Connection c=null;
    String er,query;
    ArrayList a=new ArrayList();
    
    
    db_conn(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(db_conn.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    boolean Table(){
        boolean r=false;
        try { 
            c=DriverManager.getConnection(url,db_Id,db_Pass);
            Statement pst=c.createStatement();
            
            pst.executeUpdate("use "+db_name);
            pst.executeUpdate(query);
                
            r=true;
        } 
        catch (SQLException e) {
            r=false;
            er="Error is "+e;
        }        
        return r;
    }
 
    public boolean check_conn(){
        boolean r=false;
        try{
            c=DriverManager.getConnection(url,db_Id,db_Pass);
            JOptionPane.showMessageDialog(null,"Connected To Database");
            r=true;
        }
        catch(CommunicationsException e){
            er="Database Connection error";
        }
        catch(SQLException e){
            er="Error is:   "+e;
        }
        return r;
    }


//checking database and auto creation
    public boolean check_db(){
        boolean r=false;
        int date=0,month=0,year=0,tt=1;
       try{
            c=DriverManager.getConnection(url,db_Id,db_Pass);
            Statement ps=c.createStatement(); 
            ResultSet rs=ps.executeQuery("show databases"); 
            
            while(rs.next()){
                if(rs.getString(1).equals(db_name)){
                    r=true;
                    break;
                }
            }
            if(r==false){
                Statement pst=c.createStatement(); 
                pst.executeUpdate("create database "+db_name); 
            }
       }
       catch(SQLException e){
           er="Error is:   "+e;
           JOptionPane.showMessageDialog(null,e);
       }
         return r; 
    }

    //for updating in database
    Boolean update(){
        boolean r=false;
        try{
            c=DriverManager.getConnection(url+"/"+db_name,db_Id,db_Pass);
            PreparedStatement ps=c.prepareStatement(query);
            for(int i=0;i<a.size();i++)
                ps.setString(i+1,""+a.get(i));
            ps.executeUpdate();
            r=true;
        }
        catch(SQLException e){
            r=false;
            er=""+e;
        }
        return r;
    }
    
    //for getting result with data
    ResultSet select(){
        ResultSet rs=null;
        boolean r=false;
        try{
            c=DriverManager.getConnection(url+"/"+db_name,db_Id,db_Pass);
            PreparedStatement ps=c.prepareStatement(query);
            if(!a.isEmpty()){
                for(int i=0;i<a.size();i++){
                    ps.setString(i+1,""+a.get(i));
                }
            }
            rs=ps.executeQuery();
            r=true;
        }
        catch(SQLException e){
            r=false;
            er=""+e;
        }
        return rs;
    }   
    
    boolean close(){   
        boolean c_r=false;
        try {
            c.close();
            c_r=true;
        } 
        catch (SQLException e) {
            er=""+e;
        }
        return c_r;
    }
    
    //for printing error
    String error(){
        return er;
    }
}