package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class r41 {
    private final k62 a;
    private final y81 b;
    private final yz1 c;

    public r41(bv1 bv1Var) {
        this(bv1Var, new k62(), new y81(bv1Var), new yz1(bv1Var));
    }

    public final k81 a(Context context, s41 s41Var, sj0 sj0Var, s51 s51Var, e51 e51Var) {
        y45.j(context, "context");
        y45.j(s41Var, "nativeAdBlock");
        y45.j(sj0Var, "imageProvider");
        y45.j(s51Var, "nativeAdFactoriesProvider");
        y45.j(e51Var, "nativeAdControllers");
        gc0 gc0Var = new gc0();
        j81 j81Var = new j81(this.b.a(context, s41Var, sj0Var, s51Var, gc0Var, e51Var));
        return new k81(context, j81Var, sj0Var, this.c.a(context, s41Var, j81Var, s51Var, gc0Var), e51Var);
    }

    public r41(bv1 bv1Var, k62 k62Var, y81 y81Var, yz1 yz1Var) {
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(k62Var, "trackingDataCreator");
        y45.j(y81Var, "nativeGenericAdsCreator");
        y45.j(yz1Var, "sliderAdBinderConfigurationCreator");
        this.a = k62Var;
        this.b = y81Var;
        this.c = yz1Var;
    }

    public final fc1 a(s41 s41Var, g41 g41Var) {
        y45.j(s41Var, "nativeAdBlock");
        y45.j(g41Var, "nativeAd");
        k62 k62Var = this.a;
        List<ey1> listH = g41Var.h();
        List<ey1> listI = s41Var.c().i();
        k62Var.getClass();
        ArrayList arrayListA = k62.a(listH, listI);
        k62 k62Var2 = this.a;
        List<String> listF = g41Var.f();
        List<String> listG = s41Var.c().g();
        k62Var2.getClass();
        return new fc1(g41Var.b(), arrayListA, k62.a(listF, listG), g41Var.a(), g41Var.c());
    }
}
