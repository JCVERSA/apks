package com.yandex.mobile.ads.impl;

import android.view.ViewGroup;
import com.monetization.ads.nativeads.ExtendedNativeAdView;
import defpackage.y45;
import java.util.Iterator;

public final class a02 implements b10<ExtendedNativeAdView> {
    private final b02 a;
    private final zr b;
    private final st c;
    private final uo d;
    private final sp1 e;
    private final j41 f;
    private final eh g;

    public a02(b02 b02Var, zr zrVar, st stVar, uo uoVar, sp1 sp1Var, j41 j41Var, r61 r61Var, eh ehVar) {
        y45.j(b02Var, "sliderAd");
        y45.j(zrVar, "contentCloseListener");
        y45.j(stVar, "nativeAdEventListener");
        y45.j(uoVar, "clickConnector");
        y45.j(sp1Var, "reporter");
        y45.j(j41Var, "nativeAdAssetViewProvider");
        y45.j(r61Var, "divKitDesignAssetNamesProvider");
        y45.j(ehVar, "assetsNativeAdViewProviderCreator");
        this.a = b02Var;
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
            this.a.a(this.g.a(extendedNativeAdView, this.f), this.d);
            k32 k32Var = new k32(this.c);
            Iterator it = this.a.d().iterator();
            while (it.hasNext()) {
                ((q61) it.next()).a(k32Var);
            }
            this.a.b(this.c);
        } catch (e61 e) {
            this.b.f();
            this.e.reportError("Failed to bind DivKit Slider Ad", e);
        }
    }

    @Override
    public final void c() {
        this.a.b((st) null);
        Iterator it = this.a.d().iterator();
        while (it.hasNext()) {
            ((q61) it.next()).a((st) null);
        }
    }
}
