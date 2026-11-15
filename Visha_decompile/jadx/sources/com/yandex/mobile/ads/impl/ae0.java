package com.yandex.mobile.ads.impl;

import android.view.ViewGroup;
import com.monetization.ads.nativeads.ExtendedNativeAdView;
import defpackage.y45;

public final class ae0 implements b10<ExtendedNativeAdView> {
    private b10<ExtendedNativeAdView> a;

    public ae0(q61 q61Var, zr zrVar, st stVar, uo uoVar, sp1 sp1Var, b10<ExtendedNativeAdView> b10Var) {
        y45.j(q61Var, "nativeAdPrivate");
        y45.j(zrVar, "contentCloseListener");
        y45.j(stVar, "nativeAdEventListener");
        y45.j(uoVar, "clickConnector");
        y45.j(sp1Var, "reporter");
        y45.j(b10Var, "divKitAdBinder");
        this.a = b10Var;
    }

    @Override
    public final void a(ViewGroup viewGroup) {
        ExtendedNativeAdView extendedNativeAdView = (ExtendedNativeAdView) viewGroup;
        y45.j(extendedNativeAdView, "fullscreenNativeAdView");
        this.a.a(extendedNativeAdView);
    }

    @Override
    public final void c() {
        this.a.c();
    }
}
