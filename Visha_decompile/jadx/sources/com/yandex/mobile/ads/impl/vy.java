package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import defpackage.y45;

public final class vy implements z<uy> {
    private final yy a;

    public vy(yy yyVar) {
        y45.j(yyVar, "deeplinkRenderer");
        this.a = yyVar;
    }

    @Override
    public final gf0 a(View view, x xVar) {
        uy uyVar = (uy) xVar;
        y45.j(view, "view");
        y45.j(uyVar, "action");
        Context context = view.getContext();
        yy yyVar = this.a;
        y45.g(context);
        yyVar.a(context, uyVar);
        return new gf0(true);
    }
}
