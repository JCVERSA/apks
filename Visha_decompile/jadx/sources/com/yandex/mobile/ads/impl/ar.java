package com.yandex.mobile.ads.impl;

import android.view.ViewGroup;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;

public final class ar<V extends ViewGroup> implements b10<V> {
    private final b10<V>[] a;

    @SafeVarargs
    public ar(b10<V>... b10VarArr) {
        y45.j(b10VarArr, "designComponentBinders");
        this.a = b10VarArr;
    }

    @Override
    public final void a(V v) {
        y45.j(v, TtmlNode.RUBY_CONTAINER);
        for (b10<V> b10Var : this.a) {
            b10Var.a(v);
        }
    }

    @Override
    public final void c() {
        for (b10<V> b10Var : this.a) {
            b10Var.c();
        }
    }
}
