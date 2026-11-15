package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.af5;
import defpackage.y45;

public final class n71 implements View.OnAttachStateChangeListener {
    static final af5[] e = {ta.a(n71.class, "viewReference", "getViewReference()Landroid/view/View;", 0)};
    private final v62.a a;
    private final j71 b;
    private i71 c;
    private final go1 d;

    public n71(View view, a91 a91Var, j71 j71Var) {
        y45.j(view, "view");
        y45.j(a91Var, "trackingListener");
        y45.j(j71Var, "globalLayoutListenerFactory");
        this.a = a91Var;
        this.b = j71Var;
        this.d = ho1.a(view);
    }

    public final void a() {
        go1 go1Var = this.d;
        af5[] af5VarArr = e;
        View view = (View) go1Var.getValue(this, af5VarArr[0]);
        if (view != null) {
            view.addOnAttachStateChangeListener(this);
        }
        View view2 = (View) this.d.getValue(this, af5VarArr[0]);
        if (view2 != null && view2.isAttachedToWindow()) {
            j71 j71Var = this.b;
            v62.a aVar = this.a;
            j71Var.getClass();
            y45.j(view2, "nativeAdView");
            y45.j(aVar, "trackingListener");
            i71 i71Var = new i71(view2, aVar);
            this.c = i71Var;
            i71Var.a();
        }
    }

    public final void b() {
        i71 i71Var = this.c;
        if (i71Var != null) {
            i71Var.b();
        }
        this.c = null;
        View view = (View) this.d.getValue(this, e[0]);
        if (view != null) {
            view.removeOnAttachStateChangeListener(this);
        }
    }

    @Override
    public final void onViewAttachedToWindow(View view) {
        y45.j(view, "v");
        this.a.a();
        View view2 = (View) this.d.getValue(this, e[0]);
        if (view2 != null && view2.isAttachedToWindow()) {
            j71 j71Var = this.b;
            v62.a aVar = this.a;
            j71Var.getClass();
            y45.j(view2, "nativeAdView");
            y45.j(aVar, "trackingListener");
            i71 i71Var = new i71(view2, aVar);
            this.c = i71Var;
            i71Var.a();
        }
    }

    @Override
    public final void onViewDetachedFromWindow(View view) {
        y45.j(view, "v");
        i71 i71Var = this.c;
        if (i71Var != null) {
            i71Var.b();
        }
        this.c = null;
        this.a.b();
    }
}
