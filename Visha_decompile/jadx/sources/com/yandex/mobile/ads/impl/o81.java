package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class o81 implements yc0 {
    private final zp a;
    private final aq b;
    private final long c;
    private final mg1 d;
    private final a e;

    public final class a implements og1 {
        public a() {
        }

        @Override
        public final void a() {
            o81.a(o81.this);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public o81(o8 o8Var, zp zpVar, f52 f52Var) {
        aq aqVarC = f52Var.c();
        long jA = p81.a(o8Var);
        int i = mg1.a;
        this(o8Var, zpVar, f52Var, aqVarC, jA, mg1.a.a(false));
    }

    public static final void a(o81 o81Var) {
        o81Var.a.a();
    }

    @Override
    public final void invalidate() {
        this.d.invalidate();
    }

    @Override
    public final void pause() {
        this.d.pause();
    }

    @Override
    public final void resume() {
        this.d.resume();
    }

    @Override
    public final void start() {
        long jMax = Math.max(0L, this.c - this.b.a());
        this.d.a(this.b);
        this.d.a(jMax, this.e);
    }

    public o81(o8<?> o8Var, zp zpVar, f52 f52Var, aq aqVar, long j, mg1 mg1Var) {
        y45.j(o8Var, "adResponse");
        y45.j(zpVar, "closeShowListener");
        y45.j(f52Var, "timeProviderContainer");
        y45.j(aqVar, "closeTimerProgressIncrementer");
        y45.j(mg1Var, "pausableTimer");
        this.a = zpVar;
        this.b = aqVar;
        this.c = j;
        this.d = mg1Var;
        this.e = new a();
    }
}
