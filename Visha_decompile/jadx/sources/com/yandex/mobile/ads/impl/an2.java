package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.rewarded.Reward;
import defpackage.y45;

public final class an2 implements Reward {
    private final vr1 a;

    public an2(vr1 vr1Var) {
        y45.j(vr1Var, "rewardData");
        this.a = vr1Var;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof an2) && y45.e(((an2) obj).a, this.a);
    }

    @Override
    public final int getAmount() {
        return this.a.getAmount();
    }

    @Override
    public final String getType() {
        return this.a.getType();
    }

    public final int hashCode() {
        return this.a.hashCode();
    }
}
