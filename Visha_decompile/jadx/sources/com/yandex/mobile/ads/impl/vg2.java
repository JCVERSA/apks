package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.view.View;
import defpackage.af5;
import defpackage.y45;

public abstract class vg2<V extends View, T> {
    static final af5[] b = {ta.a(vg2.class, "viewReference", "getViewReference()Landroid/view/View;", 0)};
    private final go1 a;

    public vg2(V v) {
        y45.j(v, "view");
        this.a = ho1.a(v);
    }

    public void a() {
    }

    public abstract boolean a(V v, T t);

    public final V b() {
        return (V) this.a.getValue(this, b[0]);
    }

    public abstract void b(V v, T t);

    public final boolean c() {
        View viewB = b();
        if (viewB != null && !wh2.d(viewB)) {
            y45.j(viewB, "view");
            if (viewB.getWidth() >= 1 && viewB.getHeight() >= 1) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void a(V v) {
        y45.j(v, "view");
        v.setVisibility(8);
        v.setOnClickListener(null);
        v.setOnTouchListener(null);
        v.setSelected(false);
    }

    public void a(ig<?> igVar, yg2 yg2Var, T t) {
        y45.j(igVar, "asset");
        y45.j(yg2Var, "viewConfigurator");
        View viewB = b();
        if (viewB == null) {
            return;
        }
        yg2Var.a(viewB, igVar);
        yg2Var.a(igVar, new xg2(viewB));
    }
}
