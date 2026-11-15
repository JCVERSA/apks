package com.mgmi.ads.api;

public class AdSize implements com.mgadplus.netlib.json.a {
    public int height;
    public int width;

    public AdSize(int i, int i2) {
        this.width = i;
        this.height = i2;
    }

    public String toString() {
        return "{\"width\":" + this.width + ",\"height\":" + this.height + '}';
    }
}
