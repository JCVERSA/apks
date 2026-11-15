package com.yandex.mobile.ads.impl;

import android.view.View;
import android.view.ViewTreeObserver;
import defpackage.af5;
import defpackage.y45;

public final class i71 implements ViewTreeObserver.OnGlobalLayoutListener {
    static final af5[] d = {ta.a(i71.class, "viewReference", "getViewReference()Landroid/view/View;", 0)};
    private final v62.a a;
    private final go1 b;
    private Integer c;

    public i71(View view, v62.a aVar) {
        y45.j(view, "view");
        y45.j(aVar, "trackingListener");
        this.a = aVar;
        this.b = ho1.a(view);
    }

    public final void a() {
        ViewTreeObserver viewTreeObserver;
        View view = (View) this.b.getValue(this, d[0]);
        if (view == null || (viewTreeObserver = view.getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(this);
    }

    public final void b() {
        ViewTreeObserver viewTreeObserver;
        View view = (View) this.b.getValue(this, d[0]);
        if (view == null || (viewTreeObserver = view.getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.removeOnGlobalLayoutListener(this);
    }

    @Override
    public final void onGlobalLayout() {
        View view = (View) this.b.getValue(this, d[0]);
        if (view != null) {
            int visibility = view.getVisibility();
            Integer num = this.c;
            if (num != null && visibility == num.intValue()) {
                return;
            }
            this.c = Integer.valueOf(visibility);
            if (visibility == 0) {
                this.a.a();
            } else {
                this.a.b();
            }
        }
    }
}
