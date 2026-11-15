package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.monetization.ads.mediation.base.a;
import defpackage.y45;
import java.util.Map;

public final class qx0<T extends com.monetization.ads.mediation.base.a> {
    private final T a;
    private final lz0 b;
    private final tx0 c;
    private final e80 d;

    public qx0(T t, lz0 lz0Var, tx0 tx0Var, e80 e80Var) {
        y45.j(t, "mediatedAdapter");
        y45.j(lz0Var, "mediationNetwork");
        y45.j(tx0Var, "mediatedAdData");
        y45.j(e80Var, "extrasCreator");
        this.a = t;
        this.b = lz0Var;
        this.c = tx0Var;
        this.d = e80Var;
    }

    public final Map<String, Object> a(Context context) {
        y45.j(context, "context");
        return this.d.a(context);
    }

    public final T b() {
        return this.a;
    }

    public final lz0 c() {
        return this.b;
    }

    public final Map<String, String> d() {
        return this.d.a(this.b);
    }

    public final tx0 a() {
        return this.c;
    }
}
