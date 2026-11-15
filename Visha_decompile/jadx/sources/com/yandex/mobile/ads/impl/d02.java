package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;

public final class d02 implements dc1 {
    private final List<ig<?>> a;

    /* JADX WARN: Multi-variable type inference failed */
    public d02(List<? extends ig<?>> list) {
        this.a = list;
    }

    @Override
    public final void a() {
    }

    @Override
    public final void a(g71 g71Var) {
        y45.j(g71Var, "nativeAdViewAdapter");
    }

    @Override
    public final void a(g71 g71Var, bp bpVar) {
        y45.j(g71Var, "nativeAdViewAdapter");
        y45.j(bpVar, "clickListenerConfigurator");
        if (this.a != null) {
            ja jaVar = new ja(g71Var, bpVar);
            for (ig<?> igVar : this.a) {
                jg<?> jgVarA = g71Var.a(igVar);
                if (jgVarA == null) {
                    jgVarA = null;
                }
                if (jgVarA != null) {
                    jgVarA.c(igVar.d());
                    y45.h(igVar, "null cannot be cast to non-null type com.monetization.ads.network.model.Asset<kotlin.Any?>");
                    jgVarA.a(igVar, jaVar);
                }
            }
        }
    }
}
