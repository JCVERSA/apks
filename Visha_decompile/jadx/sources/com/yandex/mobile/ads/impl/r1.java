package com.yandex.mobile.ads.impl;

import android.app.Activity;
import defpackage.y45;

public final class r1 implements m1 {
    private final Activity a;
    private final c1 b;
    private final u0 c;

    public r1(Activity activity, c1 c1Var, u0 u0Var) {
        y45.j(activity, "activity");
        y45.j(c1Var, "adActivityData");
        y45.j(u0Var, "activityResultRegistrar");
        this.a = activity;
        this.b = c1Var;
        this.c = u0Var;
    }

    @Override
    public final void a() {
    }

    @Override
    public final void b() {
    }

    @Override
    public final void c() {
        this.c.a(this.a, this.b);
    }

    @Override
    public final void d() {
    }

    @Override
    public final boolean e() {
        return true;
    }

    @Override
    public final void g() {
    }

    @Override
    public final void onAdClosed() {
    }
}
