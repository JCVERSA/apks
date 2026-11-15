package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.concurrent.TimeUnit;

public final class vy1 implements z1 {
    private static final long b = TimeUnit.SECONDS.toMillis(5);
    private final o8<?> a;

    public vy1(o8<?> o8Var) {
        y45.j(o8Var, "adResponse");
        this.a = o8Var;
    }

    @Override
    public final long a() {
        Long lK = this.a.K();
        return lK != null ? lK.longValue() : b;
    }

    @Override
    public final long a(long j) {
        Long lK = this.a.K();
        return lK != null ? Math.min(j, lK.longValue()) : j;
    }
}
