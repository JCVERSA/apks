package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.HashMap;
import java.util.Map;

public final class tu1 extends qk<ju1> {
    private final mq1 A;
    private final Context x;
    private final hq1<ju1> y;
    private final Map<String, String> z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tu1(Context context, String str, uu1 uu1Var, Map map, vu1 vu1Var, vu1 vu1Var2) {
        super(context, 0, str, vu1Var2, vu1Var);
        y45.j(context, "context");
        y45.j(str, "url");
        y45.j(uu1Var, "requestPolicy");
        y45.j(map, "customHeaders");
        y45.j(vu1Var, "requestListener");
        y45.j(vu1Var2, "listener");
        this.x = context;
        this.y = uu1Var;
        this.z = map;
        r();
        s();
        this.A = mq1.c;
    }

    @Override
    public final xq1<ju1> a(xc1 xc1Var) {
        x3 x3Var;
        y45.j(xc1Var, "response");
        a(Integer.valueOf(xc1Var.a));
        if (200 == xc1Var.a) {
            ju1 ju1VarA = this.y.a(xc1Var);
            if (ju1VarA != null) {
                Map<String, String> mapL = xc1Var.c;
                if (mapL == null) {
                    mapL = kotlin.collections.a.l();
                }
                a(mapL);
                xq1<ju1> xq1VarA = xq1.a(ju1VarA, wh0.a(xc1Var));
                y45.i(xq1VarA, "success(...)");
                return xq1VarA;
            }
            x3Var = x3.c;
        } else {
            x3Var = x3.e;
        }
        xq1<ju1> xq1VarA2 = xq1.a(new r3(x3Var, xc1Var));
        y45.i(xq1VarA2, "error(...)");
        return xq1VarA2;
    }

    @Override
    public final si2 b(si2 si2Var) {
        y45.j(si2Var, "volleyError");
        sp0.c(new Object[0]);
        int i = r3.d;
        return super.b((si2) r3.a.a(si2Var));
    }

    @Override
    public final Map<String, String> e() throws ai {
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

    @Override
    public final mq1 w() {
        return this.A;
    }
}
