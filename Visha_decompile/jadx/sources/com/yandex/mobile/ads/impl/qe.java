package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import defpackage.y45;

public final class qe {
    private final Context a;
    private final j10 b;

    public qe(Context context, j10 j10Var) {
        y45.j(context, "context");
        y45.j(j10Var, "deviceInfoProvider");
        this.a = context;
        this.b = j10Var;
    }

    public final xw a() {
        PackageManager packageManager = this.a.getPackageManager();
        int i = Build.VERSION.SDK_INT;
        PackageInfo packageInfo = i >= 33 ? packageManager.getPackageInfo(this.a.getPackageName(), PackageManager.PackageInfoFlags.of(0L)) : packageManager.getPackageInfo(this.a.getPackageName(), 0);
        this.b.getClass();
        String strB = j10.b();
        if (strB == null) {
            strB = "Undefined";
        }
        String str = "Android " + strB;
        String str2 = "API " + i;
        String str3 = packageInfo.packageName;
        y45.i(str3, "packageName");
        String str4 = packageInfo.versionName;
        y45.i(str4, "versionName");
        return new xw(str3, str4, str, str2);
    }
}
