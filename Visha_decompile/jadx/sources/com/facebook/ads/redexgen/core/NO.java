package com.facebook.ads.redexgen.core;

public class NO {
    public static final int[] A00 = new int[NC.values().length];

    static {
        try {
            A00[NC.A04.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            A00[NC.A03.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
