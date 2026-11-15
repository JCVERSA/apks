package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class rb1 implements yc0, jb1 {
    private final db1 a;
    private final yl1 b;
    private final xl1 c;
    private final z1 d;

    public rb1(db1 db1Var, yl1 yl1Var, f52 f52Var, xl1 xl1Var, z1 z1Var) {
        y45.j(db1Var, "nativeVideoController");
        y45.j(yl1Var, "progressListener");
        y45.j(f52Var, "timeProviderContainer");
        y45.j(xl1Var, "progressIncrementer");
        y45.j(z1Var, "adBlockDurationProvider");
        this.a = db1Var;
        this.b = yl1Var;
        this.c = xl1Var;
        this.d = z1Var;
    }

    @Override
    public final void a(long j, long j2) {
        long jA = this.c.a() + j2;
        long jA2 = this.d.a(j);
        if (jA < jA2) {
            this.b.a(jA2, jA);
        } else {
            this.a.b(this);
            this.b.a();
        }
    }

    @Override
    public final void b() {
        this.b.a();
        this.a.b(this);
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
    }

    @Override
    public final void a() {
        this.b.a();
        this.a.b(this);
    }
}
