package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class q81 implements yc0 {
    private final mg1 a;
    private final mz b;
    private k3 c;
    private yl1 d;

    public final class a implements og1 {
        public a() {
        }

        @Override
        public final void a() {
            q81.b(q81.this);
        }
    }

    public final class b implements m52 {
        private final long a;

        public b(long j) {
            this.a = j;
        }

        @Override
        public final void a(long j, long j2) {
            yl1 yl1Var = q81.this.d;
            if (yl1Var != null) {
                long j3 = this.a;
                yl1Var.a(j3, j3 - j);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public q81(k3 k3Var, f52 f52Var, yl1 yl1Var) {
        this(k3Var, f52Var, yl1Var, mg1.a.a(false), f52Var.d());
        int i = mg1.a;
    }

    public static final void b(q81 q81Var) {
        yl1 yl1Var = q81Var.d;
        if (yl1Var != null) {
            yl1Var.a();
        }
        k3 k3Var = q81Var.c;
        if (k3Var != null) {
            k3Var.b();
        }
    }

    @Override
    public final void invalidate() {
        this.a.invalidate();
        this.a.a(null);
        this.c = null;
        this.d = null;
    }

    @Override
    public final void pause() {
        this.a.pause();
    }

    @Override
    public final void resume() {
        this.a.resume();
    }

    @Override
    public final void start() {
        a aVar = new a();
        long jA = this.b.a();
        this.a.a(new b(jA));
        this.a.a(jA, aVar);
    }

    public q81(k3 k3Var, f52 f52Var, yl1 yl1Var, mg1 mg1Var, mz mzVar) {
        y45.j(k3Var, "adCompleteListener");
        y45.j(f52Var, "timeProviderContainer");
        y45.j(yl1Var, "progressListener");
        y45.j(mg1Var, "pausableTimer");
        y45.j(mzVar, "defaultContentDelayProvider");
        this.a = mg1Var;
        this.b = mzVar;
        this.c = k3Var;
        this.d = yl1Var;
    }
}
