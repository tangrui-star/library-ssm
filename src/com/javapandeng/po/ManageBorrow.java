package com.javapandeng.po;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class ManageBorrow implements Serializable {
    /*
    借书ID
    * */
    private Integer borrowID;

    /*
    * 读者ID
    * */
    private Integer rdID;

    /*
    * 图书ID
    * */
    private Integer bkID;

    /*
    * 续借次数
    * */
    private Integer ldContinueTimes;

    /*
    借书日期
    * */
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date ldDateOut;

    /*
    * 应该还书时间
    * */
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date ldDateRetPlan;

    /*
    * 实际还书时间
    * */
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date ldDateRetAct;

    /*
    * 超期天数
    * */
    private Integer ldOverDay;

    /*
    * 应该罚款金额
    * */
    private Double ldOverMoney;

    /*
    * 罚款金额
    * */
    private Double ldPunishMoney;

    /*
    * 是否还书
    * 未还——1
    * 已还——0
    *  */
    private Integer lsHasReturn;




    public Integer getBorrowID() {
        return borrowID;
    }

    public void setBorrowID(Integer borrowID) {
        this.borrowID = borrowID;
    }

    public Integer getRdID() {
        return rdID;
    }

    public void setRdID(Integer rdID) {
        this.rdID = rdID;
    }

    public Integer getBkID() {
        return bkID;
    }

    public void setBkID(Integer bkID) {
        this.bkID = bkID;
    }

    public Integer getLdContinueTimes() {
        return ldContinueTimes;
    }

    public void setLdContinueTimes(Integer ldContinueTimes) {
        this.ldContinueTimes = ldContinueTimes;
    }

    public Date getLdDateOut() {
        return ldDateOut;
    }

    public void setLdDateOut(Date ldDateOut) {
        this.ldDateOut = ldDateOut;
    }

    public Date getLdDateRetPlan() {
        return ldDateRetPlan;
    }

    public void setLdDateRetPlan(Date ldDateRetPlan) {
        this.ldDateRetPlan = ldDateRetPlan;
    }

    public Date getLdDateRetAct() {
        return ldDateRetAct;
    }

    public void setLdDateRetAct(Date ldDateRetAct) {
        this.ldDateRetAct = ldDateRetAct;
    }

    public Integer getLdOverDay() {
        return ldOverDay;
    }

    public void setLdOverDay(Integer ldOverDay) {
        this.ldOverDay = ldOverDay;
    }

    public Double getLdOverMoney() {
        return ldOverMoney;
    }

    public void setLdOverMoney(Double ldOverMoney) {
        this.ldOverMoney = ldOverMoney;
    }

    public Double getLdPunishMoney() {
        return ldPunishMoney;
    }

    public void setLdPunishMoney(Double ldPunishMoney) {
        this.ldPunishMoney = ldPunishMoney;
    }

    public Integer getLsHasReturn() {
        return lsHasReturn;
    }

    public void setLsHasReturn(Integer lsHasReturn) {
        this.lsHasReturn = lsHasReturn;
    }


    public ManageBorrow() {
    }

    public ManageBorrow(Integer borrowID, Integer rdID, Integer bkID, Integer ldContinueTimes, Date ldDateOut, Date ldDateRetPlan, Date ldDateRetAct, Integer ldOverDay, Double ldOverMoney, Double ldPunishMoney, Integer lsHasReturn) {
        this.borrowID = borrowID;
        this.rdID = rdID;
        this.bkID = bkID;
        this.ldContinueTimes = ldContinueTimes;
        this.ldDateOut = ldDateOut;
        this.ldDateRetPlan = ldDateRetPlan;
        this.ldDateRetAct = ldDateRetAct;
        this.ldOverDay = ldOverDay;
        this.ldOverMoney = ldOverMoney;
        this.ldPunishMoney = ldPunishMoney;
        this.lsHasReturn = lsHasReturn;
    }

    @Override
    public String toString() {
        return "ManageBorrow{" +
                "BorrowID=" + borrowID +
                ", rdID=" + rdID +
                ", bkID=" + bkID +
                ", ldContinueTimes=" + ldContinueTimes +
                ", ldDateOut=" + ldDateOut +
                ", ldDateRetPlan=" + ldDateRetPlan +
                ", ldDateRetAct=" + ldDateRetAct +
                ", ldOverDay=" + ldOverDay +
                ", ldOverMoney=" + ldOverMoney +
                ", ldPunishMoney=" + ldPunishMoney +
                ", lsHasReturn=" + lsHasReturn +
                '}';
    }


}
