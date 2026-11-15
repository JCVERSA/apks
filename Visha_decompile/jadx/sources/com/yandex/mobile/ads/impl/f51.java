package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Bitmap;
import com.monetization.ads.mediation.nativeads.MediatedNativeAd;
import defpackage.y45;
import java.util.HashMap;
import java.util.Map;

public final class f51 {
    private final m41 a;

    public f51(Context context) {
        this(context, new m41(context));
    }

    public final o8<y61> a(MediatedNativeAd mediatedNativeAd, Map<String, Bitmap> map, gr1 gr1Var) {
        y45.j(mediatedNativeAd, "mediatedNativeAd");
        y45.j(map, "imageValues");
        y45.j(gr1Var, "responseNativeType");
        return new o8.a().a(new y61(defpackage.x71.e(new g41(gr1Var, this.a.a(mediatedNativeAd.getMediatedNativeAdAssets(), map), null, null, null, null, null, null, defpackage.y71.k(), defpackage.y71.k())), defpackage.y71.k(), defpackage.y71.k(), null, new HashMap(), defpackage.y71.k(), defpackage.y71.k(), null, null, null)).a();
    }

    public f51(Context context, m41 m41Var) {
        y45.j(context, "context");
        y45.j(m41Var, "nativeAdAssetsConverter");
        this.a = m41Var;
    }
}
