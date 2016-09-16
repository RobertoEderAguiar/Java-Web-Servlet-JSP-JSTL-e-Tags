/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.modelo.validator;

/**
 *
 * @author Roberto Eder
 */

import br.edu.modelo.comum.MensagemConstantes;
import br.edu.modelo.exception.ValidationException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
public class DataValidator implements Validator{
    
    
    @Override
    public boolean validar(Object objeto) throws ValidationException{
                String data  = (String) objeto;
        try{
        new SimpleDateFormat("dd/mm/yyyy").parse(data);
        
        }catch (ParseException e){
            throw new ValidationException(MensagemConstantes.MSG_ERR_DATA_VALIDATOR);
            
        }
        return true;
    }
}
