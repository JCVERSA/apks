package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.ViewGroup;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;

public final class hr0<V extends ViewGroup> {
    private final gt1<V> a;

    public hr0() {
        this(new gt1());
    }

    public final V a(ViewGroup viewGroup, fr0<V> fr0Var) {
        y45.j(viewGroup, TtmlNode.RUBY_CONTAINER);
        y45.j(fr0Var, "layoutDesign");
        Context context = viewGroup.getContext();
        int iC = fr0Var.c();
        Class<V> clsD = fr0Var.d();
        gt1<V> gt1Var = this.a;
        y45.g(context);
        gt1Var.getClass();
        return (V) gt1.a(context, clsD, iC, viewGroup);
    }

    public hr0(gt1<V> gt1Var) {
        y45.j(gt1Var, "safeLayoutInflater");
        this.a = gt1Var;
    }
}
