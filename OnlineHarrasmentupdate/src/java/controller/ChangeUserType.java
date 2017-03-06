/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import hibernate.NewHibernateUtil;
import hibernate.RegistrationTable;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

/**
 *
 * @author SGR
 */
public class ChangeUserType implements  Controller{

    @Override
    public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
       ModelAndView mv= new ModelAndView("Admin");
       Session sn = NewHibernateUtil.getSessionFactory().openSession();
       Transaction tx= null;
       tx=sn.beginTransaction();
       
        RegistrationTable tb= (RegistrationTable) sn.get(RegistrationTable.class,hsr.getParameter("ref"));
        
        tb.setUserType("Admin");
        sn.update(tb);
        tx.commit();
        sn.close();
       

       return mv;
    
    }
}