package com.yandex.mobile.ads.impl;

import android.app.Activity;
import com.yandex.mobile.ads.common.AdInfo;
import com.yandex.mobile.ads.rewarded.RewardedAd;
import com.yandex.mobile.ads.rewarded.RewardedAdEventListener;
import defpackage.y45;

public final class bn2 implements RewardedAd {
    private final gu a;
    private final jl2 b;

    public bn2(gu guVar, jl2 jl2Var) {
        y45.j(guVar, "coreRewardedAd");
        y45.j(jl2Var, "adInfoConverter");
        this.a = guVar;
        this.b = jl2Var;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof bn2) && y45.e(((bn2) obj).a, this.a);
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
    public final void setAdEventListener(RewardedAdEventListener rewardedAdEventListener) {
        this.a.a(new cn2(rewardedAdEventListener));
    }

    @Override
    public final void show(Activity activity) {
        y45.j(activity, "activity");
        this.a.show(activity);
    }
}
