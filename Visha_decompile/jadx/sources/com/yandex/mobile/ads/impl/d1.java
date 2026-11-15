package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.zfb;
import java.util.HashMap;

public final class d1 {
    private static final Object b = new Object();
    private static volatile d1 c;
    public static final int d = 0;
    private final HashMap<Long, c1> a;

    public static final class a {
        public static d1 a() {
            d1 d1Var;
            d1 d1Var2 = d1.c;
            if (d1Var2 != null) {
                return d1Var2;
            }
            synchronized (d1.b) {
                d1Var = d1.c;
                if (d1Var == null) {
                    d1Var = new d1(0);
                    d1.c = d1Var;
                }
            }
            return d1Var;
        }
    }

    private d1() {
        this.a = new HashMap<>();
    }

    public final c1 a(long j) {
        c1 c1VarRemove;
        synchronized (b) {
            c1VarRemove = this.a.remove(Long.valueOf(j));
        }
        return c1VarRemove;
    }

    public d1(int i) {
        this();
    }

    public final void a(long j, c1 c1Var) {
        y45.j(c1Var, "adActivityData");
        synchronized (b) {
            this.a.put(Long.valueOf(j), c1Var);
            zfb zfbVar = zfb.a;
        }
    }
}
