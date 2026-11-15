package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import defpackage.y45;

public final class gp1 {
    private final rg2 a;
    private final sl b;
    private final ip1 c;
    private final ep1 d;

    public gp1(rg2 rg2Var, mp1 mp1Var) {
        y45.j(rg2Var, "videoViewAdapter");
        y45.j(mp1Var, "replayController");
        this.a = rg2Var;
        this.b = new sl();
        this.c = new ip1(rg2Var, mp1Var);
        this.d = new ep1();
    }

    public final void a() {
        yb1 yb1VarB = this.a.b();
        if (yb1VarB != null) {
            hp1 hp1VarB = yb1VarB.a().b();
            this.c.a(hp1VarB);
            Bitmap bitmap = yb1VarB.c().getBitmap();
            if (bitmap != null) {
                this.b.a(bitmap, new fp1(this, yb1VarB, hp1VarB));
            }
        }
    }
}
