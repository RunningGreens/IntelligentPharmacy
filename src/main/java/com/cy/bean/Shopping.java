package com.cy.bean;

import org.springframework.stereotype.Service;

@Service
public class Shopping {
    private int shoppingId;//购物车Id
    private int userId;//前台用户Id
    private int pharmacyId;//药品Id
    private int shoppingState;//购物车状态
    private int shoppingNum;//购物数量
    private int allNum;//所有的数量

    public Shopping() {
    }

    public int getShoppingId() {
        return shoppingId;
    }

    public void setShoppingId(int shoppingId) {
        this.shoppingId = shoppingId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getPharmacyId() {
        return pharmacyId;
    }

    public void setPharmacyId(int pharmacyId) {
        this.pharmacyId = pharmacyId;
    }

    public int getShoppingState() {
        return shoppingState;
    }

    public void setShoppingState(int shoppingState) {
        this.shoppingState = shoppingState;
    }

    public int getShoppingNum() {
        return shoppingNum;
    }

    public void setShoppingNum(int shoppingNum) {
        this.shoppingNum = shoppingNum;
    }

    public int getAllNum() {
        return allNum;
    }

    public void setAllNum(int allNum) {
        this.allNum = allNum;
    }

    public Shopping(int shoppingId, int userId, int pharmacyId, int shoppingState, int shoppingNum, int allNum) {
        this.shoppingId = shoppingId;
        this.userId = userId;
        this.pharmacyId = pharmacyId;
        this.shoppingState = shoppingState;
        this.shoppingNum = shoppingNum;
        this.allNum = allNum;
    }

    public Shopping(int shoppingId, int userId, int pharmacyId, int shoppingState, int shoppingNum) {
        this.shoppingId = shoppingId;
        this.userId = userId;
        this.pharmacyId = pharmacyId;
        this.shoppingState = shoppingState;
        this.shoppingNum = shoppingNum;


    }
}
