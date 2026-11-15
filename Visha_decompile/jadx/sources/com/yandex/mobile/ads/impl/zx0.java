package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.monetization.ads.mediation.base.a;
import defpackage.y45;
import java.util.List;

public final class zx0<T extends com.monetization.ads.mediation.base.a> {
    private final List<lz0> a;
    private final e80 b;
    private final cy0<T> c;
    private final ux0 d;
    private int e;

    public zx0(List list, ly0 ly0Var, gy0 gy0Var) {
        this(list, ly0Var, gy0Var, new cy0(gy0Var), new ux0());
    }

    public final qx0<T> a(Context context, Class<T> cls) {
        y45.j(context, "context");
        y45.j(cls, "clazz");
        while (this.e < this.a.size()) {
            List<lz0> list = this.a;
            int i = this.e;
            this.e = i + 1;
            lz0 lz0Var = list.get(i);
            com.monetization.ads.mediation.base.a aVarA = this.c.a(context, lz0Var, cls);
            if (aVarA != null) {
                this.d.getClass();
                y45.j(aVarA, "mediatedAdapter");
                return new qx0<>(aVarA, lz0Var, new tx0(aVarA), this.b);
            }
        }
        return null;
    }

    public zx0(List list, ly0 ly0Var, gy0 gy0Var, cy0 cy0Var, ux0 ux0Var) {
        y45.j(list, "mediationNetworks");
        y45.j(ly0Var, "extrasCreator");
        y45.j(gy0Var, "mediatedAdapterReporter");
        y45.j(cy0Var, "mediatedAdapterCreator");
        y45.j(ux0Var, "mediatedAdDataFactory");
        this.a = list;
        this.b = ly0Var;
        this.c = cy0Var;
        this.d = ux0Var;
    }
}
