package com.stm.shop.admin.service;

import com.stm.shop.entity.GorderAssociation;

import java.util.List;
import java.util.Map;

/**
 * @Author：飞鸿
 * @Description：订单管理服务层
 * @Date：Created on 10:01 2018/12/28.
 * @ModifyBy：
 */
public interface GorderService {

    /**
     * @author 飞鸿
     * @Description 查询订单信息
     * @Date 11:28 2018/12/28
     * @MethodName findOrderList
     * @param state
     * @return java.util.List<com.stm.shop.entity.GorderAssociation>
     **/
    List<GorderAssociation> findOrderList(Integer state);

    /**
     * @author 飞鸿
     * @Description 获取软删除的订单列表
     * @Date 13:24 2018/12/28
     * @MethodName getSoftDeleteList
     * @param
     * @return java.util.List<com.stm.shop.entity.GorderAssociation>
     **/
    List<GorderAssociation> getSoftDeleteList();

    /**
     * @author 飞鸿
     * @Description 修改订单状态
     * @Date 13:57 2018/12/28
     * @MethodName orderChangeState
     * @param gorderId
     * @param state
     * @return java.lang.Integer
     **/
    Integer orderChangeState(Integer gorderId, Integer state);

    /**
    * @author 飞鸿
    * @Description 获取当天的交易额（priceSum），订单数（orderCount），商品数（goodsSum）
    * @Date 2:35 2018/12/29
    * @MethodName getToDayOrderInfo
    * @param
    * @return java.util.Map<java.lang.String,java.lang.Object>
    **/
    Map<String,Object> getToDayOrderInfo();

    /**
    * @author 飞鸿
    * @Description 获取所有完成的交易额（historyPriceSum），订单数（historyOrderCount），商品数（historyGoodsSum）
    * @Date 2:38 2018/12/29
    * @MethodName getHistoryOrderInfo
    * @param
    * @return java.util.Map<java.lang.String,java.lang.Object>
    **/
    Map<String,Object> getHistoryOrderInfo();

    /**
     * @author 飞鸿
     * @Description 根据状态统计近七天的交易情况
     * @Date 18:45 2019/1/7
     * @MethodName getOrderCountByDay
     * @param state
     * @return java.util.List<java.util.Map<java.lang.String,java.lang.Object>>
     **/
    List<Map<String,Object>> getOrderCountByDay(Integer state);
}
