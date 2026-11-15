package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import javax.net.ssl.SSLSocketFactory;

public final class di0 {
    private final et1 a;
    private final e11 b;
    private final Context c;

    public di0(Context context, ft1 ft1Var) {
        y45.j(context, "context");
        y45.j(ft1Var, "sslSocketFactoryCreator");
        this.a = ft1Var;
        this.b = ei0.a(context);
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.c = applicationContext;
    }

    public final fi0 a() {
        SSLSocketFactory sSLSocketFactoryA = this.a.a(this.c);
        Context context = this.c;
        y45.j(context, "context");
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        if (ju1VarA != null) {
            ju1VarA.E();
        }
        return new fi0(this.b.a(sSLSocketFactoryA), zc.a());
    }
}
