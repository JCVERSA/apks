package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class ft0 {
    private static final Object c = new Object();
    private final v11 a;
    private final n11 b;

    public ft0() {
        this(0);
    }

    public final ox a() {
        ox oxVar;
        synchronized (c) {
            oxVar = !l11.a.a() ? null : new ox(this.a.d(), this.b.d());
        }
        return oxVar;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ft0(int i) {
        int i2 = v11.d;
        v11 v11VarA = v11.a.a();
        int i3 = n11.d;
        this(v11VarA, n11.a.a());
    }

    public ft0(v11 v11Var, n11 n11Var) {
        y45.j(v11Var, "sdkLogsCollector");
        y45.j(n11Var, "networkLogsCollector");
        this.a = v11Var;
        this.b = n11Var;
    }
}
