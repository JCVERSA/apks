package com.facebook.ads.redexgen.core;

public class VS {
    public static final int[] A00 = new int[VW.values().length];

    static {
        try {
            A00[VW.A02.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            A00[VW.A03.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
