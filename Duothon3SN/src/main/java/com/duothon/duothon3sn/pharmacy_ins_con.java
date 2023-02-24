package com.duothon.duothon3sn;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.PreparedStatement;

@WebServlet(name = "pharmacy_ins_con", value = "/pharmacy_ins_con")
public class pharmacy_ins_con extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name=request.getParameter("name");
        String address=request.getParameter("address");
        String city=request.getParameter("city");
        String contactNo=request.getParameter("contactNo");
        String pass=request.getParameter("pass");
        String email=request.getParameter("email");
        String license=request.getParameter("license");


        db_con dbCon=new db_con();

        dbCon.Set_Pharmacy(name,address,city,contactNo,pass,email,license);



    }
}
