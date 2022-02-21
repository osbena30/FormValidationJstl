
package models;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;


public class PersonaBeanValidation implements Validator {

    @Override
    public boolean supports(Class<?> type) {
        return PersonaBean.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
      PersonaBean persona = (PersonaBean) o;
      ValidationUtils.rejectIfEmptyOrWhitespace( 
              errors, 
              "nombre",
              "requiered.nombre", 
              "El campo nombre es obligatorio"); 
    
    ValidationUtils.rejectIfEmptyOrWhitespace( errors, "apellido","requiered.apellido", "El campo apellido es obligatorio"); 
    ValidationUtils.rejectIfEmptyOrWhitespace( errors, "correo","requiered.correo", "El campo correo es obligatorio"); 
    ValidationUtils.rejectIfEmptyOrWhitespace( errors, "edad","requiered.edad", "El campo edad es obligatorio"); 
    
    }
}
