package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.zfb;

public final class me1 {
    private static final Object c = new Object();
    private static volatile me1 d;
    public static final int e = 0;
    private final ve1 a;
    private boolean b;

    public static final class a {
        public static me1 a() {
            me1 me1Var;
            me1 me1Var2 = me1.d;
            if (me1Var2 != null) {
                return me1Var2;
            }
            synchronized (me1.c) {
                me1Var = me1.d;
                if (me1Var == null) {
                    me1Var = new me1();
                    me1.d = me1Var;
                }
            }
            return me1Var;
        }
    }

    public me1() {
        this(new ve1());
    }

    public final void a(Context context) {
        y45.j(context, "context");
        synchronized (c) {
            try {
                if (this.a.a(context) && !this.b) {
                    ye1.a(context);
                    this.b = true;
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private me1(ve1 ve1Var) {
        this.a = ve1Var;
    }
}
