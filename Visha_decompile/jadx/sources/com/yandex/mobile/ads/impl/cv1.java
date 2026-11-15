package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import javax.net.ssl.SSLSocketFactory;

public final class cv1 {
    private final et1 a;

    public cv1(et1 et1Var) {
        y45.j(et1Var, "sslSocketFactoryCreator");
        this.a = et1Var;
    }

    public final dv1 a(Context context) {
        y45.j(context, "context");
        String strA = zc.a().a();
        SSLSocketFactory sSLSocketFactoryA = this.a.a(context);
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        return new dv1(strA, sSLSocketFactoryA, ju1VarA != null && ju1VarA.z0());
    }
}
