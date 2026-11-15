package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class bp {
    private final j3 a;
    private final wo1 b;
    private final hc0 c;

    public bp(i3 i3Var, wo1 wo1Var, hc0 hc0Var) {
        y45.j(i3Var, "adClickable");
        y45.j(wo1Var, "renderedTimer");
        y45.j(hc0Var, "forceImpressionTrackingListener");
        this.a = i3Var;
        this.b = wo1Var;
        this.c = hc0Var;
    }

    public final void a(ig<?> igVar, vr0 vr0Var, g71 g71Var, ap apVar) {
        y45.j(igVar, "asset");
        y45.j(g71Var, "nativeAdViewAdapter");
        y45.j(apVar, "clickListenerConfigurable");
        if (!igVar.e() || vr0Var == null) {
            return;
        }
        apVar.a(vr0Var, new cp(igVar, this.a, g71Var, this.b, this.c));
    }
}
