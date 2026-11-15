package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.monetization.ads.mediation.rewarded.MediatedRewardedAdapter;
import defpackage.y45;

public final class az0 implements sx0<MediatedRewardedAdapter> {
    private final zx0<MediatedRewardedAdapter> a;

    public az0(zx0<MediatedRewardedAdapter> zx0Var) {
        y45.j(zx0Var, "mediatedAdProvider");
        this.a = zx0Var;
    }

    @Override
    public final qx0<MediatedRewardedAdapter> a(Context context) {
        y45.j(context, "context");
        return this.a.a(context, MediatedRewardedAdapter.class);
    }
}
