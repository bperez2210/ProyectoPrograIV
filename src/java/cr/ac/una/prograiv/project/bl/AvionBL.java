/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.project.bl;
import cr.ac.una.prograiv.project.domain.Avion;
import java.util.List;

/**
 *
 * @author chgari
 */
public class AvionBL extends BaseBL implements IBaseBL<Avion, Integer>{
    public AvionBL() {
        super();
    }
    @Override
    public void save(Avion o) {
        if(this.findById(o.getPkaIdAvion())==null){
            this.getDao(o.getClass().getName()).save(o);
        }else{
            System.out.println("Error el Avion no existe");
        }
    }
    
    @Override
    public Avion merge(Avion o) {
        return (Avion) this.getDao(o.getClass().getName()).merge(o);
    }
    @Override
    public void delete(Avion o) {
        /*Ej: 1.1
          ELIMINAR UNA PERSONA SOLO SI TIENE MENOS DE 5 TELEFONOS Y
          3 DIRECCIONES
        */
        this.getDao(o.getClass().getName()).delete(o);
    }
    @Override
    public Avion findById(Integer o) {
        return (Avion) this.getDao(Avion.class.getName()).findById(o);
    }
    @Override
    public List<Avion> findAll(String className) {
        return this.getDao(className).findAll();
    }
    
}
