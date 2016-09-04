package br.edu.modelo.pessoa;


import java.util.*;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Roberto Eder
 */
public class Pessoa {
    
    
    private String pessoa;
    private int idade;
    private double peso;
    private Date nasc;

    /**
     * @return the pessoa
     */
    public String getPessoa() {
        return pessoa;
    }

    /**
     * @param pessoa the pessoa to set
     */
    public void setPessoa(String pessoa) {
        this.pessoa = pessoa;
    }

    /**
     * @return the idade
     */
    public int getIdade() {
        return idade;
    }

    /**
     * @param idade the idade to set
     */
    public void setIdade(int idade) {
        this.idade = idade;
    }

    /**
     * @return the peso
     */
    public double getPeso() {
        return peso;
    }

    /**
     * @param peso the peso to set
     */
    public void setPeso(double peso) {
        this.peso = peso;
    }

    /**
     * @return the nasc
     */
    public Date getNasc() {
        return nasc;
    }

    /**
     * @param nasc the nasc to set
     */
    public void setNasc(Date nasc) {
        this.nasc = nasc;
    }
}
