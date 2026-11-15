package com.yandex.mobile.ads.impl;

public final class jh0 extends h42 {
    final hh0 e;
    final int f;
    final int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jh0(String str, hh0 hh0Var, int i, int i2) {
        super(str, true);
        this.e = hh0Var;
        this.f = i;
        this.g = i2;
    }

    @Override
    public final long e() {
        this.e.a(this.f, this.g, true);
        return -1L;
    }
}
