package com.yandex.mobile.ads.impl;

public final class aq implements m52 {
    private long a;
    private long b;

    public final long a() {
        return this.a;
    }

    public final void b() {
        this.a += this.b;
        this.b = 0L;
    }

    @Override
    public final void a(long j, long j2) {
        this.b = j2;
    }
}
