package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import defpackage.y45;

public final class i1 {
    private static final String b;
    private static final String c;
    private final a1 a = new a1();

    static {
        String str = "com.yandex.mobile.ads.common.AdActivity";
        b = str;
        c = "There is no presence of " + str + " activity in AndroidManifest file.";
    }

    @SuppressLint({"WrongConstant"})
    public final void a(Context context) throws bp0 {
        y45.j(context, "context");
        try {
            ActivityInfo activityInfo = context.getPackageManager().getActivityInfo(new ComponentName(context.getPackageName(), b), 0);
            y45.i(activityInfo, "getActivityInfo(...)");
            this.a.getClass();
            a1.a(activityInfo);
        } catch (PackageManager.NameNotFoundException unused) {
            String str = c;
            throw new bp0(str, str);
        }
    }
}
