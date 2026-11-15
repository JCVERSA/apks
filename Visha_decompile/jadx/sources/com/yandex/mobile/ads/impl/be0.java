package com.yandex.mobile.ads.impl;

import android.view.ViewGroup;
import com.monetization.ads.nativeads.ExtendedNativeAdView;
import defpackage.y45;

public final class be0 implements b10<ExtendedNativeAdView> {
    private final q61 a;
    private final zr b;
    private final st c;
    private final sp1 d;
    private final eh e;
    private final k41 f;

    public be0(q61 q61Var, zr zrVar, st stVar, sp1 sp1Var, eh ehVar, k41 k41Var) {
        y45.j(q61Var, "nativeAd");
        y45.j(zrVar, "contentCloseListener");
        y45.j(stVar, "nativeAdEventListener");
        y45.j(sp1Var, "reporter");
        y45.j(ehVar, "assetsNativeAdViewProviderCreator");
        y45.j(k41Var, "nativeAdAssetViewProviderById");
        this.a = q61Var;
        this.b = zrVar;
        this.c = stVar;
        this.d = sp1Var;
        this.e = ehVar;
        this.f = k41Var;
    }

    @Override
    public final void a(ViewGroup viewGroup) {
        ExtendedNativeAdView extendedNativeAdView = (ExtendedNativeAdView) viewGroup;
        y45.j(extendedNativeAdView, "nativeAdView");
        try {
            this.a.b(this.e.a(extendedNativeAdView, this.f));
            this.a.a(this.c);
        } catch (e61 e) {
            this.b.f();
            this.d.reportError("Failed to bind DivKit Fullscreen Native Ad", e);
        }
    }

    @Override
    public final void c() {
        this.a.a((st) null);
    }
}
