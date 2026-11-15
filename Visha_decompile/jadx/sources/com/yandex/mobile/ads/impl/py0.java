package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.monetization.ads.mediation.interstitial.MediatedInterstitialAdapter;
import defpackage.y45;

public final class py0 implements sx0<MediatedInterstitialAdapter> {
    private final zx0<MediatedInterstitialAdapter> a;

    public py0(zx0<MediatedInterstitialAdapter> zx0Var) {
        y45.j(zx0Var, "mediatedAdProvider");
        this.a = zx0Var;
    }

    @Override
    public final qx0<MediatedInterstitialAdapter> a(Context context) {
        y45.j(context, "context");
        return this.a.a(context, MediatedInterstitialAdapter.class);
    }
}
