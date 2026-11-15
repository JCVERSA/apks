package com.mgmi.f;

import android.text.TextUtils;

public class d {
    public static String a(String str, int i) {
        String strValueOf;
        try {
            strValueOf = String.valueOf(i);
        } catch (Throwable unused) {
            strValueOf = null;
        }
        TextUtils.isEmpty(strValueOf);
        return str;
    }
}
