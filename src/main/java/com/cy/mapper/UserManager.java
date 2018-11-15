package com.cy.mapper;

import com.cy.bean.PhamacyDrug;
import com.cy.bean.PhamacyReceive;
import com.cy.bean.Shopping;
import com.cy.bean.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserManager {
    //查询前端登入
    public User userLogin(User user);
    //查询前端注册
    public int userRegister(User user);

    public User checkName(String name);
//重置密码
  public  int setPassword(User user);


    //添加商品到购物车
    public boolean  addShoppingCar(@Param("userId") int  userId, @Param("pharmacyId") int pharmacyId);

    //查询购物车所有的物品
    public List<PhamacyDrug> selectShoppingCar(int userId);
    //查询购物车多少物品
    public List<Shopping> selectShopingNum(int userId);
    //删除商品到购物车
    public boolean  deleteShoppingCar(int shoppingId);
    //查询药品的价格
    public List<PhamacyDrug> priceShoppingCar(int pharmacyId);

    //查询所有药品的价格
    public List<PhamacyDrug> AllpriceShoppingCar();
    //批量插入销售表
    public int addShoppingList(@Param("receiveList") List<PhamacyReceive> receiveList);

    //删除购物表
    public int deldetShoppingList(@Param("ShoppingList") List<Shopping> ShoppingList);

}
