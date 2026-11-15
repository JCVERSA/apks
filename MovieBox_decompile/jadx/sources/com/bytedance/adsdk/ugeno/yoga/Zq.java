package com.bytedance.adsdk.ugeno.yoga;

public enum Zq {
    STATIC(0, "static"),
    RELATIVE(1, "relative"),
    ABSOLUTE(2, "absolute");

    private final int EjP;
    private final String HiB;

    Zq(int i10, String str) {
        this.EjP = i10;
        this.HiB = str;
    }

    public int Sj() {
        return this.EjP;
    }

    public static Zq Sj(int i10) {
        if (i10 == 0) {
            return STATIC;
        }
        if (i10 == 1) {
            return RELATIVE;
        }
        if (i10 == 2) {
            return ABSOLUTE;
        }
        throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i10)));
    }

    public static Zq Sj(String str) {
        str.hashCode();
        switch (str) {
            case "static":
                return STATIC;
            case "relative":
                return RELATIVE;
            case "absolute":
                return ABSOLUTE;
            default:
                throw new IllegalArgumentException("Unknown enum value: ".concat(str));
        }
    }
}
