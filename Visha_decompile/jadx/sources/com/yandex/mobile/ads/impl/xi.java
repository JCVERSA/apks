package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import defpackage.y45;

public final class xi extends h62 {
    private final np0 k;
    private final oj l;
    private final it0 m;
    private boolean n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xi(Context context, o8<String> o8Var, o3 o3Var, np0 np0Var, oj ojVar, it0 it0Var) {
        super(context, new ua(np0Var), o8Var, o3Var);
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(o3Var, "adConfiguration");
        y45.j(np0Var, "adView");
        y45.j(ojVar, "bannerShowEventListener");
        y45.j(it0Var, "mainThreadHandler");
        this.k = np0Var;
        this.l = ojVar;
        this.m = it0Var;
    }

    @Override
    public final boolean a(int i) {
        return wh2.a(this.k.findViewById(2), i);
    }

    @Override
    public final void c() {
        this.m.a();
        super.c();
    }

    @Override
    public final boolean k() {
        return wh2.c(this.k.findViewById(2));
    }

    @Override
    public final boolean l() {
        View viewFindViewById = this.k.findViewById(2);
        return viewFindViewById != null && wh2.b(viewFindViewById) >= 1;
    }

    @Override
    public final void onLeftApplication() {
        this.l.onLeftApplication();
    }

    @Override
    public final void onReturnedToApplication() {
        this.l.onReturnedToApplication();
    }

    @Override
    public final void a(t4 t4Var) {
        if (this.n) {
            return;
        }
        this.n = true;
        this.l.a(t4Var);
    }
}
