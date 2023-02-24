package com.duothon.duothon3sn;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class db_con {
    Connection conn = null;
    Statement state = null;
    ResultSet result = null;

    // Retrieve Owner Data
    public List<String> Get_Owner()
    {
        List<String> OwnerData = new ArrayList<>();

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
        return false;
    }

    // Set Inventory
    public boolean Set_Inventory()
    {
        return false;
    }

    // Update Inventory
    public boolean Update_Inventory()
    {
        return false;
    }
}
