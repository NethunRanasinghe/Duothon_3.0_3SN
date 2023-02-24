package com.duothon.duothon3sn;

public class pharmacy
{
    int pid;
    String name;
    String address;
    String City;
    String phone;
    String email;
    String license;


    public int get_id(){return pid;}
    public String get_name(){return name;}
    public String get_phone(){return phone;}
    public String get_nic(){return City;}
    public String get_email(){return email;}
    public String get_address(){return address;}
    public String get_license(){return license;}

    public void set_id(int id){pid = id;}
    public void set_name(String nme){name = nme;}
    public void set_phone(String ph){phone = ph;}

    public void set_email(String mail){email =  mail;}
    public void set_address(String addr){address =  addr;}
    public void set_city(String city){City =  city;}
    public void set_license(String lice){license = lice;}
}
