package com.javapandeng.po;

import java.io.Serializable;

public class Reader implements Serializable {

    /*
    读者ID
    * */
    private Integer rdID;

    /*
    读者Name
    * */
    private String rdName;

    /*
    读者Sex
    * */
    private String rdSex;

    /*
    读者类型
    * */
    private Integer rdType;

    /*
    读者单位或者院系
    * */
    private String rdDept;

    /*
    读者电话号码
    * */
    private String rdPhone;

    /*
    读者Email
    * */
    private String rdEmail;

    /*
    reader BorrowQty 数量
    * */
    private Integer rdBorrowQty;

    /*
    读者登录密码
    * */
    private String rdPwd;


    public Integer getRdID() {
        return rdID;
    }

    public void setRdID(Integer rdID) {
        this.rdID = rdID;
    }

    public String getRdName() {
        return rdName;
    }

    public void setRdName(String rdName) {
        this.rdName = rdName;
    }

    public String getRdSex() {
        return rdSex;
    }

    public void setRdSex(String rdSex) {
        this.rdSex = rdSex;
    }

    public Integer getRdType() {
        return rdType;
    }

    public void setRdType(Integer rdType) {
        this.rdType = rdType;
    }

    public String getRdDept() {
        return rdDept;
    }

    public void setRdDept(String rdDept) {
        this.rdDept = rdDept;
    }

    public String getRdPhone() {
        return rdPhone;
    }

    public void setRdPhone(String rdPhone) {
        this.rdPhone = rdPhone;
    }

    public String getRdEmail() {
        return rdEmail;
    }

    public void setRdEmail(String rdEmail) {
        this.rdEmail = rdEmail;
    }

    public Integer getRdBorrowQty() {
        return rdBorrowQty;
    }

    public void setRdBorrowQty(Integer rdBorrowQty) {
        this.rdBorrowQty = rdBorrowQty;
    }

    public String getRdPwd() {
        return rdPwd;
    }

    public void setRdPwd(String rdPwd) {
        this.rdPwd = rdPwd;
    }

    public Reader() {
    }

    public Reader(Integer rdID, String rdName, String rdSex, Integer rdType, String rdDept, String rdPhone, String rdEmail, Integer rdBorrowQty, String rdPwd) {
        this.rdID = rdID;
        this.rdName = rdName;
        this.rdSex = rdSex;
        this.rdType = rdType;
        this.rdDept = rdDept;
        this.rdPhone = rdPhone;
        this.rdEmail = rdEmail;
        this.rdBorrowQty = rdBorrowQty;
        this.rdPwd = rdPwd;
    }

    @Override
    public String toString() {
        return "Reader{" +
                "rdID=" + rdID +
                ", rdName='" + rdName + '\'' +
                ", rdSex='" + rdSex + '\'' +
                ", rdType=" + rdType +
                ", rdDept='" + rdDept + '\'' +
                ", rdPhone='" + rdPhone + '\'' +
                ", rdEmail='" + rdEmail + '\'' +
                ", rdBorrowQty=" + rdBorrowQty +
                ", rdPwd='" + rdPwd + '\'' +
                '}';
    }
}

