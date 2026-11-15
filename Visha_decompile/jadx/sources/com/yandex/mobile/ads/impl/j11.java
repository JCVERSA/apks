package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.zfb;

public final class j11 {
    public static final a e = new a(0);
    private static volatile j11 f;
    private final Object a = new Object();
    private volatile boolean b = true;
    private final i1 c = new i1();
    private final ug1 d = new ug1();

    public static final class a {
        private a() {
        }

        public final j11 a() {
            j11 j11Var = j11.f;
            if (j11Var == null) {
                synchronized (this) {
                    j11Var = j11.f;
                    if (j11Var == null) {
                        j11Var = new j11();
                        j11.f = j11Var;
                    }
                }
            }
            return j11Var;
        }

        public a(int i) {
            this();
        }
    }

    public final void a(Context context) throws bp0 {
        y45.j(context, "context");
        if (this.b) {
            synchronized (this.a) {
                try {
                    if (this.b) {
                        if (pa.a(context)) {
                            this.c.a(context);
                            this.d.getClass();
                            ug1.a(context);
                        }
                        this.b = false;
                    }
                    zfb zfbVar = zfb.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
