package com.google.firebase.perf.util;

import android.content.Context;
import android.content.pm.PackageManager;
import okhttp3.HttpUrl;

public class k {

    private static Boolean f31556a;

    public static void a(boolean z10, String str) {
        if (!z10) {
            throw new IllegalArgumentException(str);
        }
    }

    public static boolean b(Context context) {
        Boolean bool = f31556a;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            Boolean boolValueOf = Boolean.valueOf(context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getBoolean("firebase_performance_logcat_enabled", false));
            f31556a = boolValueOf;
            return boolValueOf.booleanValue();
        } catch (PackageManager.NameNotFoundException | NullPointerException e10) {
            uc.a.e().a("No perf logcat meta data found " + e10.getMessage());
            return false;
        }
    }

    public static int c(long j10) {
        if (j10 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j10 < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j10;
    }

    public static String d(String str) {
        HttpUrl httpUrl = HttpUrl.parse(str);
        return httpUrl != null ? httpUrl.newBuilder().username("").password("").query(null).fragment(null).toString() : str;
    }

    public static String e(String str, int i10) {
        int iLastIndexOf;
        if (str.length() <= i10) {
            return str;
        }
        if (str.charAt(i10) == '/') {
            return str.substring(0, i10);
        }
        HttpUrl httpUrl = HttpUrl.parse(str);
        if (httpUrl == null) {
            return str.substring(0, i10);
        }
        return (httpUrl.encodedPath().lastIndexOf(47) < 0 || (iLastIndexOf = str.lastIndexOf(47, i10 + (-1))) < 0) ? str.substring(0, i10) : str.substring(0, iLastIndexOf);
    }
}
