package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;

public final class kp1 implements View.OnClickListener {
    private final rg2 a;
    private final mp1 b;
    private final ip1 c;

    public kp1(rg2 rg2Var, mp1 mp1Var, ip1 ip1Var) {
        y45.j(rg2Var, "videoViewAdapter");
        y45.j(mp1Var, "replayController");
        y45.j(ip1Var, "replayViewConfigurator");
        this.a = rg2Var;
        this.b = mp1Var;
        this.c = ip1Var;
    }

    @Override
    public final void onClick(View view) {
        y45.j(view, "v");
        yb1 yb1VarB = this.a.b();
        if (yb1VarB != null) {
            hp1 hp1VarB = yb1VarB.a().b();
            this.c.getClass();
            ip1.b(hp1VarB);
            this.b.a(yb1VarB);
        }
    }
}
