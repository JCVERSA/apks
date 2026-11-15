package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.monetization.ads.nativeads.ExtendedNativeAdView;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class nj1 implements ee0 {
    private final b10<ExtendedNativeAdView> a;
    private final sp1 b;
    private final vq c;

    public nj1(fq fqVar, sp1 sp1Var, vq vqVar) {
        y45.j(fqVar, "adTypeSpecificBinder");
        y45.j(sp1Var, "reporter");
        y45.j(vqVar, "commonComponentsBinderProvider");
        this.a = fqVar;
        this.b = sp1Var;
        this.c = vqVar;
    }

    @Override
    public final fr0<ExtendedNativeAdView> a(Context context, o8<?> o8Var, q61 q61Var, zr zrVar, st stVar, e1 e1Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(q61Var, "nativeAdPrivate");
        y45.j(zrVar, "contentCloseListener");
        y45.j(stVar, "nativeAdEventListener");
        y45.j(e1Var, "eventController");
        rt adAssets = q61Var.getAdAssets();
        vq vqVar = this.c;
        b10<ExtendedNativeAdView> b10Var = this.a;
        sp1 sp1Var = this.b;
        vqVar.getClass();
        return new fr0<>(R.layout.monetization_ads_internal_native_interstitial_portrait, new ar(vq.a(q61Var, zrVar, stVar, b10Var, sp1Var), new kw0(adAssets, new a51(), new yu0(adAssets)), new jj2(), new sn(q61Var, new k41()), new qn(context, new k41(), new pn(context))), new mf1(1));
    }
}
