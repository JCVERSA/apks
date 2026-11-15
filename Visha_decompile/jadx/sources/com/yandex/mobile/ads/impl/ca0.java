package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.ViewGroup;
import defpackage.y45;

public final class ca0 extends ma0 {
    private final ViewGroup a;
    private final p90 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ca0(o3 o3Var, ViewGroup viewGroup, st stVar, qe2 qe2Var, p90 p90Var) {
        super(viewGroup, 0);
        y45.j(o3Var, "adConfiguration");
        y45.j(viewGroup, "nativeAdView");
        y45.j(stVar, "adEventListener");
        y45.j(qe2Var, "videoEventController");
        y45.j(p90Var, "feedItemBinder");
        this.a = viewGroup;
        this.b = p90Var;
    }

    public final void a(n90 n90Var) {
        y45.j(n90Var, "feedItem");
        p90 p90Var = this.b;
        Context context = this.a.getContext();
        y45.i(context, "getContext(...)");
        p90Var.a(context, n90Var.a(), n90Var.c(), n90Var.b());
    }

    public final void a() {
        this.b.b();
    }
}
