package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class cb1 implements yc0, jb1 {
    private final db1 a;
    private final Long b;
    private k3 c;
    private yl1 d;

    public cb1(o8<?> o8Var, db1 db1Var, k3 k3Var, yl1 yl1Var, Long l) {
        y45.j(o8Var, "adResponse");
        y45.j(db1Var, "nativeVideoController");
        y45.j(k3Var, "adCompleteListener");
        y45.j(yl1Var, "progressListener");
        this.a = db1Var;
        this.b = l;
        this.c = k3Var;
        this.d = yl1Var;
    }

    @Override
    public final void a(long j, long j2) {
        yl1 yl1Var = this.d;
        if (yl1Var != null) {
            yl1Var.a(j, j2);
        }
        Long l = this.b;
        if (l == null || j2 <= l.longValue()) {
            return;
        }
        yl1 yl1Var2 = this.d;
        if (yl1Var2 != null) {
            yl1Var2.a();
        }
        k3 k3Var = this.c;
        if (k3Var != null) {
            k3Var.b();
        }
        this.a.b(this);
        this.c = null;
        this.d = null;
    }

    @Override
    public final void b() {
        yl1 yl1Var = this.d;
        if (yl1Var != null) {
            yl1Var.a();
        }
        k3 k3Var = this.c;
        if (k3Var != null) {
            k3Var.b();
        }
        this.a.b(this);
        this.c = null;
        this.d = null;
    }

    @Override
    public final void invalidate() {
        this.a.b(this);
        this.c = null;
        this.d = null;
    }

    @Override
    public final void pause() {
    }

    @Override
    public final void resume() {
    }

    @Override
    public final void start() {
        this.a.a(this);
    }

    @Override
    public final void a() {
        k3 k3Var = this.c;
        if (k3Var != null) {
            k3Var.a();
        }
        this.c = null;
    }
}
