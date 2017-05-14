/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.project.controller;

import com.google.gson.Gson;
import cr.ac.una.prograiv.project.bl.AerolineaBL;
import cr.ac.una.prograiv.project.domain.Aerolinea;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class AerolineaServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String json;
            Aerolinea aerolinea = new Aerolinea();
            AerolineaBL uBL = new AerolineaBL();
            HttpSession session = request.getSession();
            
            Thread.sleep(1000);
            
            String accion = request.getParameter("accion");
            switch(accion){
                case "consultarAerolineas":
                    System.out.println(uBL.findAll(Aerolinea.class.getName()).size());
                    json = new Gson().toJson(uBL.findAll(Aerolinea.class.getName()));
                    out.print(json);
                    break;
                case "registroAerolinea":
//                    usuario.setContrasena(request.getParameter("contrasena"));
//                    usuario.setNombreUsuario(request.getParameter("nombreUsuario"));
//                    usuario.setDireccion(request.getParameter("direccion"));
//                    usuario.setNombre(request.getParameter("nombre"));
//                    usuario.setApellido1(request.getParameter("apellido1"));
//                    usuario.setApellido2(request.getParameter("apellido2"));
//                    
//                    String fechatxt = request.getParameter("fechaNacimiento");
//                    DateFormat format = new SimpleDateFormat("dd/MM/yyyy", Locale.ENGLISH);
//                    Date date = format.parse(fechatxt);
//                    
//                    usuario.setFechaNacimiento(date);
//                    usuario.setEmail(request.getParameter("correo"));
//                    usuario.setNacionalidad(request.getParameter("nacionalidad"));
//                    usuario.setAdmin(true);
//                    usuario.setNumTel("0000000");
//                    usuario.setUltimaFecha(new Date());
//                    usuario.setUltimoUsuario("admin");
//                    uBL.save(usuario);
                    break;
                default:
                    out.print("E~No se indico la acción que se desea realizare");
                    break;                 
            }
        } catch (NumberFormatException e) {
            out.print("E~" + e.getMessage());
        } catch (Exception e) {
            out.print("E~" + e.getMessage());
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

}
