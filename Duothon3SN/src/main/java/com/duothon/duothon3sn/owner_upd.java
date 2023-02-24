package com.duothon.duothon3sn;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "owner_upd", value = "/owner_upd")
public class owner_upd extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name=request.getParameter("name");
        int phId=Integer.parseInt(request.getParameter("phId"));
        String phno=request.getParameter("phno");
        String nic=request.getParameter("nic");
        String email=request.getParameter("email");
        String address=request.getParameter("address");


        db_con dbCon=new db_con();

//        dbCon.Set_Pharmacy(name,phId,phno,nic,email,address);

    }
}
