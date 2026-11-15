package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;

public class fz<V extends View, T> implements jg<T> {
    private final vg2<V, T> a;

    public fz(vg2<V, T> vg2Var) {
        y45.j(vg2Var, "viewAdapter");
        this.a = vg2Var;
    }

    @Override
    public final void a() {
        View viewB = this.a.b();
        if (viewB == null) {
            return;
        }
        this.a.a(viewB);
    }

    @Override
    public final boolean b() {
        return this.a.b() != null;
    }

    @Override
    public final lh2 c() {
        View viewB = this.a.b();
        if (viewB == null) {
            return null;
        }
        y45.j(viewB, "view");
        return new lh2(viewB.getWidth(), viewB.getHeight());
    }

    @Override
    public final boolean d() {
        return wh2.a(this.a.b(), 100);
    }

    @Override
    public final void destroy() {
    }

    @Override
    public final boolean e() {
        return this.a.c();
    }

    @Override
    public final void a(ig<T> igVar, yg2 yg2Var) {
        y45.j(igVar, "asset");
        y45.j(yg2Var, "viewConfigurator");
        this.a.a(igVar, yg2Var, igVar.d());
    }

    public void b(T t) {
        c(t);
    }

    @Override
    public final void c(T t) {
        View viewB = this.a.b();
        if (viewB == null) {
            return;
        }
        this.a.b(viewB, t);
        viewB.setVisibility(0);
    }

    @Override
    public final boolean a(T t) {
        View viewB = this.a.b();
        return viewB != null && this.a.a(viewB, t);
    }
}
