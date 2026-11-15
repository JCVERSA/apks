package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import defpackage.y45;

public final class pa0 implements z<oa0> {
    private final ya0 a;

    public pa0(ya0 ya0Var) {
        y45.j(ya0Var, "feedbackRenderer");
        this.a = ya0Var;
    }

    @Override
    public final gf0 a(View view, x xVar) {
        oa0 oa0Var = (oa0) xVar;
        y45.j(view, "view");
        y45.j(oa0Var, "action");
        Context context = view.getContext();
        ya0 ya0Var = this.a;
        y45.g(context);
        ya0Var.a(context, oa0Var);
        return new gf0(false);
    }
}
