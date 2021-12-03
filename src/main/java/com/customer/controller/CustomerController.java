package com.customer.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import com.customer.dao.CustomerDao;
import com.customer.pojo.Customer;

public class CustomerController extends HttpServlet {

        Customer customer = new Customer();
        CustomerDao customerDao = new CustomerDao();

        protected void doPost(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
            if(request.getParameter("insertCustomer")!=null)
            {
                String fName = request.getParameter("firstName");
                String lName = request.getParameter("lastName");
                String email = request.getParameter("email");
                long mNum = Long.parseLong(request.getParameter("mbNum"));
                String gender = request.getParameter("gender");
                int age = Integer.parseInt(request.getParameter("age"));
                String address = request.getParameter("address");
                String nationality = request.getParameter("nationality");
                customer.setFirstName(fName);
                customer.setLastName(lName);
                customer.setEmail(email);
                customer.setMobile(mNum);
                customer.setGender(gender);
                customer.setAge(age);
                customer.setAddress(address);
                customer.setNationality(nationality);
                customerDao.saveEmployee(customer);
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
             }

               else if(request.getParameter("displayCustomers") != null)
               {
                   List<Customer> customerList = new ArrayList();
                   customerList = customerDao.showAllEmployees();
                   request.setAttribute("customerList", customerList);
                   RequestDispatcher rd = request.getRequestDispatcher("displayDetails.jsp");
                   rd.forward(request, response);
               }

        }
    }
