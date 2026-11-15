package com.yandex.mobile.ads.impl;

import androidx.annotation.VisibleForTesting;
import defpackage.y45;
import defpackage.zfb;

public final class ag {
    private static final Object c = new Object();
    private static ag d;
    public static final int e = 0;
    private final xk1<wd0, us> a;
    private final xd0 b;

    public static final class a {
        public static ag a() {
            if (ag.d == null) {
                synchronized (ag.c) {
                    try {
                        if (ag.d == null) {
                            ag.d = new ag(new xk1(), new xd0());
                        }
                        zfb zfbVar = zfb.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            ag agVar = ag.d;
            if (agVar != null) {
                return agVar;
            }
            throw new IllegalArgumentException("Required value was null.");
        }
    }

    @VisibleForTesting
    public ag(xk1<wd0, us> xk1Var, xd0 xd0Var) {
        y45.j(xk1Var, "preloadingCache");
        y45.j(xd0Var, "cacheParamsMapper");
        this.a = xk1Var;
        this.b = xd0Var;
    }

    public final synchronized boolean c() {
        return this.a.b();
    }

    public final synchronized void a(v7 v7Var, us usVar) {
        y45.j(v7Var, "adRequestData");
        y45.j(usVar, "item");
        xk1<wd0, us> xk1Var = this.a;
        this.b.getClass();
        xk1Var.a(xd0.a(v7Var), usVar);
    }

    public final synchronized us a(v7 v7Var) {
        xk1<wd0, us> xk1Var;
        y45.j(v7Var, "adRequestData");
        xk1Var = this.a;
        this.b.getClass();
        return (us) xk1Var.a(xd0.a(v7Var));
    }
}
