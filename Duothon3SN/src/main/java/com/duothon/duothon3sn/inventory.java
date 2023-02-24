package com.duothon.duothon3sn;

public class inventory
{
    int id ;
    int phar_id ;
    String pname;
    int quantity;
    float unitp;
    String psupp;
    String expdate;
    String ndc;
    String pmanf;

    public int get_id(){return id;}
    public int get_phar_id(){return phar_id;}
    public String get_pname(){return pname;}
    public int get_quantity(){return quantity;}
    public float get_unitp(){return unitp;}
    public String get_psupp(){return psupp;}
    public String get_expdate(){return expdate;}
    public String get_ndc(){return ndc;}
    public String get_pmanf(){return pmanf;}

    public void set_id(int ID){id = ID;}
    public void set_phar_id(int phar_ID){phar_id = phar_ID;}
    public void set_pname(String pName){pname = pName;}
    public void set_quantity(int Quantity){quantity = Quantity;}
    public void set_unitp(float uprice){unitp = uprice;}
    public void set_psupp(String supp){psupp = supp;}
    public void set_expdate(String expDate){expdate = expDate;}
    public void set_ndc(String NDC){ndc = NDC;}
    public void set_pmanf(String manufac){pmanf = manufac;}
}
