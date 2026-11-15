package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import defpackage.y45;

public final class zm0 implements View.OnClickListener {
    private final zb2<go0> a;
    private final mg2 b;
    private final lo0 c;
    private final he2 d;
    private final s82 e;
    private final ff1 f;

    public zm0(Context context, bv1 bv1Var, gt gtVar, zb2 zb2Var, mg2 mg2Var, lo0 lo0Var, he2 he2Var) {
        this(context, bv1Var, gtVar, zb2Var, mg2Var, lo0Var, he2Var, new yn0(context, bv1Var, gtVar, zb2Var), new s82(context));
    }

    @Override
    public final void onClick(View view) {
        y45.j(view, "v");
        this.b.m();
        this.c.i(this.a.d());
        String strA = this.d.a();
        if (strA == null || strA.length() == 0) {
            return;
        }
        this.f.a(this.e.a(strA));
    }

    public zm0(Context context, bv1 bv1Var, gt gtVar, zb2<go0> zb2Var, mg2 mg2Var, lo0 lo0Var, he2 he2Var, yn0 yn0Var, s82 s82Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(gtVar, "coreInstreamAdBreak");
        y45.j(zb2Var, "videoAdInfo");
        y45.j(mg2Var, "videoTracker");
        y45.j(lo0Var, "playbackListener");
        y45.j(he2Var, "videoClicks");
        y45.j(yn0Var, "openUrlHandlerProvider");
        y45.j(s82Var, "urlModifier");
        this.a = zb2Var;
        this.b = mg2Var;
        this.c = lo0Var;
        this.d = he2Var;
        this.e = s82Var;
        this.f = yn0Var.a();
    }
}
