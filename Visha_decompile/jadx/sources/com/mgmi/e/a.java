package com.mgmi.e;

import java.io.Serializable;

public class a implements Serializable {
    public static final int BIDFAIL_ERROR = 3;
    public static final int BIDFAIL_FILTER = 1;
    public static final int BIDFAIL_TIMEOUT = 2;
    public static final int BIDSUCCESS = 0;
    private int result = -1;
    private String eCPM = "";
    private String secondECPM = "";
    private String bidType = "";
    private String bidWinner = "";

    public String getBidType() {
        return this.bidType;
    }

    public String getBidWinner() {
        return this.bidWinner;
    }

    public int getResult() {
        return this.result;
    }

    public String getSecondECPM() {
        return this.secondECPM;
    }

    public String getWinECPM() {
        return this.eCPM;
    }

    public a setBidType(String str) {
        this.bidType = str;
        return this;
    }

    public a setBidWinner(String str) {
        this.bidWinner = str;
        return this;
    }

    public a setResult(int i) {
        this.result = i;
        return this;
    }

    public a setSecondECPM(String str) {
        this.secondECPM = str;
        return this;
    }

    public a setWinECPM(String str) {
        this.eCPM = str;
        return this;
    }
}
