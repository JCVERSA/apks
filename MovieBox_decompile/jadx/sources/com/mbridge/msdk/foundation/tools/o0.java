package com.mbridge.msdk.foundation.tools;

import android.text.TextUtils;
import android.util.Log;
import com.mbridge.msdk.MBridgeConstans;

public class o0 {

    public static boolean f34941a = true;

    public static boolean f34942b = true;

    public static boolean f34943c = true;

    public static boolean f34944d = false;

    public static boolean f34945e = true;

    public static boolean f34946f = false;

    public static boolean f34947g = true;

    public static boolean f34948h = true;

    static {
        if (MBridgeConstans.DEBUG) {
            return;
        }
        f34947g = false;
        f34941a = false;
        f34943c = false;
        f34948h = false;
        f34942b = false;
        f34946f = false;
        f34945e = false;
        f34944d = false;
    }

    public static void a(String str, String str2) {
        if (!f34941a || TextUtils.isEmpty(str2)) {
            return;
        }
        a(str);
    }

    public static void b(String str, String str2) {
        if (!f34942b || str2 == null) {
            return;
        }
        Log.e(a(str), str2);
    }

    public static void c(String str, String str2) {
        if (!f34943c || TextUtils.isEmpty(str2)) {
            return;
        }
        a(str);
    }

    public static void d(String str, String str2) {
        if (!f34948h || TextUtils.isEmpty(str2)) {
            return;
        }
        Log.w(a(str), str2);
    }

    public static void b(String str, String str2, Throwable th2) {
        if (!f34942b || str2 == null || th2 == null) {
            return;
        }
        Log.e(a(str), str2, th2);
    }

    private static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        return "MBRIDGE_" + str;
    }

    public static void c(String str, String str2, Throwable th2) {
        if (!f34948h || TextUtils.isEmpty(str2)) {
            return;
        }
        Log.w(a(str), str2, th2);
    }

    public static void a(String str, String str2, Throwable th2) {
        if (!f34941a || TextUtils.isEmpty(str2)) {
            return;
        }
        a(str);
    }

    public static void a(String str, Throwable th2) {
        if (!f34948h || th2 == null) {
            return;
        }
        Log.w(a(str), th2);
    }
}
