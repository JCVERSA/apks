package com.yandex.mobile.ads.impl;

public final class bo1 extends h42 {
    final co1 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bo1(co1 co1Var, String str) {
        super(str);
        this.e = co1Var;
    }

    @Override
    public final long e() {
        return this.e.a(System.nanoTime());
    }
}
