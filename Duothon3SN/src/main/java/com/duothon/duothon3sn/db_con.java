package com.duothon.duothon3sn;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static java.lang.System.out;

public class db_con {
    Connection conn = null;
    Statement state = null;
    ResultSet result = null;

    // Retrieve Owner Data
    public List<String> Get_Owner()
    {
        List<String> OwnerData = new ArrayList<>();

        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/testmdb","root","");
            state = conn.createStatement();

            String Query = "";

            result = state.executeQuery(Query);

            while (result.next())
            {



            }
        }
        catch (Exception e)
        {
            out.print(e);
        }
        //Pass

        return OwnerData;
    }

    // Retrieve Pharmacy Data
    public List<String> Get_Pharmacy()
    {
        List<String> PharmacyData = new ArrayList<>();

        //Pass

        return PharmacyData;
    }

    // Retrieve Inventory Data
    public List<String> Get_Inventory()
    {
        List<String> InventoryData = new ArrayList<>();

        //Pass

        return InventoryData;
    }

    // Set Owner Data
    public boolean Set_Owner()
    {
        return false;
    }

    // Set pharmacy Data
    public boolean Set_Pharmacy(String name, String address, String city, String contact, String pass, String email, String license)
    {
        String Query = "INSERT INTO pharmacy(pname,paddress,pcity,pcontactno,pass,email,license,approval) VALUES(?,?,?,?,?,?,?,?)";

        try
        {
            PreparedStatement que = conn.prepareStatement(Query);

            que.setString(1,name);
            que.setString(2,address);
            que.setString(3,city);
            que.setString(4,contact);
            que.setString(5,pass);
            que.setString(6,email);
            que.setString(7,license);
            que.setBoolean(8,false);
        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }

        return false;
    }

    // Set Inventory
    public boolean Set_Inventory(String ph_name, int ph_id, String pname, int pquantity, float unit_price, String supp, String exp_date, String ndc, String manufacturer)
    {
        String Query = "INSERT INTO ?_inv(ph_id,product_name,product_quantity,product_unit_price,product_supp,product_exp_date,product_ndc,product_manufacturer) VALUES(?,?,?,?,?,?,?,?)";

        try
        {
            PreparedStatement que = conn.prepareStatement(Query);
            que.setString(1,ph_name);
            que.setInt(2,ph_id);
            que.setString(3,pname);
            que.setInt(4,pquantity);
            que.setFloat(5,unit_price);
            que.setString(6,supp);
            que.setString(7,exp_date);
            que.setString(8,ndc);
            que.setString(9,manufacturer);

        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }
        return false;
    }

    // Update Pharmacy
    public boolean Update_Pharmacy()
    {
        String Query = "";
        return  false;
    }

    // Update Inventory
    public boolean Update_Inventory()
    {
        String Query = "";
        return false;
    }
}
