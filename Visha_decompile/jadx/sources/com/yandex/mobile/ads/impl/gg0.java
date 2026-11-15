package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;

public final class gg0 {
    private final Context a;

    public gg0(Context context) {
        y45.j(context, "context");
        this.a = context;
    }

    public final ct a(g2 g2Var) {
        y45.j(g2Var, "requestPolicy");
        int iOrdinal = g2Var.ordinal();
        if (iOrdinal == 0) {
            return new n42();
        }
        if (iOrdinal == 1) {
            return new yh0(this.a, dt1.a());
        }
        throw new NoWhenBranchMatchedException();
    }
}
