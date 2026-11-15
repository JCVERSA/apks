package com.yandex.mobile.ads.impl;

import android.app.Activity;
import android.content.res.Configuration;
import android.widget.RelativeLayout;
import defpackage.y45;

public final class b1 {
    private final Activity a;
    private final RelativeLayout b;
    private final m1 c;
    private final e1 d;
    private final uh2 e;

    public b1(Activity activity, RelativeLayout relativeLayout, m1 m1Var, e1 e1Var, uh2 uh2Var) {
        y45.j(activity, "activity");
        y45.j(relativeLayout, "rootLayout");
        y45.j(m1Var, "adActivityPresentController");
        y45.j(e1Var, "adActivityEventController");
        y45.j(uh2Var, "tagCreator");
        this.a = activity;
        this.b = relativeLayout;
        this.c = m1Var;
        this.d = e1Var;
        this.e = uh2Var;
    }

    public final void a(Configuration configuration) {
        y45.j(configuration, "config");
        this.d.a(configuration);
    }

    public final void b() {
        this.c.g();
        this.c.c();
        RelativeLayout relativeLayout = this.b;
        this.e.getClass();
        relativeLayout.setTag(uh2.a("root_layout"));
        this.a.setContentView(this.b);
    }

    public final boolean c() {
        return this.c.e();
    }

    public final void d() {
        this.c.b();
        this.d.a();
    }

    public final void e() {
        this.c.a();
        this.d.b();
    }

    public final void a() {
        this.c.onAdClosed();
        this.c.d();
        this.b.removeAllViews();
    }
}
