package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.yi5;
import java.util.concurrent.TimeUnit;

public final class cz {
    private final TimeUnit a;
    private final yi5 b;

    public cz(TimeUnit timeUnit) {
        y45.j(timeUnit, "timeUnit");
        this.a = timeUnit;
        this.b = kotlin.b.a(new bz(this));
    }

    public static final long a(cz czVar) {
        czVar.getClass();
        return 1L;
    }

    public final long a() {
        return ((Number) this.b.getValue()).longValue();
    }
}
