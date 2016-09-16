/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.modelo.exception;

/**
 *
 * @author Roberto Eder
 */
public class ValidationException extends Exception{
    
    public ValidationException(String msg)
    {
        super(msg);
    }
    
    public ValidationException(String msg, Exception e)
    {
         super(msg, e);
    }
    
}
