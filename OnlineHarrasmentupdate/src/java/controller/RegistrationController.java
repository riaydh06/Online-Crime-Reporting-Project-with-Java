/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import hibernate.ComplainTable;
import hibernate.NewHibernateUtil;
import hibernate.RegistrationTable;
import javax.servlet.RequestDispatcher;
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
public class RegistrationController implements Controller{

    @Override
    public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
        Transaction tx=null;
        
        ModelAndView mv=new ModelAndView("Register");
        HttpSession registerSSn=hsr.getSession();
        if(hsr.getParameter("name").equals("index")){
            
            registerSSn.setAttribute("regmsg", "");
            return new ModelAndView("index");
        }else if(hsr.getParameter("name").equals("Contact")){
            
            registerSSn.setAttribute("regmsg", "");
            return new ModelAndView("Contact");
        }else if(hsr.getParameter("name").equals("Register")){
            
            registerSSn.setAttribute("regmsg", "");
            return new ModelAndView("Register");
        }
        else{
            
            HttpSession regsSession=hsr.getSession();
            String name = hsr.getParameter("name_box");
           String username = hsr.getParameter("username_box");
           String email = hsr.getParameter("email_box");
           String password = hsr.getParameter("password_box");
           String repassword = hsr.getParameter("repassword_box");
           String mobile = hsr.getParameter("mobile_box");
           String address = hsr.getParameter("address_box");
           if(!password.equals(repassword))
           {
               regsSession.setAttribute("regmsg", "Password mismatch");
               return mv;
           }
           else{
           Session session = NewHibernateUtil.getSessionFactory().openSession();
           session.beginTransaction();
           RegistrationTable reg = new RegistrationTable(username,name,email,password,repassword,mobile,address,"General");
           session.save(reg);
           session.getTransaction().commit();
           registerSSn.setAttribute("regmsg","Registration Successful");
            mv= new ModelAndView("index");
           
            return mv;
           }
        }
        
    }
    
}
