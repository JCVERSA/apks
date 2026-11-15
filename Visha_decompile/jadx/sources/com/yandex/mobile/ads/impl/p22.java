package com.yandex.mobile.ads.impl;

final class p22 extends lc0 {
    private final long b;

    public p22(wz wzVar, long j) {
        super(wzVar);
        hg.a(wzVar.a() >= j);
        this.b = j;
    }

    @Override
    public final long a() {
        return super.a() - this.b;
    }

    @Override
    public final long b() {
        return super.b() - this.b;
    }

    @Override
    public final long d() {
        return super.d() - this.b;
    }
}
