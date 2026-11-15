package com.transsion.core.utils;

import android.content.Context;
import android.content.pm.PackageInfo;

public class a {
    public static String a() {
        return yj.a.a().getPackageName();
    }

    public static int b() {
        Context contextA = yj.a.a();
        try {
            PackageInfo packageInfo = contextA.getPackageManager().getPackageInfo(contextA.getPackageName(), 0);
            if (packageInfo != null) {
                return packageInfo.versionCode;
            }
            return -1;
        } catch (Exception e10) {
            e10.printStackTrace();
            return -1;
        }
    }

    public static String c() {
        Context contextA = yj.a.a();
        try {
            PackageInfo packageInfo = contextA.getPackageManager().getPackageInfo(contextA.getPackageName(), 0);
            return packageInfo != null ? packageInfo.versionName : "";
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }
}
