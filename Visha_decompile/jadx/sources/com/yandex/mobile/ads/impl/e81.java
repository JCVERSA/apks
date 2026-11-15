package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class e81 implements jb1 {
    private final db1 a;
    private ve2 b;

    public e81(db1 db1Var, qe2 qe2Var, ve2 ve2Var) {
        y45.j(db1Var, "nativeVideoController");
        y45.j(qe2Var, "videoLifecycleListener");
        this.a = db1Var;
        this.b = ve2Var;
    }

    @Override
    public final void a() {
    }

    @Override
    public final void b() {
        ve2 ve2Var = this.b;
        if (ve2Var != null) {
            ve2Var.onVideoComplete();
        }
    }

    public final void c() {
        this.a.b(this);
        this.b = null;
    }

    public final void d() {
        this.a.a(this);
    }

    @Override
    public final void a(long j, long j2) {
    }
}
