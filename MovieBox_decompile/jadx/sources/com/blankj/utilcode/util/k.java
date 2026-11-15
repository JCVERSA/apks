package com.blankj.utilcode.util;

import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import java.util.UUID;

public abstract class k {

    private static volatile String f19474a;

    public static String a() {
        String string = Settings.Secure.getString(Utils.a().getContentResolver(), "android_id");
        return ("9774d56d682e549c".equals(string) || string == null) ? "" : string;
    }

    public static String b() {
        String str = Build.MODEL;
        return str != null ? str.trim().replaceAll("\\s*", "") : "";
    }

    private static String c(String str, String str2) {
        if (str2.equals("")) {
            return str + UUID.randomUUID().toString().replace("-", "");
        }
        return str + UUID.nameUUIDFromBytes(str2.getBytes()).toString().replace("-", "");
    }

    public static String d() {
        return e("", true);
    }

    public static String e(String str, boolean z10) {
        if (!z10) {
            return f(str);
        }
        if (f19474a == null) {
            synchronized (k.class) {
                try {
                    if (f19474a == null) {
                        String strD = e0.r().d("KEY_UDID", null);
                        if (strD == null) {
                            return f(str);
                        }
                        f19474a = strD;
                        return f19474a;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f19474a;
    }

    private static String f(String str) {
        try {
            String strA = a();
            if (!TextUtils.isEmpty(strA)) {
                return g(str + 2, strA);
            }
        } catch (Exception unused) {
        }
        return g(str + 9, "");
    }

    private static String g(String str, String str2) {
        f19474a = c(str, str2);
        e0.r().f("KEY_UDID", f19474a);
        return f19474a;
    }
}
