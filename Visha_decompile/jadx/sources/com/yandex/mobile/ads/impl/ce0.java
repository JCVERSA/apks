package com.yandex.mobile.ads.impl;

import com.monetization.ads.nativeads.ExtendedNativeAdView;
import defpackage.y45;

public final class ce0 implements yd0 {
    private final kr0<ExtendedNativeAdView> a;
    private final zr b;

    public ce0(kr0<ExtendedNativeAdView> kr0Var, zr zrVar) {
        y45.j(kr0Var, "layoutDesignsController");
        y45.j(zrVar, "contentCloseListener");
        this.a = kr0Var;
        this.b = zrVar;
    }

    @Override
    public final void c() {
        if (this.a.a()) {
            return;
        }
        this.b.f();
    }

    @Override
    public final void invalidate() {
        this.a.b();
    }
}
