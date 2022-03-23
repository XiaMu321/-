package com.calculate;

import com.utils.server.CreateFraction;
import com.utils.server.CreateInteger;
import com.utils.server.Createno;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

public class Start extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        ArrayList<String> list0 = new ArrayList<String>();
        ArrayList<String> list1 = new ArrayList<String>();
        String[] list = new String[1];

        CreateFraction createFraction = new CreateFraction();
        CreateInteger createInteger = new CreateInteger();
        Createno createno = new Createno();

        String Count = request.getParameter("Count");
        String Range = request.getParameter("Range");
        String Difficulty = request.getParameter("Difficulty");
        int count = Integer.parseInt(Count);
        int range = Integer.parseInt(Range);

        switch (Difficulty){
            case "createFraction":
            {
                for(int i=0; i< count; i++){
                    list = createFraction.createProblem(range);
                    list0.add(list[0]);
                    list1.add(list[1]);
                }
            }
            break;
            case "createInteger":
            {
                for(int i=0; i< count; i++){
                    list = createInteger.createProblem(range);
                    list0.add(list[0]);
                    list1.add(list[1]);
                }
            }
            break;
            case "createno":
            {
                for(int i=0; i< count; i++){
                    list = createno.createProblem(range);
                    list0.add(list[0]);
                    list1.add(list[1]);
                }
            }
            break;
        }
        request.setAttribute("count",count);
        request.setAttribute("list",list);
        request.setAttribute("list0",list0);
        request.setAttribute("list1",list1);
        request.getRequestDispatcher("/start.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        super.doGet(request, response);
    }

}
