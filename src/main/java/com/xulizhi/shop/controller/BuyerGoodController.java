package com.xulizhi.shop.controller;

import com.xulizhi.shop.service.GoodService;
import com.xulizhi.shop.utils.ResultVOUtil;
import com.xulizhi.shop.vo.BuyerGoodListVO;
import com.xulizhi.shop.vo.ResultVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author lenovo
 */
@Slf4j
@RestController("buyerGood")
public class BuyerGoodController {

    @Autowired
    private GoodService goodService;

    @GetMapping("listBuyerGood")
    public ResultVO<List<BuyerGoodListVO>> listBuyerGood(){
        return ResultVOUtil.success(goodService.listBuyerGood());
    }
}