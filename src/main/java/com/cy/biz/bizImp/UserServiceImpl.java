package com.cy.biz.bizImp;

import com.cy.bean.PhamacyDrug;
import com.cy.bean.PhamacyReceive;
import com.cy.bean.Shopping;
import com.cy.bean.User;
import com.cy.biz.UserService;

import com.cy.mapper.UserManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    
    @Autowired
    private UserManager userManager;
 
    @Override
    public User userLogin(User user) {
      User userResult = userManager.userLogin(user);
        return userResult;
    }

    @Override
    public int userRegister(User user) {
        int result =userManager.userRegister(user);
        return result;
    }
    @Override
    public User checkName(String name) {
        User adminResult =userManager.checkName(name);
        return adminResult;
    }

    @Override
    public int setPassword(User user) {
        int result=userManager.setPassword(user);
        return result;
    }

    //添加到购物车
    @Override
    public boolean addShoppingCar(int userId, int pharmacyId){
        boolean b = userManager.addShoppingCar(userId,pharmacyId);
        return  b;
    }

    @Override
    public List<PhamacyDrug> selectShoppingCar(int userId) {
        List<PhamacyDrug> selectShoppingCar= userManager.selectShoppingCar(userId);
        return selectShoppingCar;
    }

    @Override
    public List<Shopping> selectShopingNum(int userId) {
        List<Shopping> selectShopingNum= userManager.selectShopingNum(userId);
        return selectShopingNum;
    }

    @Override
    public boolean deleteShoppingCar(int shoppingId) {
        boolean b = userManager.deleteShoppingCar(shoppingId);

        return b;
    }

    @Override
    public List<PhamacyDrug> priceShoppingCar(int pharmacyId) {
        List<PhamacyDrug> selectShopingNum= userManager.priceShoppingCar(pharmacyId);
        return selectShopingNum;
    }

    @Override
    public List<PhamacyDrug> AllpriceShoppingCar() {
        List<PhamacyDrug> selectShopingNum= userManager.AllpriceShoppingCar();
        return selectShopingNum;
    }

    @Override
    public int addShoppingList(List<PhamacyReceive> receiveList) {
        int result =  userManager.addShoppingList(receiveList);
        return result;
    }

    @Override
    public int deldetShoppingList(List<Shopping> ShoppingList) {
        int result =  userManager.deldetShoppingList(ShoppingList);
        return result;
    }

    @Override
    public boolean allAddDelShoppingList(List<PhamacyReceive> receiveList, List<Shopping> ShoppingList) {
        userManager.addShoppingList(receiveList);
        userManager.deldetShoppingList(ShoppingList);
        return true;
    }

}
