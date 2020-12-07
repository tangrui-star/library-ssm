package com.javapandeng.po;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/*
 * 图书管理栏
 * */

public class ManageBooks implements Serializable {
    /*
    * 主键
    * */
    private Integer bkID;

    /*
    * 类目名称
    * */
    private String bkCode;

    /*
    * 书名
    * */

    private String bkName;

    /*
    * 图书作者
    * */

    private String bkAuthor;
    /*
    * 图书出版社
    * */
    private String bkPress;

    /*
    图书出版时间
    * */
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date bkDatePress;

    /*
    图书出版编号
    * */
    private String bkCatalog;



    /*
    图书的价格
    * */
    private Double bkPrice;

    /*
    图书入库时间
    * */
    private Date bkDateInput;

    /*
    图书简介
    * */
    private String bkBrief;

    /*
    图书在馆信息
    * */
    private String bkStatus;

    public ManageBooks(Integer bkID, String bkCode, String bkName, String bkAuthor, String bkPress, Date bkDatePress, String bkCatalog,  Double bkPrice, Date bkDateInput, String bkBrief, String bkStatus) {
        this.bkID = bkID;
        this.bkCode = bkCode;
        this.bkName = bkName;
        this.bkAuthor = bkAuthor;
        this.bkPress = bkPress;
        this.bkDatePress = bkDatePress;
        this.bkCatalog = bkCatalog;

        this.bkPrice = bkPrice;
        this.bkDateInput = bkDateInput;
        this.bkBrief = bkBrief;
        this.bkStatus = bkStatus;
    }

    public ManageBooks() {
    }

    public Integer getBkID() {
        return bkID;
    }

    public void setBkID(Integer bkID) {
        this.bkID = bkID;
    }

    public String getBkCode() {
        return bkCode;
    }

    public void setBkCode(String bkCode) {
        this.bkCode = bkCode;
    }

    public String getBkName() {
        return bkName;
    }

    public void setBkName(String bkName) {
        this.bkName = bkName;
    }

    public String getBkAuthor() {
        return bkAuthor;
    }

    public void setBkAuthor(String bkAuthor) {
        this.bkAuthor = bkAuthor;
    }

    public String getBkPress() {
        return bkPress;
    }

    public void setBkPress(String bkPress) {
        this.bkPress = bkPress;
    }

    public Date getBkDatePress() {
        return bkDatePress;
    }

    public void setBkDatePress(Date bkDatePress) {
        this.bkDatePress = bkDatePress;
    }

    public String getBkCatalog() {
        return bkCatalog;
    }

    public void setBkCatalog(String bkCatalog) {
        this.bkCatalog = bkCatalog;
    }


    public Double getBkPrice() {
        return bkPrice;
    }

    public void setBkPrice(Double bkPrice) {
        this.bkPrice = bkPrice;
    }

    public Date getBkDateInput() {
        return bkDateInput;
    }

    public void setBkDateInput(Date bkDateInput) {
        this.bkDateInput = bkDateInput;
    }

    public String getBkBrief() {
        return bkBrief;
    }

    public void setBkBrief(String bkBrief) {
        this.bkBrief = bkBrief;
    }

    public String getBkStatus() {
        return bkStatus;
    }

    public void setBkStatus(String bkStatus) {
        this.bkStatus = bkStatus;
    }

    @Override
    public String toString() {
        return "ManageBooks{" +
                "bkID=" + bkID +
                ", bkCode='" + bkCode + '\'' +
                ", bkName='" + bkName + '\'' +
                ", bkAuthor='" + bkAuthor + '\'' +
                ", bkPress='" + bkPress + '\'' +
                ", bkDatePress=" + bkDatePress +
                ", bkCatalog='" + bkCatalog + '\'' +
                ", bkPrice=" + bkPrice +
                ", bkDateInput=" + bkDateInput +
                ", bkBrief='" + bkBrief + '\'' +
                ", bkStatus='" + bkStatus + '\'' +
                '}';
    }
}
