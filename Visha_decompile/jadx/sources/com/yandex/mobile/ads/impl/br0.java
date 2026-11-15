package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.monetization.ads.nativeads.ExtendedNativeAdView;
import com.yandex.mobile.ads.R;
import defpackage.s86;
import defpackage.y45;

public final class br0 implements ee0 {
    private final b10<ExtendedNativeAdView> a;
    private final sp1 b;
    private final uq1 c;
    private final vq d;

    public br0(fq fqVar, sp1 sp1Var, uq1 uq1Var, vq vqVar) {
        y45.j(fqVar, "adTypeSpecificBinder");
        y45.j(sp1Var, "reporter");
        y45.j(uq1Var, "resourceUtils");
        y45.j(vqVar, "commonComponentsBinderProvider");
        this.a = fqVar;
        this.b = sp1Var;
        this.c = uq1Var;
        this.d = vqVar;
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
        uq1 uq1Var = this.c;
        int i = R.dimen.monetization_ads_internal_landscape_horizontal_icon_size;
        uq1Var.getClass();
        y45.j(context, "context");
        cr crVar = new cr(adAssets, s86.c(context.getResources().getDimension(i)));
        vq vqVar = this.d;
        b10<ExtendedNativeAdView> b10Var = this.a;
        sp1 sp1Var = this.b;
        vqVar.getClass();
        return new fr0<>(R.layout.monetization_ads_internal_native_interstitial_landscape_horizontal_media, new ar(crVar, vq.a(q61Var, zrVar, stVar, b10Var, sp1Var), new xu0(adAssets, new a51(), new yu0(adAssets)), new nh1(adAssets, new h41(), new k41()), new jj2(), new sn(q61Var, new k41())), new mf1(2));
    }
}
