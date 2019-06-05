/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidad;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import Util.MysqlConexion;
import java.util.Calendar;
import java.util.GregorianCalendar;

public class Usuario {

    private int usuarioID; 
    private String login; 
    private String password; 
    private String nombre; 
    private String apellido; 
    private String telefono; 
    private String dni; 
    private int nacionalidad; 
    private String direccion;
    private String fechNacimiento;
    private int tipoUsuario;
    private String fechCreacion;
    private String fechModificacion;
    
    public Usuario() {
    }
    public Usuario(int usuarioID, String login, String password, 
            String nombre, String apellido, String telefono, String dni, 
            int nacionalidad, String direccion, String fechNacimiento, 
            int tipoUsuario, String fechCreacion, String fechModificacion) 
    {
        this.usuarioID = usuarioID;
        this.login = login;
        this.password = password;
        this.nombre = nombre;
        this.apellido = apellido;
        this.telefono = telefono;
        this.dni = dni;
        this.nacionalidad = nacionalidad;
        this.direccion = direccion;
        this.fechNacimiento = fechNacimiento;
        this.tipoUsuario = tipoUsuario;
        this.fechCreacion = fechCreacion;
        this.fechModificacion = fechModificacion;
    }

    public int getUsuarioID() {
        return usuarioID;
    }

    public void setUsuarioID(int usuarioID) {
        this.usuarioID = usuarioID;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public int getNacionalidad() {
        return nacionalidad;
    }

    public void setNacionalidad(int nacionalidad) {
        this.nacionalidad = nacionalidad;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getFechNacimiento() {
        return fechNacimiento;
    }

    public void setFechNacimiento(String fechNacimiento) {
        this.fechNacimiento = fechNacimiento;
    }

    public int getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(int tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }

    public String getFechCreacion() {
        return fechCreacion;
    }

    public void setFechCreacion(String fechCreacion) {
        this.fechCreacion = fechCreacion;
    }

    public String getFechModificacion() {
        return fechModificacion;
    }

    public void setFechModificacion(String fechModificacion) {
        this.fechModificacion = fechModificacion;
    }
   
    
}
