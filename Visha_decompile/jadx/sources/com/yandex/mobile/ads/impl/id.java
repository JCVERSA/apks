package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.Map;

public final class id {
    private final Context a;
    private final le b;
    private final rp1 c;

    public id(Context context) {
        this(context, jd.a(), new rp1());
    }

    public final void a(op1.b bVar, Map<String, ? extends Object> map, String str, t4 t4Var) {
        y45.j(bVar, "reportType");
        y45.j(map, "reportData");
        int i = pw1.l;
        pw1 pw1VarA = pw1.a.a();
        ju1 ju1VarA = pw1VarA.a(this.a);
        if (pw1VarA.g()) {
            if (ju1VarA == null || ju1VarA.k()) {
                this.c.getClass();
                je jeVarA = rp1.a(bVar, map, str, t4Var);
                if (jeVarA != null) {
                    this.b.a(jeVarA);
                }
            }
        }
    }

    public id(Context context, le leVar, rp1 rp1Var) {
        y45.j(context, "context");
        y45.j(leVar, "reporter");
        y45.j(rp1Var, "mapper");
        this.a = context;
        this.b = leVar;
        this.c = rp1Var;
    }
}
