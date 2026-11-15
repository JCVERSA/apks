package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;

public final class qp implements View.OnClickListener {
    private final xc0 a;
    private final gd0 b;
    private final dw c;

    public qp(xc0 xc0Var, gd0 gd0Var, dw dwVar) {
        y45.j(xc0Var, "fullScreenCloseButtonListener");
        y45.j(gd0Var, "fullScreenHtmlWebViewAdapter");
        y45.j(dwVar, "debugEventsReporter");
        this.a = xc0Var;
        this.b = gd0Var;
        this.c = dwVar;
    }

    @Override
    public final void onClick(View view) {
        this.b.a();
        this.a.c();
        this.c.a(cw.c);
    }
}
