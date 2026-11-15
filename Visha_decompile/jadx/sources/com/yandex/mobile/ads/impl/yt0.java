package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.zfb;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

public final class yt0 {
    private static final Object b = new Object();
    private static volatile yt0 c;
    public static final int d = 0;
    private final WeakHashMap a;

    public static final class a {
        public static yt0 a() {
            if (yt0.c == null) {
                synchronized (yt0.b) {
                    try {
                        if (yt0.c == null) {
                            yt0.c = new yt0(0);
                        }
                        zfb zfbVar = zfb.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            yt0 yt0Var = yt0.c;
            if (yt0Var != null) {
                return yt0Var;
            }
            throw new IllegalArgumentException("Required value was null.");
        }
    }

    private yt0() {
        this.a = new WeakHashMap();
    }

    public final st0 a(t70 t70Var) {
        st0 st0Var;
        y45.j(t70Var, "view");
        synchronized (b) {
            st0Var = (st0) this.a.get(t70Var);
        }
        return st0Var;
    }

    public yt0(int i) {
        this();
    }

    public final void a(t70 t70Var, st0 st0Var) {
        y45.j(t70Var, "view");
        y45.j(st0Var, "presenter");
        synchronized (b) {
        }
    }

    public final boolean a(st0 st0Var) {
        boolean z;
        y45.j(st0Var, "presenter");
        synchronized (b) {
            Iterator it = this.a.entrySet().iterator();
            z = false;
            while (it.hasNext()) {
                if (y45.e(st0Var, (st0) ((Map.Entry) it.next()).getValue())) {
                    it.remove();
                    z = true;
                }
            }
        }
        return z;
    }
}
