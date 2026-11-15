package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.RelativeLayout;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.af5;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.MutablePropertyReference1Impl;

public final class kj<T extends ViewGroup> {
    static final af5[] d = {xq8.f(new MutablePropertyReference1Impl(kj.class, "parentDesignView", "getParentDesignView()Landroid/view/ViewGroup;", 0))};
    private final ViewTreeObserver.OnPreDrawListener a;
    private b10<T> b;
    private final go1 c;

    public kj(ViewTreeObserver.OnPreDrawListener onPreDrawListener) {
        y45.j(onPreDrawListener, "preDrawListener");
        this.a = onPreDrawListener;
        this.c = ho1.a(null);
    }

    public final void a(ViewGroup viewGroup, T t, fr0<T> fr0Var, gz1 gz1Var) {
        y45.j(viewGroup, TtmlNode.RUBY_CONTAINER);
        y45.j(t, "designView");
        y45.j(fr0Var, "layoutDesign");
        this.c.setValue(this, d[0], t);
        viewGroup.setVisibility(0);
        viewGroup.removeAllViews();
        Context context = viewGroup.getContext();
        y45.i(context, "getContext(...)");
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = this.a;
        int i = zg2.b;
        y45.j(context, "context");
        y45.j(t, "contentView");
        if (viewGroup.indexOfChild(t) == -1) {
            RelativeLayout.LayoutParams layoutParamsA = m8.a(context, gz1Var);
            viewGroup.setVisibility(0);
            t.setVisibility(0);
            viewGroup.addView(t, layoutParamsA);
            if (onPreDrawListener != null) {
                wh2.a(t, onPreDrawListener);
            }
        }
        b10<T> b10Var = (b10<T>) fr0Var.a();
        this.b = b10Var;
        if (b10Var != null) {
            b10Var.a(t);
        }
    }

    public final void a() {
        ViewGroup viewGroup = (ViewGroup) this.c.getValue(this, d[0]);
        if (viewGroup != null) {
            ah2.a(viewGroup);
        }
        b10<T> b10Var = this.b;
        if (b10Var != null) {
            b10Var.c();
        }
    }
}
