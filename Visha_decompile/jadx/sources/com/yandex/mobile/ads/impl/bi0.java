package com.yandex.mobile.ads.impl;

import defpackage.t33;
import defpackage.v33;
import kotlin.time.DurationUnit;

public final class bi0 {
    private static final int a;
    public static final int b;

    static {
        t33.a aVar = t33.c;
        DurationUnit durationUnit = DurationUnit.SECONDS;
        long jS = v33.s(10, durationUnit);
        DurationUnit durationUnit2 = DurationUnit.MILLISECONDS;
        a = t33.D(jS, durationUnit2);
        b = t33.D(v33.s(30, durationUnit), durationUnit2);
        t33.D(v33.s(3, durationUnit), durationUnit2);
    }

    public static int a() {
        return a;
    }
}
