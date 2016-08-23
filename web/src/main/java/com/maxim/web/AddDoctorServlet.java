package com.maxim.web;

import com.maxim.model.Doctor;
import com.maxim.model.Registry;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Максим on 23.08.2016.
 */
public class AddDoctorServlet extends HttpServlet{
        private final Registry registry = Registry.getInstance();
        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp)
                throws ServletException, IOException {
            RequestDispatcher dispatcher = req.getRequestDispatcher("/views/clinic/AddUser.jsp");
            dispatcher.forward(req, resp);
        }

        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            registry.addDoctor(new Doctor(req.getParameter("name"),
                    Doctor.Specialization.valueOf(req.getParameter("specialization"))));
            resp.sendRedirect(String.format("%s%s", req.getContextPath(), "/clinic/schedule"));
        }
}