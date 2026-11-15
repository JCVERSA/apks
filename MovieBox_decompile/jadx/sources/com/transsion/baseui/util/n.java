package com.transsion.baseui.util;

import java.text.DecimalFormat;

public abstract class n {
    public static final String a(int i10) {
        return "S" + new DecimalFormat("00").format(Integer.valueOf(i10));
    }

    public static final String b(int i10, int i11, boolean z10) {
        DecimalFormat decimalFormat = new DecimalFormat("00");
        if (i11 <= 0) {
            return (z10 ? "EP" : "Ch") + decimalFormat.format(Integer.valueOf(i10));
        }
        return "S" + decimalFormat.format(Integer.valueOf(i11)) + (z10 ? " EP" : " Ch") + decimalFormat.format(Integer.valueOf(i10));
    }

    public static final String c(int i10, boolean z10) {
        DecimalFormat decimalFormat = new DecimalFormat("00");
        if (i10 < 100) {
            return (z10 ? "EP" : "Ch") + decimalFormat.format(Integer.valueOf(i10));
        }
        int i11 = i10 / 100;
        int i12 = i10 % 100;
        return "S" + decimalFormat.format(Integer.valueOf(i11)) + (z10 ? " EP" : " Ch") + decimalFormat.format(Integer.valueOf(i12));
    }
}
