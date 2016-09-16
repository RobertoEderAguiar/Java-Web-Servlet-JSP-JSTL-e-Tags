/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.modelo.validator;

import br.edu.modelo.comum.MensagemConstantes;
import br.edu.modelo.exception.ValidationException;

/**
 *
 * @author Roberto Eder
 */
public class CPFValidator implements Validator{

  
    @Override
    public boolean validar(Object objeto) throws ValidationException {
        String msgErro= "";
      String cpf =(String) objeto;
      if (cpf.length() != 11){
          msgErro += MensagemConstantes.MSG_ERR_CPF_VALIDATOR;
      }
      
       if (!"".equals(objeto)){
           throw new ValidationException(msgErro);
       }
      return true;
    
}

}