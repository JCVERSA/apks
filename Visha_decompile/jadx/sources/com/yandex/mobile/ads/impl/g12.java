package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import defpackage.y45;

public final class g12 implements View.OnClickListener {
    private final i12 a;
    private final y82 b;

    public g12(i12 i12Var, y82 y82Var) {
        y45.j(i12Var, "socialAdInfo");
        y45.j(y82Var, "urlViewerLauncher");
        this.a = i12Var;
        this.b = y82Var;
    }

    @Override
    public final void onClick(View view) {
        y45.j(view, "v");
        Context context = view.getContext();
        String strA = this.a.a();
        y82 y82Var = this.b;
        y45.g(context);
        y82Var.a(context, strA);
    }
}
