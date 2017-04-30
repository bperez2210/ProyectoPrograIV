package cr.ac.una.prograiv.project.domain;
// Generated 25/04/2017 03:07:58 AM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Avion generated by hbm2java
 */
public class Avion  implements java.io.Serializable {


     private Integer pkaIdAvion;
     private Aerolinea aerolinea;
     private Integer anno;
     private String modelo;
     private String marca;
     private int cantPasajeros;
     private Integer cantAsientosPorFila;
     private Integer cantFilas;
     private Date ultimaFecha;
     private String ultimoUsuario;
     private Set rutas = new HashSet(0);

    public Avion() {
    }

	
    public Avion(Aerolinea aerolinea, int cantPasajeros, Date ultimaFecha, String ultimoUsuario) {
        this.aerolinea = aerolinea;
        this.cantPasajeros = cantPasajeros;
        this.ultimaFecha = ultimaFecha;
        this.ultimoUsuario = ultimoUsuario;
    }
    public Avion(Aerolinea aerolinea, Integer anno, String modelo, String marca, int cantPasajeros, Integer cantAsientosPorFila, Integer cantFilas, Date ultimaFecha, String ultimoUsuario, Set rutas) {
       this.aerolinea = aerolinea;
       this.anno = anno;
       this.modelo = modelo;
       this.marca = marca;
       this.cantPasajeros = cantPasajeros;
       this.cantAsientosPorFila = cantAsientosPorFila;
       this.cantFilas = cantFilas;
       this.ultimaFecha = ultimaFecha;
       this.ultimoUsuario = ultimoUsuario;
       this.rutas = rutas;
    }
   
    public Integer getPkaIdAvion() {
        return this.pkaIdAvion;
    }
    
    public void setPkaIdAvion(Integer pkaIdAvion) {
        this.pkaIdAvion = pkaIdAvion;
    }
    public Aerolinea getAerolinea() {
        return this.aerolinea;
    }
    
    public void setAerolinea(Aerolinea aerolinea) {
        this.aerolinea = aerolinea;
    }
    public Integer getAnno() {
        return this.anno;
    }
    
    public void setAnno(Integer anno) {
        this.anno = anno;
    }
    public String getModelo() {
        return this.modelo;
    }
    
    public void setModelo(String modelo) {
        this.modelo = modelo;
    }
    public String getMarca() {
        return this.marca;
    }
    
    public void setMarca(String marca) {
        this.marca = marca;
    }
    public int getCantPasajeros() {
        return this.cantPasajeros;
    }
    
    public void setCantPasajeros(int cantPasajeros) {
        this.cantPasajeros = cantPasajeros;
    }
    public Integer getCantAsientosPorFila() {
        return this.cantAsientosPorFila;
    }
    
    public void setCantAsientosPorFila(Integer cantAsientosPorFila) {
        this.cantAsientosPorFila = cantAsientosPorFila;
    }
    public Integer getCantFilas() {
        return this.cantFilas;
    }
    
    public void setCantFilas(Integer cantFilas) {
        this.cantFilas = cantFilas;
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
    public Set getRutas() {
        return this.rutas;
    }
    
    public void setRutas(Set rutas) {
        this.rutas = rutas;
    }




}


