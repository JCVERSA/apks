package com.transsion.shorttv.utils;

public abstract class m {
    public static final String a(int i10) {
        Object objValueOf;
        Object objValueOf2;
        int i11 = i10 / 1000;
        int i12 = i11 % 60;
        int i13 = (i11 / 60) % 60;
        int i14 = i11 / 3600;
        if (i14 <= 0) {
            Object objValueOf3 = i13 > 0 ? Integer.valueOf(i13) : "0";
            if (i12 < 10) {
                objValueOf = "0" + i12;
            } else {
                objValueOf = Integer.valueOf(i12);
            }
            return objValueOf3 + ":" + objValueOf;
        }
        if (i12 < 10) {
            objValueOf2 = "0" + i12;
        } else {
            objValueOf2 = Integer.valueOf(i12);
        }
        return i14 + ":" + i13 + ":" + objValueOf2;
    }
}
