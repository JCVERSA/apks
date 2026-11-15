package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;

public final class wg2<V extends View, T> {
    private final vg2<V, T> a;

    public wg2(vg2<V, T> vg2Var) {
        y45.j(vg2Var, "viewAdapter");
        this.a = vg2Var;
    }

    public final void a() {
        View viewB = this.a.b();
        if (viewB == null) {
            return;
        }
        this.a.a(viewB);
    }

    public final void b() {
        this.a.a();
    }

    public final void b(T t) {
        View viewB = this.a.b();
        if (viewB == null) {
            return;
        }
        this.a.b(viewB, t);
        viewB.setVisibility(0);
    }

    public final void a(ig<?> igVar, yg2 yg2Var, T t) {
        y45.j(igVar, "asset");
        y45.j(yg2Var, "viewConfigurator");
        if (this.a.b() == null) {
            return;
        }
        this.a.a(igVar, yg2Var, t);
    }

    public final boolean a(T t) {
        View viewB = this.a.b();
        return viewB != null && this.a.a(viewB, t);
    }
}
