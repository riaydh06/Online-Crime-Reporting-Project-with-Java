/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import hibernate.ComplainTable;
import hibernate.NewHibernateUtil;
import hibernate.RegistrationTable;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

/**
 *
 * @author Rinku
 */
public class registerController implements Controller{

    @Override
    public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
        Transaction tx=null;
        
        ModelAndView mv=new ModelAndView("Complain");
       
        if(hsr.getParameter("name").equals("index")){
            HttpSession ssn=hsr.getSession();
            ssn.setAttribute("msg", "");
            return mv;
        }
        else{
            
           HttpSession ssn=hsr.getSession(); 
           Session session = NewHibernateUtil.getSessionFactory().openSession();
           session.beginTransaction();
           ArrayList<RegistrationTable> username = (ArrayList<RegistrationTable>) ssn.getAttribute("data");
           ComplainTable complain = new ComplainTable(username.get(0).getUsername(),ssn.getAttribute("title_box").toString(),ssn.getAttribute("description_box").toString(),ssn.getAttribute("venue_box").toString(),ssn.getAttribute("imgname").toString(),"Pending");
           session.save(complain);
           session.getTransaction().commit();
           ssn.setAttribute("msg","Submitted");
           if(username.get(0).getUserType().equals("Admin")){
           
               return new ModelAndView("Admin");
           }else{
               return mv;
           
           }
           
           
        
        }
        
        
        
        
        
    }
    
}
