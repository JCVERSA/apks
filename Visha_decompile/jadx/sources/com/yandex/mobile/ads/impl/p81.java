package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class p81 {
    public static long a(o8 o8Var) {
        y45.j(o8Var, "adResponse");
        ts tsVarN = o8Var.n();
        Long lU = o8Var.u();
        if (lU == null) {
            lU = tsVarN == ts.f ? 5000L : 0L;
        }
        return lU.longValue();
    }
}
