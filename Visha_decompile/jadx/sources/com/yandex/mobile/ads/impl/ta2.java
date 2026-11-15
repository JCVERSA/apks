package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.List;

public final class ta2 extends i62<mb2, List<? extends mb2>> {
    private final ca2 C;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ta2(Context context, o3 o3Var, String str, zi2 zi2Var, mb2 mb2Var, zk2 zk2Var, ca2 ca2Var) {
        super(context, o3Var, 0, str, zi2Var, mb2Var, zk2Var, null, 1920);
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(str, "url");
        y45.j(zi2Var, "listener");
        y45.j(mb2Var, "wrapper");
        y45.j(zk2Var, "requestReporter");
        y45.j(ca2Var, "vastDataResponseParser");
        this.C = ca2Var;
    }

    @Override
    public final xq1<List<? extends mb2>> a(xc1 xc1Var, int i) {
        y45.j(xc1Var, "networkResponse");
        z92 z92VarA = this.C.a(xc1Var);
        if (z92VarA == null) {
            xq1<List<? extends mb2>> xq1VarA = xq1.a(new cg1("Can't parse VAST response."));
            y45.i(xq1VarA, "error(...)");
            return xq1VarA;
        }
        List<mb2> listB = z92VarA.b().b();
        if (listB.isEmpty()) {
            xq1<List<? extends mb2>> xq1VarA2 = xq1.a(new g50());
            y45.g(xq1VarA2);
            return xq1VarA2;
        }
        xq1<List<? extends mb2>> xq1VarA3 = xq1.a(listB, null);
        y45.g(xq1VarA3);
        return xq1VarA3;
    }
}
