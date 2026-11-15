package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import defpackage.y45;

public final class ta0 implements View.OnClickListener {
    private final gk a;
    private final yb b;
    private final r20 c;
    private final mg2 d;
    private final re2 e;

    public ta0(gk gkVar, yb ybVar, r20 r20Var, mg2 mg2Var, re2 re2Var) {
        y45.j(gkVar, "action");
        y45.j(ybVar, "adtuneRenderer");
        y45.j(r20Var, "divKitAdtuneRenderer");
        y45.j(mg2Var, "videoTracker");
        y45.j(re2Var, "videoEventUrlsTracker");
        this.a = gkVar;
        this.b = ybVar;
        this.c = r20Var;
        this.d = mg2Var;
        this.e = re2Var;
    }

    @Override
    public final void onClick(View view) {
        y45.j(view, "adtune");
        this.d.a("feedback");
        this.e.a(this.a.b(), null);
        gk gkVar = this.a;
        if (gkVar instanceof jb) {
            this.b.a(view, (jb) gkVar);
        } else if (gkVar instanceof n20) {
            r20 r20Var = this.c;
            Context context = view.getContext();
            y45.i(context, "getContext(...)");
            r20Var.a(context, (n20) gkVar);
        }
    }
}
