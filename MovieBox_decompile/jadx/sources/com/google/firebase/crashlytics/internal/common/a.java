package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import java.util.List;

public class a {

    public final String f30312a;

    public final String f30313b;

    public final List f30314c;

    public final String f30315d;

    public final String f30316e;

    public final String f30317f;

    public final String f30318g;

    public final qb.f f30319h;

    public a(String str, String str2, List list, String str3, String str4, String str5, String str6, qb.f fVar) {
        this.f30312a = str;
        this.f30313b = str2;
        this.f30314c = list;
        this.f30315d = str3;
        this.f30316e = str4;
        this.f30317f = str5;
        this.f30318g = str6;
        this.f30319h = fVar;
    }

    public static a a(Context context, g0 g0Var, String str, String str2, List list, qb.f fVar) throws PackageManager.NameNotFoundException {
        String packageName = context.getPackageName();
        String strG = g0Var.g();
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
        String strB = b(packageInfo);
        String str3 = packageInfo.versionName;
        if (str3 == null) {
            str3 = "0.0";
        }
        return new a(str, str2, list, strG, packageName, strB, str3, fVar);
    }

    private static String b(PackageInfo packageInfo) {
        return Build.VERSION.SDK_INT >= 28 ? Long.toString(packageInfo.getLongVersionCode()) : Integer.toString(packageInfo.versionCode);
    }
}
