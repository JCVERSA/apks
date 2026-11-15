package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;

public final class oz1 {
    private final co0 a;
    private final od2 b;

    public oz1(co0 co0Var, go0 go0Var) {
        this(co0Var, go0Var, go0Var.h());
    }

    public final void a(View view, ln0 ln0Var) {
        y45.j(view, "skipControl");
        y45.j(ln0Var, "controlsState");
        if (this.b == null) {
            view.setVisibility(8);
            return;
        }
        view.setOnClickListener(new nz1(this.a));
        if (ln0Var.c()) {
            view.setVisibility(0);
        }
        view.setEnabled(ln0Var.c());
    }

    public oz1(co0 co0Var, go0 go0Var, od2 od2Var) {
        y45.j(co0Var, "instreamVastAdPlayer");
        y45.j(go0Var, "instreamVideoAd");
        this.a = co0Var;
        this.b = od2Var;
    }
}
