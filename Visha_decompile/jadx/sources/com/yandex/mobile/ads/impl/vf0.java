package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.zfb;

public final class vf0 {
    private static final Object a = new Object();
    private static volatile ge0 b;

    public static final ge0 a(Context context) {
        y45.j(context, "context");
        if (b == null) {
            synchronized (a) {
                try {
                    if (b == null) {
                        b = new ge0(context, "com.huawei.hms.location.LocationServices");
                    }
                    zfb zfbVar = zfb.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        ge0 ge0Var = b;
        if (ge0Var != null) {
            return ge0Var;
        }
        throw new IllegalStateException("Required value was null.");
    }
}
