package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class te {
    public static final String a(Context context) {
        y45.j(context, "context");
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (Exception unused) {
            sp0.c(new Object[0]);
            return null;
        }
    }

    public static final String b(Context context) {
        y45.j(context, "context");
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception unused) {
            sp0.c(new Object[0]);
            return null;
        }
    }
}
