package com.yandex.mobile.ads.impl;

import androidx.annotation.VisibleForTesting;
import defpackage.y45;
import defpackage.zfb;

public final class fq0 {
    private static final Object c = new Object();
    private static fq0 d;
    public static final int e = 0;
    private final xk1<wd0, nt> a;
    private final xd0 b;

    public static final class a {
        public static fq0 a() {
            if (fq0.d == null) {
                synchronized (fq0.c) {
                    try {
                        if (fq0.d == null) {
                            fq0.d = new fq0(new xk1(), new xd0());
                        }
                        zfb zfbVar = zfb.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            fq0 fq0Var = fq0.d;
            if (fq0Var != null) {
                return fq0Var;
            }
            throw new IllegalArgumentException("Required value was null.");
        }
    }

    @VisibleForTesting
    public fq0(xk1<wd0, nt> xk1Var, xd0 xd0Var) {
        y45.j(xk1Var, "preloadingCache");
        y45.j(xd0Var, "cacheParamsMapper");
        this.a = xk1Var;
        this.b = xd0Var;
    }

    public final synchronized boolean c() {
        return this.a.b();
    }

    public final synchronized void a(v7 v7Var, nt ntVar) {
        y45.j(v7Var, "adRequestData");
        y45.j(ntVar, "item");
        xk1<wd0, nt> xk1Var = this.a;
        this.b.getClass();
        xk1Var.a(xd0.a(v7Var), ntVar);
    }

    public final synchronized nt a(v7 v7Var) {
        xk1<wd0, nt> xk1Var;
        y45.j(v7Var, "adRequestData");
        xk1Var = this.a;
        this.b.getClass();
        return (nt) xk1Var.a(xd0.a(v7Var));
    }
}
