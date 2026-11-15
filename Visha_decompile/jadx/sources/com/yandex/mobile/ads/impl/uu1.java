package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class uu1 implements hq1<ju1> {
    private final pw1 a;
    private final ir1<ju1> b;
    private final su1 c;
    private final Context d;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public uu1(Context context, sp1 sp1Var) {
        this(context, sp1Var, pw1.a.a(), new xu1(sp1Var), new su1());
        int i = pw1.l;
    }

    @Override
    public final ju1 a(xc1 xc1Var) {
        y45.j(xc1Var, "networkResponse");
        return this.b.a(xc1Var);
    }

    @Override
    public final boolean a() {
        ju1 ju1VarA = this.a.a(this.d);
        return ju1VarA == null || this.c.a(ju1VarA);
    }

    public uu1(Context context, sp1 sp1Var, pw1 pw1Var, ir1<ju1> ir1Var, su1 su1Var) {
        y45.j(context, "context");
        y45.j(sp1Var, "reporter");
        y45.j(pw1Var, "sdkSettings");
        y45.j(ir1Var, "sdkConfigurationResponseParser");
        y45.j(su1Var, "sdkConfigurationRefreshChecker");
        this.a = pw1Var;
        this.b = ir1Var;
        this.c = su1Var;
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.d = applicationContext;
    }
}
