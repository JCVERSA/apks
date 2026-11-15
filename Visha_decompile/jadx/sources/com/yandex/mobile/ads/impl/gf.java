package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import defpackage.y45;
import defpackage.zfb;

public final class gf {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile aj0 a;

    public static final aj0 a(Context context) {
        y45.j(context, "context");
        if (a == null) {
            synchronized (aj0.h) {
                try {
                    if (a == null) {
                        Context applicationContext = context.getApplicationContext();
                        y45.i(applicationContext, "getApplicationContext(...)");
                        pf pfVarA = ve.a();
                        hf hfVar = new hf();
                        ff ffVar = new ff(new ef(), ve.a());
                        int i = rs0.b;
                        y45.j(applicationContext, "context");
                        a = new aj0(applicationContext, pfVarA, hfVar, ffVar, new nu0(rs0.a(applicationContext, "YadPreferenceFile")));
                    }
                    zfb zfbVar = zfb.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        aj0 aj0Var = a;
        y45.g(aj0Var);
        return aj0Var;
    }
}
