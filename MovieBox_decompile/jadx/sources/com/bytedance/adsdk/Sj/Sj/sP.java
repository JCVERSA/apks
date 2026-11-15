package com.bytedance.adsdk.Sj.Sj;

public class sP extends RuntimeException {
    public sP(String str, Throwable th2) {
        super("Unable to parse expression:".concat(String.valueOf(str)), th2);
    }
}
