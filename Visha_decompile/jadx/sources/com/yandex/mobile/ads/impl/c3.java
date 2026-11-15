package com.yandex.mobile.ads.impl;

import androidx.media3.common.C;
import defpackage.y45;

public final class c3 {
    private final pe2 a;

    public c3(pe2 pe2Var) {
        y45.j(pe2Var, "videoDurationHolder");
        this.a = pe2Var;
    }

    public final long a(ht htVar) {
        y45.j(htVar, "adBreakPosition");
        long jB = htVar.b();
        int iOrdinal = htVar.a().ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                return jB;
            }
        } else {
            if (jB == 100) {
                return Long.MIN_VALUE;
            }
            if (jB == 0) {
                return 0L;
            }
            if (this.a.a() != C.TIME_UNSET) {
                return (long) ((jB / 100) * this.a.a());
            }
        }
        return -1L;
    }
}
