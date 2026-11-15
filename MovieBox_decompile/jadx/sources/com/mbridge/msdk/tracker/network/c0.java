package com.mbridge.msdk.tracker.network;

import android.util.Log;
import java.util.Locale;

public class c0 {

    public static String f37732a = "TrackManager_Volley";

    private static final String f37733b = "com.mbridge.msdk.tracker.network.c0";

    public static void a(Throwable th2, String str, Object... objArr) {
        Log.e(f37732a, a(str, objArr), th2);
    }

    public static void b(String str, Object... objArr) {
        a(str, objArr);
    }

    public static void c(String str, Object... objArr) {
        Log.e(f37732a, a(str, objArr));
    }

    public static void d(String str, Object... objArr) {
    }

    private static String a(String str, Object... objArr) {
        String str2;
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        for (int i10 = 2; i10 < stackTrace.length; i10++) {
            if (!stackTrace[i10].getClassName().equals(f37733b)) {
                String className = stackTrace[i10].getClassName();
                String strSubstring = className.substring(className.lastIndexOf(46) + 1);
                str2 = strSubstring.substring(strSubstring.lastIndexOf(36) + 1) + "." + stackTrace[i10].getMethodName();
                return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
            }
        }
        str2 = "<unknown>";
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
    }
}
