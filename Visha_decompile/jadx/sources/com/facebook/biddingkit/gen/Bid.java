package com.facebook.biddingkit.gen;

public interface Bid {
    String getBidderName();

    String getCurrency();

    String getPayload();

    String getPlacementId();

    double getPrice();
}
