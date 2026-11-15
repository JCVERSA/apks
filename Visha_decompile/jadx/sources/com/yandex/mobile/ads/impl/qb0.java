package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.widget.RelativeLayout;
import defpackage.y45;

public final class qb0 implements gs {
    private final rp a;

    public qb0(rp rpVar) {
        y45.j(rpVar, "closeButtonController");
        this.a = rpVar;
    }

    @Override
    public final RelativeLayout a(pd0 pd0Var, o8 o8Var) {
        y45.j(pd0Var, "contentView");
        y45.j(o8Var, "adResponse");
        Context context = pd0Var.getContext();
        y45.g(context);
        y45.j(context, "context");
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setBackgroundColor(0);
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        RelativeLayout.LayoutParams layoutParamsA = m8.a(context, (o8<?>) o8Var);
        int iA = wh2.a(context, 64.0f);
        layoutParamsA.width = Math.min(layoutParamsA.width + iA, eb0.a(context, "context").widthPixels);
        layoutParamsA.height = Math.min(layoutParamsA.height + iA, eb0.a(context, "context").heightPixels);
        relativeLayout.setLayoutParams(layoutParamsA);
        relativeLayout.addView(pd0Var, m8.a(context, (o8<?>) o8Var));
        relativeLayout.addView(this.a.d(), m8.a(context, pd0Var));
        return relativeLayout;
    }

    @Override
    public final void b() {
        this.a.b();
    }

    @Override
    public final void c() {
        this.a.c();
    }

    @Override
    public final void d() {
        this.a.invalidate();
    }

    @Override
    public final void a() {
        this.a.a();
    }

    @Override
    public final void a(boolean z) {
        this.a.a(z);
    }

    @Override
    public final void a(RelativeLayout relativeLayout) {
        y45.j(relativeLayout, "rootLayout");
        relativeLayout.setBackground(l8.a);
    }
}
