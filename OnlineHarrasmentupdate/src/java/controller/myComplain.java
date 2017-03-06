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
public class myComplain implements Controller{

    @Override
    public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
        ModelAndView mv = new ModelAndView("MyComplain");        
        HttpSession ssn = hsr.getSession();
       
        Session se=NewHibernateUtil.getSessionFactory().openSession();
        ArrayList<RegistrationTable> username = (ArrayList<RegistrationTable>)ssn.getAttribute("data");
            ArrayList<ComplainTable> complain=new ArrayList();
            Transaction tx=se.beginTransaction();
            complain=(ArrayList<ComplainTable>) se.createQuery("from ComplainTable where username='"+username.get(0).getUsername()+"'").list();
            tx.commit();
            se.close();
            ssn.setAttribute("complain", complain);
        
        return mv;
    }
    
}
