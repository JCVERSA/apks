package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.concurrent.TimeUnit;

public final class kh1 extends qk<xc1> {
    private static final int x = (int) TimeUnit.SECONDS.toMillis(10);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kh1(Context context, String str, qk.a<xc1> aVar) {
        super(context, str, aVar);
        y45.j(context, "context");
        y45.j(str, "url");
        y45.j(aVar, "listener");
        a(context);
        r();
        s();
    }

    @Override
    public final xq1<xc1> a(xc1 xc1Var) {
        y45.j(xc1Var, "response");
        xq1<xc1> xq1VarA = xq1.a(xc1Var, wh0.a(xc1Var));
        y45.i(xq1VarA, "success(...)");
        return xq1VarA;
    }

    private final void a(Context context) {
        Integer numH;
        Integer numQ;
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        int iIntValue = (ju1VarA == null || (numQ = ju1VarA.Q()) == null) ? x : numQ.intValue();
        y45.j(context, "context");
        ju1 ju1VarA2 = pw1.a.a().a(context);
        a(new m00(1.0f, iIntValue, (ju1VarA2 == null || (numH = ju1VarA2.H()) == null) ? 0 : numH.intValue()));
    }
}
