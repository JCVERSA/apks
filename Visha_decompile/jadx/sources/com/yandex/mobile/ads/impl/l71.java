package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class l71 implements dc1 {
    private final g41 a;
    private g71 b;

    public l71(g41 g41Var, g71 g71Var) {
        y45.j(g41Var, "nativeAd");
        this.a = g41Var;
        this.b = g71Var;
    }

    @Override
    public final void a(g71 g71Var) {
        y45.j(g71Var, "nativeAdViewAdapter");
        g71Var.a();
    }

    @Override
    public final void a(g71 g71Var, bp bpVar) {
        y45.j(g71Var, "nativeAdViewAdapter");
        y45.j(bpVar, "clickListenerConfigurator");
        this.b = g71Var;
        ra raVar = new ra(g71Var, bpVar, this.a.e(), new uh2());
        for (ig<?> igVar : this.a.b()) {
            jg<?> jgVarA = g71Var.a(igVar);
            if (jgVarA == null) {
                jgVarA = null;
            }
            if (jgVarA != null) {
                jgVarA.c(igVar.d());
                y45.h(igVar, "null cannot be cast to non-null type com.monetization.ads.network.model.Asset<kotlin.Any?>");
                jgVarA.a(igVar, raVar);
            }
        }
    }

    @Override
    public final void a() {
        g71 g71Var = this.b;
        if (g71Var != null) {
            for (ig<?> igVar : this.a.b()) {
                jg<?> jgVarA = g71Var.a(igVar);
                if (jgVarA instanceof y00) {
                    ((y00) jgVarA).b(igVar.d());
                }
            }
        }
    }
}
