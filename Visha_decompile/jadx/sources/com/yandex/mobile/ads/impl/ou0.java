package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.zfb;

public final class ou0 {
    private final ps0 a;
    private final Object b;
    private String c;

    public ou0(ps0 ps0Var) {
        y45.j(ps0Var, "localStorage");
        this.a = ps0Var;
        this.b = new Object();
    }

    public final String a() {
        String str;
        synchronized (this.b) {
            try {
                if (this.c == null) {
                    this.c = this.a.d("YmadMauid");
                }
                str = this.c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    public final void a(String str) {
        y45.j(str, "mauid");
        synchronized (this.b) {
            this.c = str;
            this.a.a("YmadMauid", str);
            zfb zfbVar = zfb.a;
        }
    }
}
