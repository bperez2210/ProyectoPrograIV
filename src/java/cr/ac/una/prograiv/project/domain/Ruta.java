package cr.ac.una.prograiv.project.domain;
// Generated 11/05/2017 10:54:46 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Ruta generated by hbm2java
 */
public class Ruta  implements java.io.Serializable {


     private Integer pkaIdRuta;
     private Avion avion;
     private String origen;
     private String destino;
     private int minutos;
     private Date fechaSalida;
     private Double descuento;
     private double tarifa;
     private Date ultimaFecha;
     private String ultimoUsuario;
     private Set<Boleto> boletos = new HashSet<Boleto>(0);

    public Ruta() {
    }

	
    public Ruta(Avion avion, String origen, String destino, int minutos, Date fechaSalida, double tarifa, Date ultimaFecha, String ultimoUsuario) {
        this.avion = avion;
        this.origen = origen;
        this.destino = destino;
        this.minutos = minutos;
        this.fechaSalida = fechaSalida;
        this.tarifa = tarifa;
        this.ultimaFecha = ultimaFecha;
        this.ultimoUsuario = ultimoUsuario;
    }
    public Ruta(Avion avion, String origen, String destino, int minutos, Date fechaSalida, Double descuento, double tarifa, Date ultimaFecha, String ultimoUsuario, Set<Boleto> boletos) {
       this.avion = avion;
       this.origen = origen;
       this.destino = destino;
       this.minutos = minutos;
       this.fechaSalida = fechaSalida;
       this.descuento = descuento;
       this.tarifa = tarifa;
       this.ultimaFecha = ultimaFecha;
       this.ultimoUsuario = ultimoUsuario;
       this.boletos = boletos;
    }
   
    public Integer getPkaIdRuta() {
        return this.pkaIdRuta;
    }
    
    public void setPkaIdRuta(Integer pkaIdRuta) {
        this.pkaIdRuta = pkaIdRuta;
    }
    public Avion getAvion() {
        return this.avion;
    }
    
    public void setAvion(Avion avion) {
        this.avion = avion;
    }
    public String getOrigen() {
        return this.origen;
    }
    
    public void setOrigen(String origen) {
        this.origen = origen;
    }
    public String getDestino() {
        return this.destino;
    }
    
    public void setDestino(String destino) {
        this.destino = destino;
    }
    public int getMinutos() {
        return this.minutos;
    }
    
    public void setMinutos(int minutos) {
        this.minutos = minutos;
    }
    public Date getFechaSalida() {
        return this.fechaSalida;
    }
    
    public void setFechaSalida(Date fechaSalida) {
        this.fechaSalida = fechaSalida;
    }
    public Double getDescuento() {
        return this.descuento;
    }
    
    public void setDescuento(Double descuento) {
        this.descuento = descuento;
    }
    public double getTarifa() {
        return this.tarifa;
    }
    
    public void setTarifa(double tarifa) {
        this.tarifa = tarifa;
    }
    public Date getUltimaFecha() {
        return this.ultimaFecha;
    }
    
    public void setUltimaFecha(Date ultimaFecha) {
        this.ultimaFecha = ultimaFecha;
    }
    public String getUltimoUsuario() {
        return this.ultimoUsuario;
    }
    
    public void setUltimoUsuario(String ultimoUsuario) {
        this.ultimoUsuario = ultimoUsuario;
    }
    public Set<Boleto> getBoletos() {
        return this.boletos;
    }
    
    public void setBoletos(Set<Boleto> boletos) {
        this.boletos = boletos;
    }




}


