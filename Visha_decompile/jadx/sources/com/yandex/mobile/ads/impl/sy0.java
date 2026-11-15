package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.monetization.ads.mediation.nativeads.MediatedNativeAdapter;
import defpackage.y45;

public final class sy0 implements sx0<MediatedNativeAdapter> {
    private final zx0<MediatedNativeAdapter> a;

    public sy0(zx0<MediatedNativeAdapter> zx0Var) {
        y45.j(zx0Var, "mediatedAdProvider");
        this.a = zx0Var;
    }

    @Override
    public final qx0<MediatedNativeAdapter> a(Context context) {
        y45.j(context, "context");
        return this.a.a(context, MediatedNativeAdapter.class);
    }
}
