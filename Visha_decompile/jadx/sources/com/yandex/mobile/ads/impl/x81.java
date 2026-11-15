package com.yandex.mobile.ads.impl;

import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;

public final class x81 {
    private final w81 a;
    private final w81 b;

    public x81() {
        this(new j51(), new km1());
    }

    public final w81 a(gr1 gr1Var) {
        y45.j(gr1Var, "responseNativeType");
        int iOrdinal = gr1Var.ordinal();
        if (iOrdinal == 0 || iOrdinal == 1 || iOrdinal == 2) {
            return this.a;
        }
        if (iOrdinal == 3) {
            return this.b;
        }
        throw new NoWhenBranchMatchedException();
    }

    public x81(w81 w81Var, w81 w81Var2) {
        y45.j(w81Var, "nativeAdCreator");
        y45.j(w81Var2, "promoAdCreator");
        this.a = w81Var;
        this.b = w81Var2;
    }
}
