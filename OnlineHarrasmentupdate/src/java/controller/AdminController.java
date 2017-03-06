/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import hibernate.RegistrationTable;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

/**
 *
 * @author jobayer
 */
public class AdminController implements Controller{

    @Override
    public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
        ModelAndView mv= new ModelAndView("Admin");
        HttpSession ssn= hsr.getSession();
        ArrayList<RegistrationTable> ls=(ArrayList<RegistrationTable>)ssn.getAttribute("data");
        if(ls.get(0).getUserType().equals("Admin")) {
                return mv;
        
        } else {
            mv=new ModelAndView("index");
            return mv;
        }
        
    }
} 
    

