package com.yandex.mobile.ads.impl;

import androidx.annotation.VisibleForTesting;
import defpackage.y45;
import defpackage.zfb;

public final class rs1 {
    private static final Object c = new Object();
    private static rs1 d;
    public static final int e = 0;
    private final xk1<wd0, gu> a;
    private final xd0 b;

    public static final class a {
        public static rs1 a() {
            if (rs1.d == null) {
                synchronized (rs1.c) {
                    try {
                        if (rs1.d == null) {
                            rs1.d = new rs1(new xk1(), new xd0());
                        }
                        zfb zfbVar = zfb.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            rs1 rs1Var = rs1.d;
            if (rs1Var != null) {
                return rs1Var;
            }
            throw new IllegalArgumentException("Required value was null.");
        }
    }

    @VisibleForTesting
    public rs1(xk1<wd0, gu> xk1Var, xd0 xd0Var) {
        y45.j(xk1Var, "preloadingCache");
        y45.j(xd0Var, "cacheParamsMapper");
        this.a = xk1Var;
        this.b = xd0Var;
    }

    public final synchronized boolean c() {
        return this.a.b();
    }

    public final synchronized void a(v7 v7Var, gu guVar) {
        y45.j(v7Var, "adRequestData");
        y45.j(guVar, "item");
        xk1<wd0, gu> xk1Var = this.a;
        this.b.getClass();
        xk1Var.a(xd0.a(v7Var), guVar);
    }

    public final synchronized gu a(v7 v7Var) {
        xk1<wd0, gu> xk1Var;
        y45.j(v7Var, "adRequestData");
        xk1Var = this.a;
        this.b.getClass();
        return (gu) xk1Var.a(xd0.a(v7Var));
    }
}
