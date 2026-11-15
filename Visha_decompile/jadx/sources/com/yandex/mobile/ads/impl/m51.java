package com.yandex.mobile.ads.impl;

import android.view.ViewGroup;
import com.monetization.ads.nativeads.ExtendedNativeAdView;
import defpackage.y45;

public final class m51 implements b10<ExtendedNativeAdView> {
    private final q61 a;
    private final zr b;
    private final st c;
    private final uo d;
    private final sp1 e;
    private final j41 f;
    private final eh g;

    public m51(q61 q61Var, zr zrVar, st stVar, uo uoVar, sp1 sp1Var, j41 j41Var, r61 r61Var, eh ehVar) {
        y45.j(q61Var, "nativeAd");
        y45.j(zrVar, "contentCloseListener");
        y45.j(stVar, "nativeAdEventListener");
        y45.j(uoVar, "clickConnector");
        y45.j(sp1Var, "reporter");
        y45.j(j41Var, "nativeAdAssetViewProvider");
        y45.j(r61Var, "divKitDesignAssetNamesProvider");
        y45.j(ehVar, "assetsNativeAdViewProviderCreator");
        this.a = q61Var;
        this.b = zrVar;
        this.c = stVar;
        this.d = uoVar;
        this.e = sp1Var;
        this.f = j41Var;
        this.g = ehVar;
    }

    @Override
    public final void a(ViewGroup viewGroup) {
        ExtendedNativeAdView extendedNativeAdView = (ExtendedNativeAdView) viewGroup;
        y45.j(extendedNativeAdView, "nativeAdView");
        try {
            this.a.b(this.g.a(extendedNativeAdView, this.f), this.d);
            this.a.a(this.c);
        } catch (e61 e) {
            this.b.f();
            this.e.reportError("Failed to bind DivKit Native Ad", e);
        }
    }

    @Override
    public final void c() {
        this.a.a((st) null);
    }
}
