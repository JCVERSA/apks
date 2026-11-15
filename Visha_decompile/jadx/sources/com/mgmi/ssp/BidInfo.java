package com.mgmi.ssp;

import java.io.Serializable;

public class BidInfo implements Serializable {
    public static final int BID_FAIL_ERROR = 3;
    public static final int BID_FAIL_FILTER = 1;
    public static final int BID_FAIL_TIMEOUT = 2;
    public static final int BID_SUCCESS = 0;
    private String bidType;
    private String bidWinner;
    private int eCPM;
    private int result = -1;
    private int secondECPM;

    public String getBidType() {
        return this.bidType;
    }

    public String getBidWinner() {
        return this.bidWinner;
    }

    public int getResult() {
        return this.result;
    }

    public int getSecondECPM() {
        return this.secondECPM;
    }

    public int getWinECPM() {
        return this.eCPM;
    }

    public BidInfo setBidType(String str) {
        this.bidType = str;
        return this;
    }

    public BidInfo setBidWinner(String str) {
        this.bidWinner = str;
        return this;
    }

    public BidInfo setResult(int i) {
        this.result = i;
        return this;
    }

    public BidInfo setSecondECPM(int i) {
        this.secondECPM = i;
        return this;
    }

    public BidInfo setWinECMP(int i) {
        this.eCPM = i;
        return this;
    }
}
