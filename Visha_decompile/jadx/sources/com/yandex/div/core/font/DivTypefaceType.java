package com.yandex.div.core.font;

import android.graphics.Typeface;
import androidx.annotation.NonNull;
import defpackage.bu2;

public enum DivTypefaceType {
    REGULAR,
    MEDIUM,
    BOLD,
    LIGHT;

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[DivTypefaceType.values().length];
            a = iArr;
            try {
                iArr[DivTypefaceType.BOLD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[DivTypefaceType.MEDIUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[DivTypefaceType.LIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public Typeface getTypeface(@NonNull bu2 bu2Var) {
        int i = a.a[ordinal()];
        if (i == 1) {
            return bu2Var.getBold();
        }
        if (i != 2) {
            return i != 3 ? bu2Var.getRegular() : bu2Var.getLight();
        }
        return bu2Var.getMedium();
    }
}
