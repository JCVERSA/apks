package com.yandex.mobile.ads.impl;

import com.lzy.okgo.model.Progress;
import defpackage.y45;
import defpackage.zfb;
import java.util.List;

public final class v11 {
    private static v11 b;
    private static final Object c = new Object();
    public static final int d = 0;
    private final defpackage.hg a;

    public static final class a {
        public static v11 a() {
            v11 v11Var;
            v11 v11Var2 = v11.b;
            if (v11Var2 != null) {
                return v11Var2;
            }
            synchronized (v11.c) {
                v11Var = v11.b;
                if (v11Var == null) {
                    v11Var = new v11(0);
                    v11.b = v11Var;
                }
            }
            return v11Var;
        }
    }

    private v11() {
        this.a = new defpackage.hg();
    }

    public final void c() {
        synchronized (c) {
            this.a.clear();
            zfb zfbVar = zfb.a;
        }
    }

    public final List<u11> d() {
        List<u11> listB1;
        synchronized (c) {
            listB1 = defpackage.i81.b1(this.a);
        }
        return listB1;
    }

    public final void a(k11 k11Var, String str, String str2) {
        y45.j(k11Var, "type");
        y45.j(str, Progress.TAG);
        y45.j(str2, "text");
        if (l11.a.a()) {
            u11 u11Var = new u11(System.currentTimeMillis(), k11Var.name(), str, str2);
            synchronized (c) {
                try {
                    if (this.a.size() > 5000) {
                        this.a.removeFirst();
                    }
                    this.a.add(u11Var);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public v11(int i) {
        this();
    }
}
