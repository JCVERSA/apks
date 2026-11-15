package com.yandex.mobile.ads.impl;

import defpackage.y45;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;

public final class d61 {
    private final el0 a;

    public d61() {
        this(new el0());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Iterable, java.lang.Object, java.util.List] */
    public final String a(q61 q61Var) {
        ?? O;
        if (q61Var instanceof b02) {
            ArrayList arrayListD = ((b02) q61Var).d();
            O = new ArrayList();
            Iterator it = arrayListD.iterator();
            while (it.hasNext()) {
                String info = ((q61) it.next()).getInfo();
                if (info != null) {
                    O.add(info);
                }
            }
        } else {
            O = defpackage.y71.o(q61Var != null ? q61Var.getInfo() : null);
        }
        ?? r2 = O;
        this.a.getClass();
        y45.j(r2, "list");
        if (r2.isEmpty()) {
            return null;
        }
        return defpackage.i81.y0(r2, StringUtils.COMMA, "[", "]", 0, null, null, 56, null);
    }

    public d61(el0 el0Var) {
        y45.j(el0Var, "formatter");
        this.a = el0Var;
    }
}
