package model.epidemiologico;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "epidemiologico")
public class Epidemiologico {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column(name = "data")
    private String data;
    @Column(name = "doencaAssociada")
    private String doencaAssociada;

    public Epidemiologico() { }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getData() {
        return this.data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getDoencaAssociada() {
        return this.doencaAssociada;
    }

    public void setDoencaAssociada(String doencaAssociada) {
        this.doencaAssociada = doencaAssociada;
    }    
    
}