package com.bytedance.sdk.openadsdk.utils;

import android.text.TextUtils;

public class Ym {
    public static void Sj(String str) {
        Sj("any_door_id", str);
    }

    private static String sP(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return com.bytedance.sdk.openadsdk.multipro.EjP.EjP.sP(null, str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }

    public static String Sj() {
        return sP("any_door_id", null);
    }

    private static void Sj(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj((String) null, str, str2);
        } catch (Throwable unused) {
        }
    }
}
