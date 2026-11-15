package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;

public final class ra implements yg2 {
    private final g71 a;
    private final bp b;
    private final vr0 c;
    private final uh2 d;

    public ra(g71 g71Var, bp bpVar, vr0 vr0Var, uh2 uh2Var) {
        y45.j(g71Var, "nativeAdViewAdapter");
        y45.j(bpVar, "clickListenerConfigurator");
        y45.j(uh2Var, "tagCreator");
        this.a = g71Var;
        this.b = bpVar;
        this.c = vr0Var;
        this.d = uh2Var;
    }

    @Override
    public final void a(ig<?> igVar, ap apVar) {
        y45.j(igVar, "asset");
        y45.j(apVar, "clickListenerConfigurable");
        vr0 vr0VarA = igVar.a();
        if (vr0VarA == null) {
            vr0VarA = this.c;
        }
        this.b.a(igVar, vr0VarA, this.a, apVar);
    }

    @Override
    public final void a(View view, ig igVar) {
        y45.j(igVar, "asset");
        y45.j(view, "view");
        if (view.getTag() == null) {
            uh2 uh2Var = this.d;
            String strB = igVar.b();
            uh2Var.getClass();
            view.setTag(uh2.a(strB));
        }
    }
}
