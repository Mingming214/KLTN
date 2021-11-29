package com.TP.helper;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;

public class Helper {

    @Autowired
    public static ServletContext context;
    public static int crawlerBy = 1;

    public static String getPathSaveImg() {
        //return "D:\\KLTN\\TPShop\\src\\main\\webapp\\resources\\images\\sanpham\\";
        return "E:\\luan van tot nghiep\\luutrucode\\local\\TPShop\\src\\main\\webapp\\resources\\images\\sanpham";
    }

    public final static int LIMIT_PRODUCT = 100;

}
