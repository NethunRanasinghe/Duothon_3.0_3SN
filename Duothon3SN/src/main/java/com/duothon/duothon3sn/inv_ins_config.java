package com.duothon.duothon3sn;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "inv_ins_config", value = "/inv_ins_config")
public class inv_ins_config extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String pName=request.getParameter("pName");
        String phName=request.getParameter("phName");

        int quantity=Integer.parseInt(request.getParameter("quantity"));
        int id=Integer.parseInt(request.getParameter("id"));
        float price=Float.parseFloat(request.getParameter("price"));
        String supplier=request.getParameter("supplier");
        String expDate=request.getParameter("expdate");
        String ndl=request.getParameter("ndl");
        String manufac=request.getParameter("manufac");


        db_con dbCon=new db_con();

//        dbCon.Set_Inventory(name,quantity,price,supplier,expDate,ndl,manufac);
    }
}
