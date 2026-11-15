package com.mgtv.data.aphone.core.j;

import android.text.TextUtils;

public class i {
    public static boolean a(Object obj) {
        return obj == null;
    }

    public static String b(String str) {
        return str == null ? "" : str;
    }

    public static boolean a(String str) {
        return TextUtils.isEmpty(str);
    }
}
