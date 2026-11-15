package com.yandex.mobile.ads.impl;

import android.view.ViewGroup;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;

public final class gr0<V extends ViewGroup> {
    private b10<V> a;

    public final void a(ViewGroup viewGroup, V v, fr0<V> fr0Var) {
        y45.j(viewGroup, TtmlNode.RUBY_CONTAINER);
        y45.j(v, "designView");
        y45.j(fr0Var, "layoutDesign");
        try {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            viewGroup.removeAllViews();
            viewGroup.addView(v, layoutParams);
        } catch (Throwable unused) {
        }
        b10<V> b10VarA = fr0Var.a();
        this.a = b10VarA;
        if (b10VarA != null) {
            b10VarA.a(v);
        }
    }

    public final void a(ViewGroup viewGroup) {
        y45.j(viewGroup, TtmlNode.RUBY_CONTAINER);
        try {
            viewGroup.removeAllViews();
            b10<V> b10Var = this.a;
            if (b10Var != null) {
                b10Var.c();
            }
        } catch (Throwable unused) {
        }
    }
}
