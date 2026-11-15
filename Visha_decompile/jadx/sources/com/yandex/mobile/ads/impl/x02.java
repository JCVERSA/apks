package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;

public final class x02 implements z<w02> {
    private final hy1 a;
    private final f12 b;

    public x02(hy1 hy1Var, f12 f12Var) {
        y45.j(hy1Var, "showSocialActionsReporter");
        y45.j(f12Var, "socialActionRenderer");
        this.a = hy1Var;
        this.b = f12Var;
    }

    @Override
    public final gf0 a(View view, x xVar) {
        w02 w02Var = (w02) xVar;
        y45.j(view, "view");
        y45.j(w02Var, "action");
        this.a.a(w02Var.c());
        this.b.a(view, w02Var);
        return new gf0(false);
    }
}
