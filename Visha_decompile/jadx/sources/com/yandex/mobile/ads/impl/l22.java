package com.yandex.mobile.ads.impl;

public final class l22 implements fv0 {
    private final jp b;
    private boolean c;
    private long d;
    private long e;
    private bi1 f = bi1.e;

    public l22(y32 y32Var) {
        this.b = y32Var;
    }

    public final void a(long j) {
        this.d = j;
        if (this.c) {
            this.e = this.b.b();
        }
    }

    public final void b() {
        if (this.c) {
            a(o());
            this.c = false;
        }
    }

    @Override
    public final bi1 getPlaybackParameters() {
        return this.f;
    }

    @Override
    public final long o() {
        long j = this.d;
        if (!this.c) {
            return j;
        }
        long jB = this.b.b() - this.e;
        bi1 bi1Var = this.f;
        return j + (bi1Var.b == 1.0f ? f92.a(jB) : bi1Var.a(jB));
    }

    @Override
    public final void a(bi1 bi1Var) {
        if (this.c) {
            a(o());
        }
        this.f = bi1Var;
    }

    public final void a() {
        if (this.c) {
            return;
        }
        this.e = this.b.b();
        this.c = true;
    }
}
