package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;
import java.util.Iterator;

public final class kb implements z<jb> {
    private final yb a;
    private final v9 b;
    private final tp1 c;

    public kb(yb ybVar, v9 v9Var, tp1 tp1Var) {
        y45.j(ybVar, "adtuneRenderer");
        y45.j(v9Var, "adTracker");
        y45.j(tp1Var, "reporter");
        this.a = ybVar;
        this.b = v9Var;
        this.c = tp1Var;
    }

    @Override
    public final gf0 a(View view, x xVar) {
        jb jbVar = (jb) xVar;
        y45.j(view, "view");
        y45.j(jbVar, "action");
        Iterator<String> it = jbVar.b().iterator();
        while (it.hasNext()) {
            this.b.a(it.next(), z62.b);
        }
        this.a.a(view, jbVar);
        this.c.a(op1.b.j);
        return new gf0(false);
    }
}
