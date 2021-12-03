package com.customer.util;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

public class HibernateConnector
{
    private static HibernateConnector hibernateConnector;
    private org.hibernate.cfg.Configuration configuration;
    private SessionFactory sessionFactory;
    public HibernateConnector() throws HibernateException
    {

        configuration = new Configuration().configure();

        ServiceRegistry reg = new ServiceRegistryBuilder().applySettings(configuration.getProperties()).buildServiceRegistry();

        sessionFactory = configuration.buildSessionFactory(reg);
    }

    public static synchronized HibernateConnector getInstance() throws HibernateException
    {
        hibernateConnector = new HibernateConnector();
        return hibernateConnector;
    }

    public  SessionFactory getSession() throws HibernateException
    {
        SessionFactory session = sessionFactory.openSession().getSessionFactory();
        return session;
    }



}
