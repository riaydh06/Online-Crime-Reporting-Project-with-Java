/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

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
public class editProfile implements Controller {

    @Override
    public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
        ModelAndView mv = new ModelAndView("EditProfile");
        if (hsr.getParameter("name").equals("edit")) {
            HttpSession ssn = hsr.getSession();
            
            ArrayList<RegistrationTable> poo =(ArrayList<RegistrationTable>) ssn.getAttribute("data");
            
            
            
           String name = hsr.getParameter("name_box");
           String email = hsr.getParameter("email_box");
           String currentpassword = hsr.getParameter("current_password_box");
           String newpassword = hsr.getParameter("new_password_box");
           String renewpassword = hsr.getParameter("renewpassword_box");
           String mobile = hsr.getParameter("mobile_box");
           String address = hsr.getParameter("address_box");
           
           Session sn = NewHibernateUtil.getSessionFactory().openSession();
            Transaction tx = sn.beginTransaction();
           
            RegistrationTable regT = (RegistrationTable) sn.get(RegistrationTable.class,poo.get(0).getUsername());
            regT.setName(name);
            regT.setEmail(email);
            regT.setPassword(newpassword);
            regT.setMobile(mobile);
            regT.setAddress(address);
            sn.update(regT);
            tx.commit();
            sn.close();
            
            poo.add(0, regT);
            ssn.setAttribute("data", poo);
            
            
            
            ssn.setAttribute("update", "Profile Updated Succesfully");
            return mv;
            
            
        }else if(hsr.getParameter("name").equals("adminedit")){
        
            HttpSession ssn = hsr.getSession();
            
            ArrayList<RegistrationTable> poo =(ArrayList<RegistrationTable>) ssn.getAttribute("data");
            
            
            
           String name = hsr.getParameter("name_box");
           String email = hsr.getParameter("email_box");
           String currentpassword = hsr.getParameter("current_password_box");
           String newpassword = hsr.getParameter("new_password_box");
           String renewpassword = hsr.getParameter("renewpassword_box");
           String mobile = hsr.getParameter("mobile_box");
           String address = hsr.getParameter("address_box");
           
           Session sn = NewHibernateUtil.getSessionFactory().openSession();
            Transaction tx = sn.beginTransaction();
           
            RegistrationTable regT = (RegistrationTable) sn.get(RegistrationTable.class,poo.get(0).getUsername());
            regT.setName(name);
            regT.setEmail(email);
            regT.setPassword(newpassword);
            regT.setMobile(mobile);
            regT.setAddress(address);
            sn.update(regT);
            tx.commit();
            sn.close();
            
            poo.add(0, regT);
            ssn.setAttribute("data", poo);
            
            
            
            ssn.setAttribute("update", "Profile Updated Succesfully");
            return new ModelAndView("Admin");
        
        }
        
        else {
            return mv;
        }

    }

}
