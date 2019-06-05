/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Entidad.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.ModeloUsuario;

public class ServletUsuario extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletUsuario</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletUsuario at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    protected void service (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String metodo= request.getParameter("metodo");
        if(metodo.equalsIgnoreCase("Ingresar"))
        {
            Login(request, response);
        }
        if(metodo.equalsIgnoreCase("Registrar"))
        {
            RegistrarUsuario(request, response);
        }
        
    }
    protected void Login (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String usuario = request.getParameter("Usuario");
        String passwordUsuario = request.getParameter("passwordUsuario");
        
        ModeloUsuario usu = new ModeloUsuario();
        String temp = usu.validarUsuario(usuario, passwordUsuario);
        if(temp.compareTo("Valido")==0)
        {
            request.getRequestDispatcher("index.html").forward(request, response);
        }
        else
        {
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
        
    }
    protected void RegistrarUsuario (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String nombreUsuario = request.getParameter("nombreUsuario");
        String apellidoUsuario = request.getParameter("apellidoUsuario");
        String telefonousuario = request.getParameter("telefonousuario");
        String dniUsuario = request.getParameter("dniUsuario");
        String direccionUsuario = request.getParameter("direccionUsuario");
        String loginUsuario = request.getParameter("loginUsuario");
        String claveUsuario = request.getParameter("claveUsuario");
        String nacionalidadUsuario = request.getParameter("nacionalidadUsuario");
        String tipoUsuario = request.getParameter("tipoUsuario");
        String fechaNacimiento = request.getParameter("fechaNacimiento");
        
        Usuario usu = new Usuario();
        usu.setNombre(nombreUsuario);
        usu.setApellido(apellidoUsuario);
        usu.setTelefono(telefonousuario);
        usu.setDni(dniUsuario);
        usu.setDireccion(direccionUsuario);
        usu.setLogin(loginUsuario);
        usu.setPassword(claveUsuario);
        usu.setNacionalidad(1);
        usu.setTipoUsuario(1);
        usu.setFechNacimiento(fechaNacimiento);
        
        ModeloUsuario modelUsu = new ModeloUsuario();
        modelUsu.registrarUsuario(usu);
        
                
        
    }

}
