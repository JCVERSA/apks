package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.List;

public final class to0 {
    private final jm0 a;
    private final gf2 b;
    private final cn0 c;
    private final ro0 d;

    public to0(Context context, bv1 bv1Var, et etVar, jm0 jm0Var, gf2 gf2Var, am0 am0Var) {
        cn0 cn0Var = new cn0();
        this(context, bv1Var, etVar, jm0Var, gf2Var, am0Var, cn0Var, new ro0(context, bv1Var, etVar, jm0Var, cn0Var, gf2Var, am0Var));
    }

    public final void a(t70 t70Var, List<xb2> list) {
        y45.j(t70Var, "instreamAdView");
        y45.j(list, "friendlyOverlays");
        this.c.a(t70Var, list);
        this.a.a();
        this.b.g();
        this.d.a();
    }

    public final void b() {
        this.d.d();
    }

    public final void c() {
        this.a.a();
        this.d.h();
    }

    public final void d() {
        this.d.j();
        this.c.b();
    }

    public to0(Context context, bv1 bv1Var, et etVar, jm0 jm0Var, gf2 gf2Var, am0 am0Var, cn0 cn0Var, ro0 ro0Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(etVar, "instreamVideoAd");
        y45.j(jm0Var, "instreamAdPlayerController");
        y45.j(gf2Var, "videoPlayerController");
        y45.j(am0Var, "customUiElementsHolder");
        y45.j(cn0Var, "instreamAdViewsHolderManager");
        y45.j(ro0Var, "instreamVideoPresenter");
        this.a = jm0Var;
        this.b = gf2Var;
        this.c = cn0Var;
        this.d = ro0Var;
    }

    public final void a() {
        this.d.c();
    }

    public final void a(lo0 lo0Var) {
        this.d.a(lo0Var);
    }

    public final void a(so0 so0Var) {
        this.d.a(so0Var);
    }
}
