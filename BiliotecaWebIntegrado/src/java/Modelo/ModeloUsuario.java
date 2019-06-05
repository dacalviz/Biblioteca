/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.*;

import Entidad.Usuario;
import Util.MysqlConexion;


public class ModeloUsuario {
    
    Connection con = null;
    PreparedStatement pstm = null;
    ResultSet rs = null;
    
    
    public String validarUsuario(String usuario, String contraseña)
    {
        String tempPassword="";
        try {
            String sql = "SELECT Password FROM usuario WHERE Login='"+usuario+"'";
            con = MysqlConexion.getConexion();
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery();
            
            rs.next();
            tempPassword = rs.getString("Password");
        } catch (Exception e) {
        }
        if(contraseña.compareTo(tempPassword)==0)
        {
            return ("Valido");
        }
        else
        {
            return ("ivalido");
        }
        
    }
    public String registrarUsuario (Usuario obj)
    {
        try 
        {
            String sql = "INSERT INTO `usuario`( `Login`, `Password`, `Nombre`, `Apellido`, `Telefono`, `DocumentoIdentidad`, `NacionalidadID`, `Direccion`, `FechaNacimiento`, `TipoUsuarioID`) VALUES ('"+
                    obj.getLogin()+"','"+
                    obj.getPassword()+"','"+
                    obj.getNombre()+"','"+
                    obj.getApellido()+"','"+
                    obj.getTelefono()+"','"+
                    obj.getDni()+"','"+
                    obj.getNacionalidad()+"','"+
                    obj.getDireccion()+"','"+
                    obj.getFechNacimiento()+"','"+
                    obj.getTipoUsuario()+"')";
            con = MysqlConexion.getConexion();
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery();
            
        
        } catch (Exception e) {
        }
        
        
        return ("Registro Exitoso"); 
    }
    
}
