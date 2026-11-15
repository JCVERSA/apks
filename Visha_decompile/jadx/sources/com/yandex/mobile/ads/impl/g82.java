package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.zfb;

public final class g82 {
    private static volatile boolean a;
    private static final Object b = new Object();
    public static final int c = 0;

    private g82() {
    }

    public static void a(Context context, sp1 sp1Var) {
        y42 y42Var = new y42();
        y45.j(context, "context");
        y45.j(sp1Var, "reporter");
        y45.j(y42Var, "threadUtils");
        if (a) {
            return;
        }
        synchronized (b) {
            try {
                if (!a) {
                    int i = pw1.l;
                    ju1 ju1VarA = pw1.a.a().a(context);
                    if (ju1VarA != null && ju1VarA.r()) {
                        f82 f82Var = new f82(sp1Var, Thread.getDefaultUncaughtExceptionHandler(), ju1VarA);
                        y45.j(f82Var, "handler");
                        Thread.setDefaultUncaughtExceptionHandler(f82Var);
                        a = true;
                    }
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
