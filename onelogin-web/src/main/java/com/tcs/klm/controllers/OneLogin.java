/**
 * 
 */
package com.tcs.klm.controllers;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tcs.klm.domain.Applications;
import com.tcs.klm.domain.UserLogin;

/**
 * @author Ravi 
 *
 */
@Controller
public class OneLogin {
@RequestMapping("/")
public ModelAndView firstPage() {  
	UserLogin credentials = new UserLogin();
    return new ModelAndView("login","credentials",credentials);  
}  
@RequestMapping(value="/loginValidation",method = RequestMethod.POST)
public ModelAndView loginValidation(@ModelAttribute("credentials")UserLogin credentials) {  
	Applications application = new Applications();
	ArrayList<Applications> applications = new ArrayList();
	for(int i=0;i<10;i++){
		application.setApplicationName("WebPearl");
		applications.add(application);
	}
	return new ModelAndView("applications","applications",applications);
}  
@RequestMapping(value="getdetails", method=RequestMethod.GET){
	
}
}
