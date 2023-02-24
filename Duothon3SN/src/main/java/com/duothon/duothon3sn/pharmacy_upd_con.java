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
        String pass=request.getParameter("pass");
        String email=request.getParameter("email");
        String license=request.getParameter("license");

        String password = request.getParameter("password");

        //response.sendRedirect("/date_time.jsp");
        String HashedPassword = null;
        // MessageDigest instance for MD5.
        MessageDigest m = null;
        try {
            m = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
        // Add plain-text password bytes to digest using MD5 update() method.
        m.update(password.getBytes());
        // Convert the hash value into bytes
        byte[] bytes = m.digest();
        // The bytes array has bytes in decimal form. Converting it into hexadecimal format.
        StringBuilder s = new StringBuilder();
        for (int i = 0; i < bytes.length; i++) {
            s.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
        }
        // Complete hashed password in hexadecimal format
        HashedPassword = s.toString();


        db_con dbCon=new db_con();

        dbCon.Set_Pharmacy(name,address,city,contactNo,HashedPassword,email,license);

    }
}
