package com.bytedance.adsdk.ugeno.yoga;

public enum uvD {
    NO_WRAP(0, "nowrap"),
    WRAP(1, "wrap"),
    WRAP_REVERSE(2, "wrap_reverse");

    private final int EjP;
    private final String HiB;

    uvD(int i10, String str) {
        this.EjP = i10;
        this.HiB = str;
    }

    public int Sj() {
        return this.EjP;
    }

    public static uvD Sj(int i10) {
        if (i10 == 0) {
            return NO_WRAP;
        }
        if (i10 == 1) {
            return WRAP;
        }
        if (i10 == 2) {
            return WRAP_REVERSE;
        }
        throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i10)));
    }

    public static uvD Sj(String str) {
        str.hashCode();
        switch (str) {
            case "nowrap":
                return NO_WRAP;
            case "wrap":
                return WRAP;
            case "wrap_reverse":
                return WRAP_REVERSE;
            default:
                throw new IllegalArgumentException("Unknown enum value: ".concat(str));
        }
    }
}
