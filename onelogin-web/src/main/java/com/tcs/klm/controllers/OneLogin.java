/**
 * 
 */
package com.tcs.klm.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author Ravi 
 *
 */
@Controller
public class OneLogin {
@RequestMapping("/login")
public ModelAndView firstPage() {  
    return new ModelAndView("login");  
}  
@RequestMapping("/loginValidation")
public ModelAndView loginValidation() {  
	System.out.println("Login Success");
    return new ModelAndView("login");  
}  
}
