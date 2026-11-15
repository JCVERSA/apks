package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.monetization.ads.mediation.banner.MediatedBannerAdapter;
import defpackage.y45;

public final class iy0 implements sx0<MediatedBannerAdapter> {
    private final zx0<MediatedBannerAdapter> a;

    public iy0(zx0<MediatedBannerAdapter> zx0Var) {
        y45.j(zx0Var, "mediatedAdProvider");
        this.a = zx0Var;
    }

    @Override
    public final qx0<MediatedBannerAdapter> a(Context context) {
        y45.j(context, "context");
        return this.a.a(context, MediatedBannerAdapter.class);
    }
}
