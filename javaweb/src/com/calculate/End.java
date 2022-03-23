package com.calculate;

import com.utils.server.Judge;
import jakarta.servlet.http.HttpSession;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;

public class End extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String count = request.getParameter("count");
        String[] list1 = request.getParameterValues("list1");
        String[] list0 = request.getParameterValues("list0");
        String[] inputs = request.getParameterValues("inputs");

        int m = Integer.parseInt(count);
        int right[] = new int[m];;

        Judge judge = new Judge();

        right = judge.Judge(list1,inputs);

        int[] score = new int[2];
        score[1] = 0;
        for (int i:right
             ) {
            score[1]+=i;
        }
        score[0] = 5*(right.length);
        score[1] = 5*right[1];

        request.setAttribute("inputs",inputs);
        request.setAttribute("score",score);
        request.setAttribute("list0",list0);
        request.setAttribute("list1",list1);
        request.setAttribute("right",right);
        request.setAttribute("count",count);
        request.getRequestDispatcher("/end.jsp").forward(request, response);

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        super.doGet(request, response);
    }

}

