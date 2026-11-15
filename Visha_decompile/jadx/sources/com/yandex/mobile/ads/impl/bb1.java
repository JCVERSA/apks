package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class bb1 implements yc0, jb1 {
    private final db1 a;
    private final zp b;
    private final Long c;
    private final aq d;
    private final kp e;

    public bb1(o8<?> o8Var, db1 db1Var, zp zpVar, f52 f52Var, Long l, aq aqVar, kp kpVar) {
        y45.j(o8Var, "adResponse");
        y45.j(db1Var, "nativeVideoController");
        y45.j(zpVar, "closeShowListener");
        y45.j(f52Var, "timeProviderContainer");
        y45.j(aqVar, "closeTimerProgressIncrementer");
        y45.j(kpVar, "closableAdChecker");
        this.a = db1Var;
        this.b = zpVar;
        this.c = l;
        this.d = aqVar;
        this.e = kpVar;
    }

    @Override
    public final void a(long j, long j2) {
        if (this.e.a()) {
            this.d.a(j - j2, j2);
            long jA = this.d.a() + j2;
            Long l = this.c;
            if (l == null || jA < l.longValue()) {
                return;
            }
            this.b.a();
            this.a.b(this);
        }
    }

    @Override
    public final void b() {
        if (this.e.a()) {
            this.b.a();
            this.a.b(this);
        }
    }

    @Override
    public final void invalidate() {
        this.a.b(this);
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
        if (!this.e.a() || this.c == null || this.d.a() < this.c.longValue()) {
            return;
        }
        this.b.a();
        this.a.b(this);
    }

    @Override
    public final void a() {
        this.b.a();
        this.a.b(this);
    }
}
