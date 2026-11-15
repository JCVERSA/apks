package com.hisavana.common.interfacz;

public interface ICacheBidPrice {
    String getCodeSeatId();

    Double getPrice();

    boolean isExpired();
}
