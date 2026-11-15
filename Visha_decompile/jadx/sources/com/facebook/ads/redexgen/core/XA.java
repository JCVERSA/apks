package com.facebook.ads.redexgen.core;

public class XA {
    public static final int[] A00 = new int[XB.values().length];

    static {
        try {
            A00[XB.A03.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
    }
}
