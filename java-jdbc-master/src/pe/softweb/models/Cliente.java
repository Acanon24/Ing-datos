
package pe.softweb.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import pe.softweb.configs.Database;

public class Cliente {
    private int DNI;
    private String nombre;
    private String apellido_Materno;
    private String apellido_Paterno;
    private String apellido_Paterno;
    private double numeroTelefonico;

    public Cliente(String nombre, String apellido_Materno, String apellido_Paterno, double numeroTelefonico) {
        this.nombre = nombre;
        this.apellido_Materno = apellido_Materno;
        this.apellido_Materno = apellido_Paterno;
        this.numeroTelefonico = numeroTelefonico;
  
    }

    public Cliente(int DNI, String nombre, String apellido_Materno, apellido_Paterno, double numeroTelefonico){
        this.nombre = nombre;
        this.apellido_Materno = apellido_Materno;
        this.apellido_Materno = apellido_Paterno;
        this.numeroTelefonico = numeroTelefonico;

    }
    
    public Cliente() {
    }

    public int getDNI() {
        return DNI;
    }

    public void setDNI(int DNI) {
        this.DNI = DNI;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String apellidoMaterno() {
        return apellido_Materno;
    }

    public void apellidoMaterno(String apellidoMaterno) {
        this.apellido_Materno = apellidoMaterno;
    
    }
    public String apellidoPaterno() {
        return apellido_Paterno;
    }

    public void apellidoPaterno(String apellidoPaterno) {
        this.apellido_Materno = apellidoPaterno;
    
    }

    public double getnumeroTelefonico() {
        return numeroTelefonico;
    }

    public void setnumeroTelefonico(double numeroTelefonico) {
        this.numeroTelefonico = numeroTelefonico;
    }

    @Override
    public String toString() {
        return "Cliente{" + "DNI=" + DNI + ", nombre=" + nombre + ", apellidoMaterno=" + apellido_Materno + ", apellidoPaterno=" + apellido_Paterno + ", numeroTelefonico=" + numeroTelefonico + '}';
    }
    
    public List<Cliente> listar(){
        List<Cliente> lista = new ArrayList<>();
            
        String sql ="SELECT * FROM animales";
        Connection con= Database.getConnection();
        PreparedStatement psmt=null; 
        ResultSet rs=null;  
        try {
            psmt=con.prepareStatement(sql);
            rs=psmt.executeQuery();
            while (rs.next()) {
                Cliente a =new Cliente();
                a.setDNI(rs.getInt(1));
                a.setNombre(rs.getString(2));
                a.setApellidoMaterno(rs.getString(20));
                a.setApellidoPaterno(rs.getString(20));
                a.setnumeroTelefonico(rs.getInt(4));
                lista.add(a);
            }
        } catch (SQLException e) {
            System.out.println(e.toString());
        }finally {
            try {
                psmt.close();
                rs.close();
                con.close();
            } catch (SQLException ex) {
                System.out.println(ex);
            }
        }
        return lista;
    }
    
    public void crear(){
        String sql ="INSERT INTO animales (nombre, nombre_cientifico, peso_kg, anios, id_habitad, id_locomocion, id_alimentacion) "
                + "VALUES (?,?,?,?,1,1,1) ";
        Connection con= Database.getConnection();
        PreparedStatement psmt=null; 
        try {
            psmt=con.prepareStatement(sql);
            psmt.setString(1, this.nombre);
            psmt.setString(2, this.apellido_Materno);
            psmt.setDouble(3, this.numeroTelefonico);
            psmt.executeUpdate();            
        } catch (SQLException e) {
            System.out.println(e.toString());
        }finally {
            try {
                psmt.close();
                con.close();
            } catch (SQLException ex) {
                System.out.println(ex);
            }
        } 
    }
    
    public void editar(){
        String sql ="UPDATE animales SET nombre = ?, nombre_cientifico = ?, peso_kg = ?, anios = ? WHERE id = ?";
        Connection con= Database.getConnection();
        PreparedStatement psmt=null; 
        try {
            psmt=con.prepareStatement(sql);
            psmt.setString(1, this.nombre);
            psmt.setString(2, this.apellido_Materno);
            psmt.setDouble(3, this.numeroTelefonico);
            psmt.setInt(5, this.DNI);
            psmt.executeUpdate();            
        } catch (SQLException e) {
            System.out.println(e.toString());
        }finally {
            try {
                psmt.close();
                con.close();
            } catch (SQLException ex) {
                System.out.println(ex);
            }
        } 
    }
    
     public void eliminar(){
        String sql ="DELETE FROM animales WHERE id = ?";
        Connection con= Database.getConnection();
        PreparedStatement psmt=null; 
        try {
            psmt=con.prepareStatement(sql);
            psmt.setInt(1, this.DNI);
            psmt.executeUpdate();            
        } catch (SQLException e) {
            System.out.println(e.toString());
        }finally {
            try {
                psmt.close();
                con.close();
            } catch (SQLException ex) {
                System.out.println(ex);
            }
        } 
    }
}
