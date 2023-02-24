package com.duothon.duothon3sn;

public class owner {
    int phar_id;
    String name;
    String phone;
    String nic;
    String email;
    String address;

    public int get_id(){return phar_id;}
    public String get_name(){return name;}
    public String get_phone(){return phone;}
    public String get_nic(){return nic;}
    public String get_email(){return email;}
    public String get_address(){return address;}

    public void set_id(int id){phar_id = id;}
    public void set_name(String nme){name = nme;}
    public void set_phone(String ph){phone = ph;}
    public void set_nic(String Nic){nic =  Nic;}
    public void set_email(String mail){email =  mail;}
    public void set_address(String addr){address =  addr;}
}
