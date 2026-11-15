package com.yandex.mobile.ads.impl;

import com.monetization.ads.nativeads.ExtendedNativeAdView;
import defpackage.y45;

public final class mj {
    private final lj<ExtendedNativeAdView> a;

    public mj(lj<ExtendedNativeAdView> ljVar) {
        y45.j(ljVar, "layoutDesignsController");
        this.a = ljVar;
    }

    public final void a() {
        this.a.a();
    }

    public final void a(gz1 gz1Var, dj djVar) {
        y45.j(djVar, "attachEventListener");
        if (this.a.a(gz1Var)) {
            djVar.a();
        } else {
            djVar.a(w7.i());
        }
    }
}
