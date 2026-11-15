package com.facebook.ads.redexgen.core;

import java.util.Map;

public final class C1252Sz {
    public double A00;
    public double A01 = System.currentTimeMillis() / 1000.0d;
    public String A02;
    public Map<String, String> A03;

    public C1252Sz(double d, String str, Map<String, String> mData) {
        this.A00 = d;
        this.A02 = str;
        this.A03 = mData;
    }

    public final double A00() {
        return this.A00;
    }

    public final double A01() {
        return this.A01;
    }

    public final String A02() {
        return this.A02;
    }

    public final String A03() {
        return UV.A0A.toString();
    }

    public final Map<String, String> A04() {
        return this.A03;
    }
}
