package com.duothon.duothon3sn;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@WebServlet(name = "Spharmacy_upd_con", value = "/Spharmacy_upd_con")
public class pharmacy_upd_con extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name=request.getParameter("name");
        String address=request.getParameter("address");
        String city=request.getParameter("city");
        String contactNo=request.getParameter("contactNo");
        String email=request.getParameter("email");
        String license=request.getParameter("license");

        String oE=request.getParameter("email");


        db_con dbCon=new db_con();

        dbCon.Update_Pharmacy(name,address,city,contactNo,email,license,oE);

    }
}
