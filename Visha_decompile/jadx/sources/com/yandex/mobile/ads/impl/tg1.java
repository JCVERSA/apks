package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class tg1 {
    private final Context a;

    public tg1(Context context) {
        y45.j(context, "context");
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.a = applicationContext;
    }

    public final boolean a() {
        try {
            return this.a.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0;
        } catch (Throwable unused) {
        }
    }

    public final boolean b() {
        try {
            return this.a.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0;
        } catch (Throwable unused) {
        }
    }
}
