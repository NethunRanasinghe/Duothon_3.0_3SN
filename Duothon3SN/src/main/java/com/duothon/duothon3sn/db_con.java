package com.duothon.duothon3sn;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

import static java.lang.System.out;

public class db_con {
    Connection conn = null;
    Statement state = null;
    ResultSet result = null;

    // Retrieve Owner Data
    public List<owner>Get_Owner(int id)
    {
        List<owner> OwnerData = new ArrayList<>();

        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/blue_healthcare_db","root","");
            state = conn.createStatement();


            String Query = "SELECT * FROM owner WHERE id=?";
            try
            {
                PreparedStatement que = conn.prepareStatement(Query);
                owner owner = new owner();

                que.setInt(1,id);
                result = que.executeQuery();

                while (result.next())
                {
                    int phar_id = result.getInt("ph_id");
                    String name = result.getString("name");
                    String phone = result.getString("phno");
                    String nic = result.getString("nic");
                    String email = result.getString("email");
                    String address = result.getString("address");

                    owner.set_id(phar_id);
                    owner.set_name(name);
                    owner.set_phone(phone);
                    owner.set_nic(nic);
                    owner.set_email(email);
                    owner.set_address(address);

                    OwnerData.add(owner);
                }
            }
            catch (SQLException e)
            {
                throw new RuntimeException(e);
            }
        }
        catch (Exception e)
        {
            out.print(e);
        }

        return OwnerData;
    }

    // Retrieve Pharmacy Data
    public List<pharmacy> Get_Pharmacy(int pid)
    {
        List<pharmacy> PharmacyData = new ArrayList<>();

        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/blue_healthcare_db","root","");
            state = conn.createStatement();


            String Query = "SELECT * FROM pharmacy WHERE id=?";
            try
            {
                PreparedStatement que = conn.prepareStatement(Query);
                pharmacy pharmacy = new pharmacy();
                que.setInt(1,pid);
                result = que.executeQuery();

                while (result.next())
                {
                    int phar_id = result.getInt("id");
                    String name = result.getString("pname");
                    String address = result.getString("paddress");
                    String pcity = result.getString("pcity");
                    String number = result.getString("pcontactno");
                    String mail = result.getString("email");
                    String lice = result.getString("license");

                    pharmacy.set_id(phar_id);
                    pharmacy.set_name(name);
                    pharmacy.set_address(address);
                    pharmacy.set_city(pcity);
                    pharmacy.set_phone(number);
                    pharmacy.set_email(mail);
                    pharmacy.set_city(pcity);
                    pharmacy.set_license(lice);

                    PharmacyData.add(pharmacy);
                }
            }
            catch (SQLException e)
            {
                throw new RuntimeException(e);
            }
        }
        catch (Exception e)
        {
            out.print(e);
        }

        return PharmacyData;
    }

    // Retrieve Inventory Data
    public List<inventory> Get_Inventory(int phid, String ph_name)
    {
        List<inventory> InventoryData = new ArrayList<>();

        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/blue_healthcare_db","root","");
            state = conn.createStatement();


            String Query = "SELECT * FROM ?_inv WHERE ph_id = ?";
            try
            {
                PreparedStatement que = conn.prepareStatement(Query);
                inventory inventory = new inventory();
                que.setString(1,ph_name);
                que.setInt(2,phid);
                result = que.executeQuery();

                while (result.next())
                {
                    int id = result.getInt("id");
                    int phar_id = result.getInt("ph_id");
                    String pname = result.getString("product_name");
                    int quantity = result.getInt("product_quantity");
                    float unitp = result.getFloat("product_unit_price");
                    String psupp = result.getString("product_supp");
                    String expdate = result.getString("product_exp_date");
                    String ndc = result.getString("product_ndc");
                    String pmanf = result.getString("product_manufacturer");

                    inventory.set_id(id);
                    inventory.set_phar_id(phar_id);
                    inventory.set_pname(pname);
                    inventory.set_quantity(quantity);
                    inventory.set_unitp(unitp);
                    inventory.set_psupp(psupp);
                    inventory.set_expdate(expdate);
                    inventory.set_ndc(ndc);
                    inventory.set_pmanf(pmanf);

                    InventoryData.add(inventory);
                }
            }
            catch (SQLException e)
            {
                throw new RuntimeException(e);
            }
        }
        catch (Exception e)
        {
            out.print(e);
        }

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
    public boolean Set_Inventory(String ph_name, int ph_id, String pname, int pquantity, float unit_price, String supp, String exp_date, String ndc, String manufacturer, String oE)
    {
        String phNm;
        String qry="SELECT pname FROM pharmacy WHERE id=(SELECT ph_id FROM owner WHERE email='"+oE+"')";
        String tbName;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/blue_healthcare_db","root","");
            Statement st = conn.createStatement();
            ResultSet rs=st.executeQuery(qry);
            rs.next();
            tbName=rs.getString("pname");

        }
        catch (SQLException | ClassNotFoundException e)
        {
            throw new RuntimeException(e);
        }
        String Query = "INSERT INTO ?_inv(ph_id,product_name,product_quantity,product_unit_price,product_supp,product_exp_date,product_ndc,product_manufacturer) VALUES(?,?,?,?,?,?,?,?)";

        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/blue_healthcare_db","root","");
            PreparedStatement que = conn.prepareStatement(Query);
            que.setString(1,tbName);
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
        catch (ClassNotFoundException e)
        {
            throw new RuntimeException(e);
        }
        return false;
    }

    // Update Pharmacy
    public boolean Update_Pharmacy(String name,String address,String city, String contactNo,String email,String license,String Oemail)
    {
        String Query = "UPDATE pharmacy SET pname=?,paddress=?,pcity=?,pcontactno=?,pemail=?,plicense=?" +
                       "WHERE id=(SELECT ph_id from owner WHERE email=?)";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/blue_healthcare_db","root","");
            PreparedStatement statement = conn.prepareStatement(Query);
            statement.setString(1,name);
            statement.setString(2,address);
            statement.setString(3,city);
            statement.setString(4,contactNo);
            statement.setString(5,email);
            statement.setString(6,license);
            statement.setString(7,Oemail);

            statement.executeUpdate();
        }

        catch (SQLException e) {
            throw new RuntimeException(e);
        }
        catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } finally {

        }

        return  false;
    }

    public boolean Update_Owner(String name,String phNo,String nic, String email,String address, String Oemail) throws ClassNotFoundException, SQLException {
        String Query = "UPDATE owner SET name=?,phno=?,nic=?,email=?,address=?" +
                "WHERE email=?)";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/blue_healthcare_db","root","");
            PreparedStatement statement = conn.prepareStatement(Query);
            statement.setString(1,name);
            statement.setString(2,phNo);
            statement.setString(3,nic);
            statement.setString(4,email);
            statement.setString(5,email);
            statement.setString(6,address);
            statement.setString(7,Oemail);

            statement.executeUpdate();
        }
        catch (Exception e){
            throw new RuntimeException(e);
        }
        return  false;
    }

    // Update Inventory
    public boolean Update_Inventory()
    {
        String Query = "";
        return false;
    }
}
