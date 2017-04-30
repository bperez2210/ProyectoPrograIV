/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.project.test;

import cr.ac.una.prograiv.project.dao.UsuarioDAO;
import cr.ac.una.prograiv.project.domain.Usuario;
import java.util.Date;
import java.util.List;

/**
 *
 * @author admin
 */
public class PruebaUsuarios {
        public static void main(String []args){
          testSave();
//        testMerge();
//        testDelete();
//        testFindbyID();
//        testFindAll();
    }
    
    public static void testSave(){
        Usuario u1 = new Usuario("1234","cristian031","Cristian","Garita","2121654","admin",new Date());
        UsuarioDAO pDao = new UsuarioDAO();
        pDao.save(u1);
    }
    
    public static void testMerge(){
         Usuario u1 = new Usuario("1234","cristian031","Cristian","Garita","2121654","admin",new Date());
        UsuarioDAO pDao = new UsuarioDAO();
        u1.setNumTel("546841313");
        pDao.merge(u1);
    }
    
    public static void testDelete(){
        Usuario u1 = new Usuario("1234","cristian031","Cristian","Garita","2121654","admin",new Date());
        UsuarioDAO pDao = new UsuarioDAO();
        pDao.save(u1);
    }
    
    public static void testFindbyID(){
        UsuarioDAO pDao = new UsuarioDAO();
        Usuario d1 = pDao.findById(1111);
        System.out.println(d1);
    }
    
    public static void testFindAll(){
        List<Usuario> listaUsuario;
        UsuarioDAO pDao = new UsuarioDAO();
        listaUsuario = pDao.findAll();
        System.out.println(listaUsuario);
    }
}
