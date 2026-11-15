package com.yandex.mobile.ads.impl;

import android.app.Activity;
import com.yandex.mobile.ads.common.AdInfo;
import com.yandex.mobile.ads.interstitial.InterstitialAd;
import com.yandex.mobile.ads.interstitial.InterstitialAdEventListener;
import defpackage.y45;

public final class mm2 implements InterstitialAd {
    private final nt a;
    private final jl2 b;

    public mm2(nt ntVar, jl2 jl2Var) {
        y45.j(ntVar, "coreInterstitialAd");
        y45.j(jl2Var, "adInfoConverter");
        this.a = ntVar;
        this.b = jl2Var;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof mm2) && y45.e(((mm2) obj).a, this.a);
    }

    @Override
    public final AdInfo getInfo() {
        jl2 jl2Var = this.b;
        ss info = this.a.getInfo();
        jl2Var.getClass();
        return jl2.a(info);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override
    public final void setAdEventListener(InterstitialAdEventListener interstitialAdEventListener) {
        this.a.a(new nm2(interstitialAdEventListener));
    }

    @Override
    public final void show(Activity activity) {
        y45.j(activity, "activity");
        this.a.show(activity);
    }
}
