package com.customer.dao;

import com.customer.pojo.Customer;
import com.customer.util.HibernateConnector;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.ArrayList;
import java.util.List;

    public class CustomerDao
    {
        public void saveEmployee(Customer customer)
        {
            Session session = HibernateConnector.getInstance().getSession().openSession();
            Transaction transaction = session.beginTransaction();
            session.save(customer);
            transaction.commit();
            session.close();
        }
        public List<Customer> showAllEmployees() {
            List<Customer> customerList = new ArrayList();
            Session session = HibernateConnector.getInstance().getSession().openSession();
            Query query = session.createQuery("From Customer");
            customerList  = query.list();
            return customerList ;
        }
    }
