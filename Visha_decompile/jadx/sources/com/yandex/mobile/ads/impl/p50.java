package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class p50 {
    private static p50 c;
    private static final Object d = new Object();
    public static final int e = 0;
    private final o50 a;
    private bj0 b;

    public static final class a {
        public static p50 a(Context context) {
            p50 p50Var;
            y45.j(context, "context");
            p50 p50Var2 = p50.c;
            if (p50Var2 != null) {
                return p50Var2;
            }
            synchronized (p50.d) {
                p50Var = p50.c;
                if (p50Var == null) {
                    Context applicationContext = context.getApplicationContext();
                    y45.i(applicationContext, "getApplicationContext(...)");
                    p50Var = new p50(applicationContext, new o50(), gf.a(applicationContext));
                    p50.c = p50Var;
                }
            }
            return p50Var;
        }
    }

    public p50(Context context, o50 o50Var, bj0 bj0Var) {
        y45.j(context, "appContext");
        y45.j(o50Var, "environmentConfiguration");
        y45.j(bj0Var, "appMetricaProvider");
        this.a = o50Var;
        defpackage.y71.k();
        kotlin.collections.a.l();
        this.b = bj0Var;
    }

    public final o50 c() {
        return this.a;
    }

    public final bj0 d() {
        return this.b;
    }
}
