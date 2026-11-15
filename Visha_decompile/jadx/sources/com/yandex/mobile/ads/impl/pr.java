package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.concurrent.TimeUnit;

public final class pr {
    private final co1 a;

    public pr() {
        this(TimeUnit.MINUTES);
    }

    public final co1 a() {
        return this.a;
    }

    public pr(co1 co1Var) {
        y45.j(co1Var, "delegate");
        this.a = co1Var;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public pr(TimeUnit timeUnit) {
        this(new co1(l42.h, timeUnit));
        y45.j(timeUnit, "timeUnit");
    }
}
