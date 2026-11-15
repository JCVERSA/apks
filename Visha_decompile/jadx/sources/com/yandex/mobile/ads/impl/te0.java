package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.zfb;

public final class te0 {
    private static volatile se0 a;
    private static final Object b = new Object();

    public static final se0 a(Context context) {
        y45.j(context, "context");
        if (a == null) {
            synchronized (b) {
                try {
                    if (a == null) {
                        int i = rs0.b;
                        y45.j(context, "context");
                        a = new se0(rs0.a(context, "YadPreferenceFile"));
                    }
                    zfb zfbVar = zfb.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        se0 se0Var = a;
        if (se0Var != null) {
            return se0Var;
        }
        throw new IllegalArgumentException("Required value was null.");
    }
}
