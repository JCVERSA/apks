package com.bytedance.adsdk.ugeno.yoga;

public enum TEQ {
    UNDEFINED(0),
    EXACTLY(1),
    AT_MOST(2);

    private final int EjP;

    TEQ(int i10) {
        this.EjP = i10;
    }

    public static TEQ Sj(int i10) {
        if (i10 == 0) {
            return UNDEFINED;
        }
        if (i10 == 1) {
            return EXACTLY;
        }
        if (i10 == 2) {
            return AT_MOST;
        }
        throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i10)));
    }
}
