package com.yandex.mobile.ads.impl;

import androidx.media3.common.C;
import defpackage.y45;

public final class ke2 {
    private final pe2 a;
    private final uj1 b;

    public ke2(uj1 uj1Var, pe2 pe2Var) {
        y45.j(pe2Var, "videoDurationHolder");
        y45.j(uj1Var, "positionProviderHolder");
        this.a = pe2Var;
        this.b = uj1Var;
    }

    public final boolean a() {
        long jA = this.a.a();
        if (jA != C.TIME_UNSET) {
            pi1 pi1VarB = this.b.b();
            if ((pi1VarB != null ? pi1VarB.a() : -1L) + 1000 >= jA) {
                return true;
            }
        }
        return false;
    }
}
