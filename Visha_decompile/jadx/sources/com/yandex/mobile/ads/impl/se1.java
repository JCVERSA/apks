package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.zfb;

public final class se1 {
    private static volatile re1 a;
    private static final Object b = new Object();

    public static final re1 a(Context context) {
        y45.j(context, "context");
        if (a == null) {
            synchronized (b) {
                try {
                    if (a == null) {
                        int i = rs0.b;
                        y45.j(context, "context");
                        a = new re1(rs0.a(context, "YadPreferenceFile"));
                    }
                    zfb zfbVar = zfb.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        re1 re1Var = a;
        if (re1Var != null) {
            return re1Var;
        }
        throw new IllegalArgumentException("Required value was null.");
    }
}
