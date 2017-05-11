/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.una.prograiv.project.bl;
import cr.ac.una.prograiv.project.domain.Boleto;
import java.util.List;

/**
 *
 * @author chgari
 */
public class BoletoBL extends BaseBL implements IBaseBL<Boleto, Integer>{
    public BoletoBL() {
        super();
    }
    @Override
    public void save(Boleto o) {
        if(this.findById(o.getPkaIdUsuario())==null){
            this.getDao(o.getClass().getName()).save(o);
        }else{
            System.out.println("Error el Boleto no existe");
        }
    }
    
    @Override
    public Boleto merge(Boleto o) {
        return (Boleto) this.getDao(o.getClass().getName()).merge(o);
    }
    @Override
    public void delete(Boleto o) {
        /*Ej: 1.1
          ELIMINAR UNA PERSONA SOLO SI TIENE MENOS DE 5 TELEFONOS Y
          3 DIRECCIONES
        */
        this.getDao(o.getClass().getName()).delete(o);
    }
    @Override
    public Boleto findById(Integer o) {
        return (Boleto) this.getDao(Boleto.class.getName()).findById(o);
    }
    @Override
    public List<Boleto> findAll(String className) {
        return this.getDao(className).findAll();
    }

    @Override
    public Boleto findByWord(String o) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
