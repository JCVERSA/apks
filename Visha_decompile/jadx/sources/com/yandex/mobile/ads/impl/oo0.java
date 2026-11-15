package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.zfb;
import java.util.WeakHashMap;

public final class oo0 {
    public static final a c = new a(0);
    private static volatile oo0 d;
    private final Object a;
    private final WeakHashMap<mu, ft> b;

    public static final class a {
        private a() {
        }

        public final oo0 a() {
            oo0 oo0Var = oo0.d;
            if (oo0Var == null) {
                synchronized (this) {
                    oo0Var = oo0.d;
                    if (oo0Var == null) {
                        oo0Var = new oo0(0);
                        oo0.d = oo0Var;
                    }
                }
            }
            return oo0Var;
        }

        public a(int i) {
            this();
        }
    }

    private oo0() {
        this.a = new Object();
        this.b = new WeakHashMap<>();
    }

    public final void b(mu muVar) {
        y45.j(muVar, "videoPlayer");
        synchronized (this.a) {
            this.b.remove(muVar);
        }
    }

    public final ft a(mu muVar) {
        ft ftVar;
        y45.j(muVar, "videoPlayer");
        synchronized (this.a) {
            ftVar = this.b.get(muVar);
        }
        return ftVar;
    }

    public oo0(int i) {
        this();
    }

    public final void a(mu muVar, ft ftVar) {
        y45.j(muVar, "videoPlayer");
        y45.j(ftVar, "adBinder");
        synchronized (this.a) {
            this.b.put(muVar, ftVar);
            zfb zfbVar = zfb.a;
        }
    }
}
