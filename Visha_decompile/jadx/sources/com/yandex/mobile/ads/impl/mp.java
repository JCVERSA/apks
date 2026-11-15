package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;

public final class mp implements z<x> {
    private final tp1 a;
    private final p51 b;

    public mp(tp1 tp1Var, p51 p51Var) {
        y45.j(tp1Var, "reporter");
        y45.j(p51Var, "nativeAdEventController");
        this.a = tp1Var;
        this.b = p51Var;
    }

    @Override
    public final gf0 a(View view, x xVar) {
        y45.j(view, "view");
        y45.j(xVar, "action");
        this.b.a();
        this.a.a(op1.b.D);
        return new gf0(false);
    }
}
