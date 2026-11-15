package com.bytedance.adsdk.Sj.Sj;

public class Sj extends RuntimeException {
    public Sj(String str, String str2) {
        super(str + ",problem area:" + str2);
    }
}
