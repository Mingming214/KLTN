package com.TP.IService;

import java.math.BigInteger;
import java.util.List;
import java.util.Map;

import com.TP.DTO.HoaDonDTO;
import com.TP.entity.HoaDon;

public interface IHoaDon {
    List<HoaDonDTO> findAll(int offset, int limit);

    List<HoaDonDTO> findAllByUserId(int userId, int offset, int limit);

    int save(HoaDon hoaDon);

    boolean CheckBillUserDelivered(int massanpham, String tenkhachhang);

    HoaDonDTO findById(int id);

    BigInteger getBillsuccess();

    BigInteger getBillprocessing();

    int getTotalrevenue();

    boolean deleteById(int mahoadon);

    Map<Integer, Double> getMonthlyrevenue();

    Map<String, BigInteger> getProductSellbyCat();
}
