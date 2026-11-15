package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.zfb;

public final class kq implements iq, ps0.a {
    private static final Object j = new Object();
    private final f72 b;
    private final f72 c;
    private String d;
    private String e;
    private boolean f;
    private String g;
    private String h;
    private String i;

    public kq(lq lqVar, mq mqVar, ps0 ps0Var) {
        y45.j(lqVar, "cmpV1");
        y45.j(mqVar, "cmpV2");
        y45.j(ps0Var, "preferences");
        this.b = lqVar;
        this.c = mqVar;
        for (gq gqVar : gq.values()) {
            a(ps0Var, gqVar);
        }
        ps0Var.a(this);
    }

    @Override
    public final String a() {
        String str;
        synchronized (j) {
            str = this.e;
        }
        return str;
    }

    @Override
    public final String b() {
        String str;
        synchronized (j) {
            str = this.d;
        }
        return str;
    }

    @Override
    public final String c() {
        String str;
        synchronized (j) {
            str = this.g;
        }
        return str;
    }

    public final String d() {
        String str;
        synchronized (j) {
            str = this.i;
        }
        return str;
    }

    public final boolean e() {
        boolean z;
        synchronized (j) {
            z = this.f;
        }
        return z;
    }

    public final String f() {
        String str;
        synchronized (j) {
            str = this.h;
        }
        return str;
    }

    @Override
    public final void a(ps0 ps0Var, String str) {
        y45.j(ps0Var, "localStorage");
        y45.j(str, "key");
        synchronized (j) {
            try {
                nq nqVarA = this.c.a(ps0Var, str);
                if (nqVarA == null) {
                    nqVarA = this.b.a(ps0Var, str);
                }
                if (nqVarA != null) {
                    a(nqVarA);
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void a(ps0 ps0Var, gq gqVar) {
        nq nqVarA = this.c.a(ps0Var, gqVar);
        if (nqVarA == null) {
            nqVarA = this.b.a(ps0Var, gqVar);
        }
        a(nqVarA);
    }

    private final void a(nq nqVar) {
        if (nqVar instanceof nq.b) {
            this.f = ((nq.b) nqVar).a();
            return;
        }
        if (nqVar instanceof nq.c) {
            this.d = ((nq.c) nqVar).a();
            return;
        }
        if (nqVar instanceof nq.d) {
            this.e = ((nq.d) nqVar).a();
            return;
        }
        if (nqVar instanceof nq.e) {
            this.g = ((nq.e) nqVar).a();
        } else if (nqVar instanceof nq.f) {
            this.h = ((nq.f) nqVar).a();
        } else if (nqVar instanceof nq.a) {
            this.i = ((nq.a) nqVar).a();
        }
    }
}
