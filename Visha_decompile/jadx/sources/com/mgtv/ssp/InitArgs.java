package com.mgtv.ssp;

public class InitArgs {
    String cToken;
    String mid;

    public InitArgs(String str, String str2) {
        this.mid = str;
        this.cToken = str2;
    }

    public InitArgs(String str, String str2, String str3) {
        this.mid = str2;
        this.cToken = str3;
    }

    public InitArgs(String str, String str2, String str3, String str4) {
        this.mid = str2;
        this.cToken = str3;
    }
}
