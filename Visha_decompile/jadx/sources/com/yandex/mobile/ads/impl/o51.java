package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;

public final class o51 implements View.OnClickListener {
    private final ig<?> a;
    private final j3 b;
    private final g71 c;
    private final wo1 d;
    private final vr0 e;
    private final hc0 f;

    public o51(ig igVar, vr0 vr0Var, j3 j3Var, g71 g71Var, wo1 wo1Var, hc0 hc0Var) {
        y45.j(igVar, "asset");
        y45.j(j3Var, "adClickable");
        y45.j(g71Var, "nativeAdViewAdapter");
        y45.j(wo1Var, "renderedTimer");
        y45.j(hc0Var, "forceImpressionTrackingListener");
        this.a = igVar;
        this.b = j3Var;
        this.c = g71Var;
        this.d = wo1Var;
        this.e = vr0Var;
        this.f = hc0Var;
    }

    @Override
    public final void onClick(View view) {
        y45.j(view, "view");
        long jB = this.d.b();
        vr0 vr0Var = this.e;
        if (vr0Var == null || jB < vr0Var.b() || !this.a.e() || !this.b.a(view, this.a, this.e, this.c).a()) {
            return;
        }
        this.f.a();
    }
}
