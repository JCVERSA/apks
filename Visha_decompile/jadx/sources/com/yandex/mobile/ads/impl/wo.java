package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import defpackage.y45;

public final class wo {
    private final zb2<go0> a;
    private final View.OnClickListener b;
    private final l10 c;

    public wo(Context context, bv1 bv1Var, gt gtVar, zb2<go0> zb2Var, mg2 mg2Var, lo0 lo0Var, he2 he2Var, View.OnClickListener onClickListener, l10 l10Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(gtVar, "coreInstreamAdBreak");
        y45.j(zb2Var, "videoAdInfo");
        y45.j(mg2Var, "videoTracker");
        y45.j(lo0Var, "playbackListener");
        y45.j(he2Var, "videoClicks");
        y45.j(onClickListener, "clickListener");
        y45.j(l10Var, "deviceTypeProvider");
        this.a = zb2Var;
        this.b = onClickListener;
        this.c = l10Var;
    }

    public final void a(View view) {
        y45.j(view, "clickControl");
        l10 l10Var = this.c;
        Context context = view.getContext();
        y45.i(context, "getContext(...)");
        k10 k10VarA = l10Var.a(context);
        String strC = this.a.b().c();
        if ((strC == null || strC.length() == 0) || k10VarA == k10.d) {
            view.setVisibility(8);
        } else {
            view.setOnClickListener(this.b);
        }
    }
}
