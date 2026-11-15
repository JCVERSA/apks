package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class yu0 {
    private final rt a;

    public yu0(rt rtVar) {
        y45.j(rtVar, "nativeAdAssets");
        this.a = rtVar;
    }

    public final Float a() {
        xt xtVarI = this.a.i();
        tt ttVarH = this.a.h();
        if (xtVarI != null) {
            return Float.valueOf(xtVarI.a());
        }
        if (ttVarH == null || ttVarH.d() <= 0 || ttVarH.b() <= 0) {
            return null;
        }
        return Float.valueOf(ttVarH.d() / ttVarH.b());
    }
}
