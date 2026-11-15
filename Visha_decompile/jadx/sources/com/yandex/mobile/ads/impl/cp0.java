package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.HashMap;
import java.util.Map;

public final class cp0 extends qk<rx> {
    private final Context x;
    private final hq1<rx> y;
    private final Map<String, String> z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cp0(Context context, String str, hq1 hq1Var, Map map, nl0 nl0Var) {
        super(context, str, nl0Var);
        y45.j(context, "context");
        y45.j(str, "url");
        y45.j(hq1Var, "requestPolicy");
        y45.j(map, "customHeaders");
        y45.j(nl0Var, "listener");
        this.x = context;
        this.y = hq1Var;
        this.z = map;
    }

    @Override
    public final xq1<rx> a(xc1 xc1Var) {
        y45.j(xc1Var, "response");
        if (200 != xc1Var.a) {
            xq1<rx> xq1VarA = xq1.a(new r3(x3.e, xc1Var));
            y45.g(xq1VarA);
            return xq1VarA;
        }
        rx rxVarA = this.y.a(xc1Var);
        xq1<rx> xq1VarA2 = rxVarA != null ? xq1.a(rxVarA, wh0.a(xc1Var)) : xq1.a(new r3(x3.c, xc1Var));
        y45.g(xq1VarA2);
        return xq1VarA2;
    }

    @Override
    public final si2 b(si2 si2Var) {
        y45.j(si2Var, "volleyError");
        sp0.c(new Object[0]);
        return super.b(si2Var);
    }

    @Override
    public final Map<String, String> e() {
        HashMap map = new HashMap();
        Context context = this.x;
        y45.j(context, "context");
        y45.j(map, "headers");
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        if (ju1VarA != null && ju1VarA.c0()) {
            map.put(vh0.V.a(), "1");
        }
        map.putAll(this.z);
        return map;
    }
}
