package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.zfb;
import java.util.WeakHashMap;

public final class im0 {
    public static final a c = new a(0);
    private static volatile im0 d;
    private final Object a;
    private final WeakHashMap<kt, h82> b;

    public static final class a {
        private a() {
        }

        public final im0 a() {
            im0 im0Var = im0.d;
            if (im0Var == null) {
                synchronized (this) {
                    im0Var = im0.d;
                    if (im0Var == null) {
                        im0Var = new im0(0);
                        im0.d = im0Var;
                    }
                }
            }
            return im0Var;
        }

        public a(int i) {
            this();
        }
    }

    private im0() {
        this.a = new Object();
        this.b = new WeakHashMap<>();
    }

    public final void b(kt ktVar) {
        y45.j(ktVar, "instreamAdPlayer");
        synchronized (this.a) {
            this.b.remove(ktVar);
        }
    }

    public final h82 a(kt ktVar) {
        h82 h82Var;
        y45.j(ktVar, "instreamAdPlayer");
        synchronized (this.a) {
            h82Var = this.b.get(ktVar);
        }
        return h82Var;
    }

    public im0(int i) {
        this();
    }

    public final void a(kt ktVar, h82 h82Var) {
        y45.j(ktVar, "instreamAdPlayer");
        y45.j(h82Var, "adBinder");
        synchronized (this.a) {
            this.b.put(ktVar, h82Var);
            zfb zfbVar = zfb.a;
        }
    }
}
