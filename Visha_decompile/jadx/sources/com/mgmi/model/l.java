package com.mgmi.model;

import android.text.TextUtils;

public final class l {
    public static int a(String str) {
        return a(str, 0);
    }

    public static float b(String str) {
        return a(str, 0.0f);
    }

    public static int a(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return i;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i;
        }
    }

    public static float a(String str, float f) {
        if (TextUtils.isEmpty(str)) {
            return f;
        }
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException unused) {
            return f;
        }
    }
}
