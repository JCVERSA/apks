package com.yandex.mobile.ads.impl;

import android.app.Activity;
import android.content.Context;
import defpackage.af5;
import defpackage.y45;

public final class w62 implements r0 {
    static final af5[] d = {ta.a(w62.class, "contextReference", "getContextReference()Landroid/content/Context;", 0)};
    private final v62.a a;
    private final g0 b;
    private final go1 c;

    public w62(Activity activity, a91 a91Var, g0 g0Var) {
        y45.j(activity, "context");
        y45.j(a91Var, "trackingListener");
        y45.j(g0Var, "activityBackgroundListener");
        this.a = a91Var;
        this.b = g0Var;
        this.c = ho1.a(activity);
    }

    @Override
    public final void a(Activity activity) {
        y45.j(activity, "activity");
        Context context = (Context) this.c.getValue(this, d[0]);
        if (context == null || !y45.e(context, activity)) {
            return;
        }
        this.a.b();
    }

    @Override
    public final void b(Activity activity) {
        y45.j(activity, "activity");
        Context context = (Context) this.c.getValue(this, d[0]);
        if (context == null || !y45.e(context, activity)) {
            return;
        }
        this.a.a();
    }

    public final void c(Activity activity) {
        y45.j(activity, "activityContext");
        this.b.b(activity, this);
    }

    public final void a(Context context) {
        y45.j(context, "context");
        this.b.a(context, this);
    }
}
