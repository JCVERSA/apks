package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;

public final class ja implements yg2 {
    private final g71 a;
    private final bp b;

    public ja(g71 g71Var, bp bpVar) {
        y45.j(g71Var, "nativeAdViewAdapter");
        y45.j(bpVar, "clickListenerConfigurator");
        this.a = g71Var;
        this.b = bpVar;
    }

    @Override
    public final void a(ig<?> igVar, ap apVar) {
        y45.j(igVar, "asset");
        y45.j(apVar, "clickListenerConfigurable");
        this.b.a(igVar, igVar.a(), this.a, apVar);
    }

    @Override
    public final void a(View view, ig igVar) {
        y45.j(igVar, "asset");
        y45.j(view, "view");
    }
}
