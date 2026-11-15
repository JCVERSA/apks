package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.monetization.ads.mediation.appopenad.MediatedAppOpenAdAdapter;
import defpackage.y45;

public final class hy0 implements sx0<MediatedAppOpenAdAdapter> {
    private final zx0<MediatedAppOpenAdAdapter> a;

    public hy0(zx0<MediatedAppOpenAdAdapter> zx0Var) {
        y45.j(zx0Var, "mediatedAdProvider");
        this.a = zx0Var;
    }

    @Override
    public final qx0<MediatedAppOpenAdAdapter> a(Context context) {
        y45.j(context, "context");
        return this.a.a(context, MediatedAppOpenAdAdapter.class);
    }
}
