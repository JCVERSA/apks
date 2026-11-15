package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class e91 implements yc0 {
    private final yl1 a;
    private final mg1 b;
    private final xl1 c;
    private final z1 d;
    private final mz e;

    public final class a implements og1, m52 {
        public a() {
        }

        @Override
        public final void a() {
            e91.this.a.a();
        }

        @Override
        public final void a(long j, long j2) {
            long jA = e91.this.c.a() + (e91.this.e.a() - j);
            e91.this.a.a(e91.this.d.a(), jA);
        }
    }

    public e91(yl1 yl1Var, f52 f52Var, mg1 mg1Var, xl1 xl1Var, z1 z1Var, mz mzVar) {
        y45.j(yl1Var, "progressListener");
        y45.j(f52Var, "timeProviderContainer");
        y45.j(mg1Var, "pausableTimer");
        y45.j(xl1Var, "progressIncrementer");
        y45.j(z1Var, "adBlockDurationProvider");
        y45.j(mzVar, "defaultContentDelayProvider");
        this.a = yl1Var;
        this.b = mg1Var;
        this.c = xl1Var;
        this.d = z1Var;
        this.e = mzVar;
    }

    @Override
    public final void invalidate() {
        this.b.invalidate();
    }

    @Override
    public final void pause() {
        this.b.pause();
    }

    @Override
    public final void resume() {
        this.b.resume();
    }

    @Override
    public final void start() {
        a aVar = new a();
        this.b.a(this.e.a(), aVar);
        this.b.a(aVar);
    }
}
