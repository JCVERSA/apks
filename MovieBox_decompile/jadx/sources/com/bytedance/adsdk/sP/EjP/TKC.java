package com.bytedance.adsdk.sP.EjP;

public enum TKC {
    JSON(".json"),
    ZIP(".zip");

    public final String TKC;

    TKC(String str) {
        this.TKC = str;
    }

    public String Sj() {
        return ".temp" + this.TKC;
    }

    @Override
    public String toString() {
        return this.TKC;
    }
}
