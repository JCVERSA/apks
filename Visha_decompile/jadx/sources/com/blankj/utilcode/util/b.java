package com.blankj.utilcode.util;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import androidx.annotation.NonNull;

public abstract class b {
    public static String a = "";

    public static String a() {
        return Utils.a().getPackageName();
    }

    public static int b() {
        return c(Utils.a().getPackageName());
    }

    public static int c(String str) {
        if (h.D(str)) {
            return -1;
        }
        try {
            PackageInfo packageInfo = Utils.a().getPackageManager().getPackageInfo(str, 0);
            if (packageInfo == null) {
                return -1;
            }
            return packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public static String d() {
        try {
            String strE = e(Utils.a().getPackageName());
            a = strE;
            return strE;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String e(String str) {
        if (h.D(str)) {
            return "";
        }
        try {
            PackageInfo packageInfo = Utils.a().getPackageManager().getPackageInfo(str, 0);
            return packageInfo == null ? "" : packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static boolean f() {
        return h.w();
    }

    public static void registerAppStatusChangedListener(@NonNull Utils.c cVar) {
        h.addOnAppStatusChangedListener(cVar);
    }

    public static void unregisterAppStatusChangedListener(@NonNull Utils.c cVar) {
        h.removeOnAppStatusChangedListener(cVar);
    }
}
