package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;

public final class mg {
    private final zb2<go0> a;
    private final ff1 b;
    private final mg2 c;
    private final no0 d;

    public mg(zb2<go0> zb2Var, ff1 ff1Var, mg2 mg2Var) {
        y45.j(zb2Var, "videoAdInfo");
        y45.j(ff1Var, "adClickHandler");
        y45.j(mg2Var, "videoTracker");
        this.a = zb2Var;
        this.b = ff1Var;
        this.c = mg2Var;
        this.d = new no0(new vu());
    }

    public final void a(View view, ig<?> igVar) {
        String strA;
        y45.j(view, "view");
        if (igVar == null || !igVar.e() || (strA = this.d.a(this.a.b(), igVar.b()).a()) == null) {
            return;
        }
        view.setOnClickListener(new yg(this.b, strA, igVar.b(), this.c));
    }
}
