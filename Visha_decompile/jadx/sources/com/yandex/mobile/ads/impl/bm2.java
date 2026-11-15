package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.instream.InstreamAdBreak;
import com.yandex.mobile.ads.instream.InstreamAdBreakPosition;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;

public final class bm2 implements InstreamAdBreak {
    private final gt a;
    private final dm2 b;

    public bm2(gt gtVar) {
        this(gtVar, new dm2());
    }

    public final boolean equals(Object obj) {
        return (obj instanceof bm2) && y45.e(((bm2) obj).a, this.a);
    }

    @Override
    public final InstreamAdBreakPosition getAdBreakPosition() {
        InstreamAdBreakPosition.Type type;
        dm2 dm2Var = this.b;
        ht htVarB = this.a.b();
        dm2Var.getClass();
        y45.j(htVarB, "corePosition");
        int iOrdinal = htVarB.a().ordinal();
        if (iOrdinal == 0) {
            type = InstreamAdBreakPosition.Type.PERCENTS;
        } else if (iOrdinal == 1) {
            type = InstreamAdBreakPosition.Type.MILLISECONDS;
        } else {
            if (iOrdinal != 2) {
                throw new NoWhenBranchMatchedException();
            }
            type = InstreamAdBreakPosition.Type.POSITION;
        }
        return new InstreamAdBreakPosition(type, htVarB.b());
    }

    @Override
    public final String getType() {
        return this.a.e();
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public bm2(gt gtVar, dm2 dm2Var) {
        y45.j(gtVar, "adBreak");
        y45.j(dm2Var, "adBreakPositionAdapter");
        this.a = gtVar;
        this.b = dm2Var;
    }
}
