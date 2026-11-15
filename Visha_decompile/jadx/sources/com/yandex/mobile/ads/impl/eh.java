package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;
import java.util.Collection;

public final class eh {
    private final Collection<String> a;

    public eh() {
        this(defpackage.y71.k());
    }

    public final k71 a(View view, j41 j41Var) {
        y45.j(view, "view");
        y45.j(j41Var, "viewProvider");
        k71.a aVar = new k71.a(view, f81.c, kotlin.collections.a.l());
        k71.a aVarE = aVar.a(j41Var.h(view)).b(j41Var.a(view)).c(j41Var.e(view)).d(j41Var.n(view)).a(j41Var.g(view)).b(j41Var.l(view)).c(j41Var.o(view)).a(j41Var.c(view)).a(j41Var.b(view)).a(j41Var.k(view)).e(j41Var.d(view));
        View viewI = j41Var.i(view);
        if (!(viewI instanceof mn1)) {
            viewI = null;
        }
        aVarE.a(viewI).f(j41Var.p(view)).g(j41Var.m(view)).h(j41Var.j(view)).i(j41Var.f(view));
        for (String str : this.a) {
            View viewA = j41Var.a(view, str);
            if (viewA != null) {
                aVar.a(viewA, str);
            }
        }
        return new k71(aVar, 0);
    }

    public eh(Collection<String> collection) {
        y45.j(collection, "supportedAssetNames");
        this.a = collection;
    }
}
