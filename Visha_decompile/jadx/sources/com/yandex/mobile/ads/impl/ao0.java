package com.yandex.mobile.ads.impl;

import defpackage.ye9;
import defpackage.zfb;
import java.util.Set;

public final class ao0 {
    private static final Object e = new Object();
    private static volatile ao0 f;
    public static final int g = 0;
    private boolean a;
    private boolean b;
    private boolean c;
    private Set<String> d;

    public static final class a {
        public static ao0 a() {
            if (ao0.f == null) {
                synchronized (ao0.e) {
                    try {
                        if (ao0.f == null) {
                            ao0.f = new ao0(0);
                        }
                        zfb zfbVar = zfb.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            ao0 ao0Var = ao0.f;
            if (ao0Var != null) {
                return ao0Var;
            }
            throw new IllegalArgumentException("Required value was null.");
        }
    }

    private ao0() {
        this.a = true;
        this.b = true;
        this.c = true;
        this.d = ye9.f();
    }

    public final void b(boolean z) {
        this.a = z;
    }

    public final Set<String> c() {
        return this.d;
    }

    public final boolean d() {
        return this.c;
    }

    public final boolean e() {
        return this.a;
    }

    public final boolean f() {
        return this.b;
    }

    public final void a(boolean z) {
        this.c = z;
    }

    public final void c(boolean z) {
        this.b = z;
    }

    public ao0(int i) {
        this();
    }
}
