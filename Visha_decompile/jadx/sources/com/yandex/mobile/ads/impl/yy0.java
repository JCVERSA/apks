package com.yandex.mobile.ads.impl;

import android.view.View;
import com.monetization.ads.mediation.nativeads.MediatedNativeAd;
import defpackage.y45;

public final class yy0 implements dc1 {
    private final dc1 a;
    private final MediatedNativeAd b;
    private final xy0 c;
    private final l7 d;
    private boolean e;

    public yy0(dc1 dc1Var, MediatedNativeAd mediatedNativeAd, xy0 xy0Var, l7 l7Var) {
        y45.j(dc1Var, "nativeAdViewRenderer");
        y45.j(mediatedNativeAd, "mediatedNativeAd");
        y45.j(xy0Var, "mediatedNativeRenderingTracker");
        y45.j(l7Var, "adQualityVerifierController");
        this.a = dc1Var;
        this.b = mediatedNativeAd;
        this.c = xy0Var;
        this.d = l7Var;
    }

    @Override
    public final void a(g71 g71Var) {
        y45.j(g71Var, "nativeAdViewAdapter");
        this.a.a(g71Var);
        q71 q71VarG = g71Var.g();
        View viewE = g71Var.e();
        if (viewE != null) {
            this.b.unbindNativeAd(new uy0(viewE, q71VarG));
        }
        if (this.e) {
            this.d.d();
        }
    }

    @Override
    public final void a(g71 g71Var, bp bpVar) {
        y45.j(g71Var, "nativeAdViewAdapter");
        y45.j(bpVar, "clickListenerConfigurator");
        this.a.a(g71Var, bpVar);
        q71 q71VarG = g71Var.g();
        View viewE = g71Var.e();
        if (viewE != null) {
            this.b.bindNativeAd(new uy0(viewE, q71VarG));
        }
        this.d.c();
        if (g71Var.e() == null || this.e) {
            return;
        }
        this.e = true;
        this.c.a();
    }

    @Override
    public final void a() {
        this.a.a();
    }
}
