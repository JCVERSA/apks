package com.hunantv.imgo.log.c;

import android.text.TextUtils;

public abstract class b {
    protected static boolean a = false;

    public static void a(c cVar) {
        if (a) {
            com.hunantv.imgo.log.b.a(cVar);
        }
    }

    public static void b(String str, String str2, String str3) {
        if (a) {
            com.hunantv.imgo.log.b.a(str, str2, str3);
        }
        com.mgtv.data.aphone.core.i.a.a().a(str2, str3);
    }

    public static void a(String str, String str2, String str3) {
        if (!a || TextUtils.isEmpty(str) || TextUtils.isEmpty(str3)) {
            return;
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = "[UNKNOWN]";
        }
        b(str, str2, str3);
    }
}
