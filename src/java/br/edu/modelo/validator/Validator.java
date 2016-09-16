/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.modelo.validator;

import br.edu.modelo.exception.ValidationException;

/**
 *
 * @author Roberto Eder
 */
public interface Validator {
    
    
    public boolean validar(Object objeto) throws ValidationException;
}
