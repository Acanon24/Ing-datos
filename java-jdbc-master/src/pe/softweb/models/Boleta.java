/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.softweb.models;

/**
 *
 * @author ANTHONY SAMUEL
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import pe.softweb.configs.Database;

public class Boleta {
    private int RUC;
    private double monto;
    private double fecha;

    public Boleta(int RUC; double monto; double fecha) {
        this.RUC = RUC;
        this.monto = monto;
        this.fecha = fecha;
  
    }

    public Boleta(int DNI, String nombre, String apellido_Materno, apellido_Paterno, double numeroTelefonico){
        this.RUC = RUC;
        this.monto = monto;
        this.fecha = fecha;

    }
    
    public Boleta() {
    }

    public int getRUC() {
        return RUC;
    }

    public void setRUC(int RUC) {
        this.RUC = RUC;
    }

    public String getmonto() {
        return monto;
    }

    public void setmonto(String monto) {
        this.monto = monto;
    }

    public double getfecha() {
        return fecha;
    }

    public void setfecha(double fecha) {
        this.fecha = fecha;
    }

    @Override
    public String toString() {
        return "Cliente{" + "RUC=" + RUC + ", monto=" + monto + ", fecha=" + fecha +'}';
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
                Boleta a =new Cliente();
                a.setRUC(rs.getInt(1));
                a.setmonto(rs.getString(2));
                a.fecha(rs.getInt(4));
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
            psmt.setString(1, this.RUC);
            psmt.setString(2, this.monto);
            psmt.setDouble(3, this.fecha);
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
            psmt.setString(1, this.RUC);
            psmt.setString(2, this.monto);
            psmt.setDouble(3, this.fecha);
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
            psmt.setInt(1, this.RUC);
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
