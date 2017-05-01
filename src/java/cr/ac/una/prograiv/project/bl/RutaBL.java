/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.project.bl;
import cr.ac.una.prograiv.project.domain.Ruta;
import java.util.List;

/**
 *
 * @author chgari
 */
public class RutaBL extends BaseBL implements IBaseBL<Ruta, Integer>{
    public RutaBL() {
        super();
    }
    @Override
    public void save(Ruta o) {
        if(this.findById(o.getPkaIdRuta())==null){
            this.getDao(o.getClass().getName()).save(o);
        }else{
            System.out.println("Error el Ruta no existe");
        }
    }
    
    @Override
    public Ruta merge(Ruta o) {
        return (Ruta) this.getDao(o.getClass().getName()).merge(o);
    }
    @Override
    public void delete(Ruta o) {
        /*Ej: 1.1
          ELIMINAR UNA PERSONA SOLO SI TIENE MENOS DE 5 TELEFONOS Y
          3 DIRECCIONES
        */
        this.getDao(o.getClass().getName()).delete(o);
    }
    @Override
    public Ruta findById(Integer o) {
        return (Ruta) this.getDao(Ruta.class.getName()).findById(o);
    }
    @Override
    public List<Ruta> findAll(String className) {
        return this.getDao(className).findAll();
    }
    
}
