package com.yandex.mobile.ads.impl;

import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;

final class al0 implements hx1 {
    private final long a;
    private final gt0 b;
    private final gt0 c;
    private long d;

    public al0(long j, long j2, long j3) {
        this.d = j;
        this.a = j3;
        gt0 gt0Var = new gt0();
        this.b = gt0Var;
        gt0 gt0Var2 = new gt0();
        this.c = gt0Var2;
        gt0Var.a(0L);
        gt0Var2.a(j2);
    }

    @Override
    public final long a() {
        return this.a;
    }

    @Override
    public final boolean b() {
        return true;
    }

    @Override
    public final long c() {
        return this.d;
    }

    public final void d(long j) {
        this.d = j;
    }

    @Override
    public final long a(long j) {
        return this.b.a(f92.a(this.c, j));
    }

    @Override
    public final ex1.a b(long j) {
        int iA = f92.a(this.b, j);
        long jA = this.b.a(iA);
        gx1 gx1Var = new gx1(jA, this.c.a(iA));
        if (jA == j || iA == this.b.a() - 1) {
            return new ex1.a(gx1Var, gx1Var);
        }
        int i = iA + 1;
        return new ex1.a(gx1Var, new gx1(this.b.a(i), this.c.a(i)));
    }

    public final boolean c(long j) {
        gt0 gt0Var = this.b;
        return j - gt0Var.a(gt0Var.a() - 1) < SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US;
    }

    public final void a(long j, long j2) {
        if (c(j)) {
            return;
        }
        this.b.a(j);
        this.c.a(j2);
    }
}
