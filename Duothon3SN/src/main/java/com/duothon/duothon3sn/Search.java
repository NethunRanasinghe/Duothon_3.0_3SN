package com.duothon.duothon3sn;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "Search", value = "/Search")
public class Search extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*
        Search By,
            Med name
            city
            pharmacy name
         */
        String Category = request.getParameter("category");
        StringBuilder querybuilder = new StringBuilder();

        querybuilder.append("SELECT * FROM pharmacy WHERE ");

        if (Category.equals("Medicine"))
        {
            querybuilder.append("");
        }

        else if(Category.equals("City"))
        {
            querybuilder.append("");
        }
        else
        {
            querybuilder.append("");
        }



    }
}
