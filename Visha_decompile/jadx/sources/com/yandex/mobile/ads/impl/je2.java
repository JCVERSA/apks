package com.yandex.mobile.ads.impl;

import androidx.media3.common.C;
import defpackage.y45;

public final class je2 {
    private final oe2 a;
    private final tj1 b;

    public je2(tj1 tj1Var, oe2 oe2Var) {
        y45.j(oe2Var, "videoDurationHolder");
        y45.j(tj1Var, "positionProviderHolder");
        this.a = oe2Var;
        this.b = tj1Var;
    }

    public final boolean a() {
        long jA = this.a.a();
        if (jA != C.TIME_UNSET) {
            oi1 oi1VarB = this.b.b();
            if ((oi1VarB != null ? oi1VarB.a() : -1L) + 1000 >= jA) {
                return true;
            }
        }
        return false;
    }
}
