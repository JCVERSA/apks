package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.ViewGroup;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;
import java.util.ArrayList;

public final class kr0<V extends ViewGroup> {
    private final Context a;
    private final ViewGroup b;
    private final jr0<V> c;
    private final hr0<V> d;
    private final gr0<V> e;

    public kr0(Context context, ViewGroup viewGroup, ArrayList arrayList, jr0 jr0Var, hr0 hr0Var, gr0 gr0Var) {
        y45.j(context, "context");
        y45.j(viewGroup, TtmlNode.RUBY_CONTAINER);
        y45.j(arrayList, "designs");
        y45.j(jr0Var, "layoutDesignProvider");
        y45.j(hr0Var, "layoutDesignCreator");
        y45.j(gr0Var, "layoutDesignBinder");
        this.a = context;
        this.b = viewGroup;
        this.c = jr0Var;
        this.d = hr0Var;
        this.e = gr0Var;
    }

    public final boolean a() {
        ViewGroup viewGroupA;
        fr0<V> fr0VarA = this.c.a(this.a);
        if (fr0VarA == null || (viewGroupA = this.d.a(this.b, fr0VarA)) == null) {
            return false;
        }
        this.e.a(this.b, viewGroupA, fr0VarA);
        return true;
    }

    public final void b() {
        this.e.a(this.b);
    }
}
