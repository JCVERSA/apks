package com.hisavana.mediation.bean;

public class BiddingPriceBean {
    private String payLoad;
    private String placementId;
    private double price;
    private long startTime;

    public String getPayLoad() {
        return this.payLoad;
    }

    public String getPlacementId() {
        return this.placementId;
    }

    public double getPrice() {
        return this.price;
    }

    public long getStartTime() {
        return this.startTime;
    }

    public void setPayLoad(String str) {
        this.payLoad = str;
    }

    public void setPlacementId(String str) {
        this.placementId = str;
    }

    public void setPrice(double d10) {
        this.price = d10;
    }

    public void setStartTime(long j10) {
        this.startTime = j10;
    }
}
