package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class q60 {
    private final o3 a;
    private final o8<?> b;
    private final Context c;

    public q60(Context context, o8 o8Var, o3 o3Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        this.a = o3Var;
        this.b = o8Var;
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.c = applicationContext;
    }

    public final i70 a() {
        n60 n60VarA = new n60.b(this.c).a();
        ax0 ax0Var = new ax0(this.c, new zw0());
        Context context = this.c;
        o3 o3Var = this.a;
        o8<?> o8Var = this.b;
        o3Var.q().f();
        mf2 mf2Var = new mf2(context, o3Var, o8Var, nd.a(context, jn2.a, o3Var.q().b()), new uc2(o3Var, o8Var));
        y45.g(n60VarA);
        return new i70(n60VarA, ax0Var, mf2Var, new ra1(), new wf2());
    }
}
