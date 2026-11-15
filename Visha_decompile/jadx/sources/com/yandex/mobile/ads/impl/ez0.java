package com.yandex.mobile.ads.impl;

import com.monetization.ads.mediation.nativeads.MediatedNativeAd;
import defpackage.y45;

public final class ez0 implements ec1 {
    private final MediatedNativeAd a;
    private final xy0 b;
    private final l7 c;
    private final ec1 d;

    public ez0(MediatedNativeAd mediatedNativeAd, xy0 xy0Var, l7 l7Var, ec1 ec1Var) {
        y45.j(mediatedNativeAd, "mediatedNativeAd");
        y45.j(xy0Var, "mediatedNativeRenderingTracker");
        y45.j(l7Var, "adQualityVerifierController");
        y45.j(ec1Var, "sdkAdFactory");
        this.a = mediatedNativeAd;
        this.b = xy0Var;
        this.c = l7Var;
        this.d = ec1Var;
    }

    @Override
    public final dc1 a(g41 g41Var) {
        y45.j(g41Var, "nativeAd");
        return new yy0(this.d.a(g41Var), this.a, this.b, this.c);
    }
}
