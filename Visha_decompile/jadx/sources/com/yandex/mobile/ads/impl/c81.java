package com.yandex.mobile.ads.impl;

import android.view.ViewGroup;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;

public final class c81<V extends ViewGroup> implements b10<V> {
    private final e81 a;

    public c81(n91 n91Var, qe2 qe2Var) {
        this(n91Var, qe2Var, new d81(qe2Var, n91Var));
    }

    @Override
    public final void a(V v) {
        y45.j(v, TtmlNode.RUBY_CONTAINER);
        e81 e81Var = this.a;
        if (e81Var != null) {
            e81Var.d();
        }
    }

    @Override
    public final void c() {
        e81 e81Var = this.a;
        if (e81Var != null) {
            e81Var.c();
        }
    }

    public c81(n91 n91Var, qe2 qe2Var, d81 d81Var) {
        y45.j(n91Var, "nativeMediaContent");
        y45.j(qe2Var, "videoEventController");
        y45.j(d81Var, "contentCompleteControllerFactory");
        this.a = d81Var.a();
    }
}
