/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SessionBean;

import javax.ejb.Stateless;

/**
 *
 * @author Diego
 */
@Stateless
public class calbean implements calbeanLocal {

    @Override
     public double operaciones(double a, double b, char operador){
       if (operador == '+')
           return suma(a, b);
       if (operador == '-')
           return resta(a, b);
       if (operador == '*')
           return multiplicacion(a, b);
       if (operador == '/')
           return division(a, b);
       if (operador == '^')
           return potencia(a, b);
       return 0;
   }
    
   public double suma(double a, double b){
       return a+b;
   }
   
   public double resta(double a, double b){
       return a-b;
   }
   
   public double multiplicacion(double a, double b){
       return a*b;
   }
   
   public double division(double a, double b){
       if(b != 0)
           return a/b;
       return 0;
   }
   
   public double potencia(double a, double b){
       return Math.pow(a, b);
   }

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    
    
}
