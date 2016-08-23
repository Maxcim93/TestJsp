package com.maxim.web;

import com.maxim.model.Registry;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class ScheduleViewServlet extends HttpServlet{
    private final Registry registry = Registry.getInstance();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("schedule", this.registry.getSchedule());
        RequestDispatcher dispatcher = req.getRequestDispatcher("/views/clinic/ScheduleView.jsp");
        dispatcher.forward(req, resp);
    }
}