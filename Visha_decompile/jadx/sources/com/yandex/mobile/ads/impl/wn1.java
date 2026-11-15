package com.yandex.mobile.ads.impl;

import com.lzy.okgo.model.Progress;
import defpackage.y45;
import defpackage.zfb;
import java.util.WeakHashMap;

public final class wn1 {
    public static final a b = new a(0);
    private static final Object c = new Object();
    private static volatile wn1 d;
    private final WeakHashMap a;

    public static final class a {
        private a() {
        }

        public final wn1 a() {
            wn1 wn1Var = wn1.d;
            if (wn1Var == null) {
                synchronized (this) {
                    wn1Var = wn1.d;
                    if (wn1Var == null) {
                        wn1Var = new wn1(0);
                        wn1.d = wn1Var;
                    }
                }
            }
            return wn1Var;
        }

        public a(int i) {
            this();
        }
    }

    private wn1() {
        this.a = new WeakHashMap();
    }

    public final String a(up1<?> up1Var) {
        String str;
        y45.j(up1Var, Progress.REQUEST);
        synchronized (c) {
            str = (String) this.a.get(up1Var);
            this.a.remove(up1Var);
        }
        return str;
    }

    public wn1(int i) {
        this();
    }

    public final void a(ak akVar, String str) {
        y45.j(akVar, Progress.REQUEST);
        y45.j(str, "response");
        synchronized (c) {
            this.a.put(akVar, str);
            zfb zfbVar = zfb.a;
        }
    }
}
