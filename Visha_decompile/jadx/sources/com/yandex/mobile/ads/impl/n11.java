package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.zfb;
import java.util.List;
import java.util.Map;

public final class n11 {
    private static n11 b;
    private static final Object c = new Object();
    public static final int d = 0;
    private final defpackage.hg a;

    public static final class a {
        public static n11 a() {
            n11 n11Var;
            n11 n11Var2 = n11.b;
            if (n11Var2 != null) {
                return n11Var2;
            }
            synchronized (n11.c) {
                n11Var = n11.b;
                if (n11Var == null) {
                    n11Var = new n11(0);
                    n11.b = n11Var;
                }
            }
            return n11Var;
        }
    }

    private n11() {
        this.a = new defpackage.hg();
    }

    public final void c() {
        synchronized (c) {
            this.a.clear();
            zfb zfbVar = zfb.a;
        }
    }

    public final List<m11> d() {
        List<m11> listB1;
        synchronized (c) {
            listB1 = defpackage.i81.b1(this.a);
        }
        return listB1;
    }

    public final void a(long j, String str, String str2, Map<String, String> map, String str3, Integer num, Map<String, String> map2, String str4) {
        y45.j(str, "requestMethod");
        y45.j(str2, "requestUrl");
        if (l11.a.a()) {
            m11 m11Var = new m11(new o11(j, str, str2, map, str3), (num == null || map2 == null || str4 == null) ? null : new p11(System.currentTimeMillis(), num, map2, str4));
            synchronized (c) {
                try {
                    if (this.a.size() > 100) {
                        this.a.removeFirst();
                    }
                    this.a.add(m11Var);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public n11(int i) {
        this();
    }
}
