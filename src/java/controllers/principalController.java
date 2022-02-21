
package controllers;

import models.PersonaBean;
import models.PersonaBeanValidation;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;


public class principalController {
    
    private PersonaBeanValidation personavalidar;

    public principalController() {
        this.personavalidar = new PersonaBeanValidation();
    }
    
    
     @RequestMapping(value = "formJstl.htm", method = RequestMethod.GET)
    public ModelAndView form(){
//        Se instancia el modelo con la vista, el atributo y la clase a pasar.
        return new ModelAndView("views/formJstl", "persona", new PersonaBean());
    }   
    @RequestMapping(value="formJstl.htm", method = RequestMethod.POST)
    public ModelAndView verProducto(
            @ModelAttribute("persona") PersonaBean persona , 
            BindingResult result,
            SessionStatus status
    ){
        this.personavalidar.validate(persona, result);
        if(result.hasErrors()){
            ModelAndView mav = new ModelAndView();
            mav.addObject("persona", new PersonaBean());
            mav.setViewName("views/formJstl");
            return mav;
        }
        else{
            ModelAndView mav = new ModelAndView();
            mav.setViewName("views/mostrarJstl");
            mav.addObject("id", persona.getId());
            mav.addObject("nombre", persona.getNombre());
            mav.addObject("apellido", persona.getApellido());
            mav.addObject("edad", persona.getEdad());
            mav.addObject("correo", persona.getCorreo());
            return mav;
        }
    }
}
