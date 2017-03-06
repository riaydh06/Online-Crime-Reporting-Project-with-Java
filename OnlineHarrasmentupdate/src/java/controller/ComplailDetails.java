
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


public class ComplailDetails implements Controller{

    @Override
    public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
        ModelAndView mv =new  ModelAndView("ComplainDetails1");
        
        HttpSession ssn = hsr.getSession();
        Session se=NewHibernateUtil.getSessionFactory().openSession();
        ArrayList<RegistrationTable> complainId = (ArrayList<RegistrationTable>)ssn.getAttribute("data");
        ArrayList<ComplainTable> complain=new ArrayList();
        Transaction tx=se.beginTransaction();
        int i=Integer.parseInt(hsr.getParameter("ref"));
        complain=(ArrayList<ComplainTable>) se.createQuery("from ComplainTable where complainId='"+i+"'").list();
        tx.commit();
        se.close();
        ssn.setAttribute("complain", complain);
        
        return mv;
    }
    
}
