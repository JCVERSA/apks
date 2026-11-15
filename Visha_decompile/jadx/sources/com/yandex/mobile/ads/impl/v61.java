package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class v61 implements hq1<y61> {
    private final ir1<y61> a;

    public v61(Context context, sp1 sp1Var) {
        this(context, sp1Var, new c71(context, sp1Var));
    }

    @Override
    public final boolean a() {
        return true;
    }

    @Override
    public final y61 a(xc1 xc1Var) {
        y45.j(xc1Var, "networkResponse");
        return this.a.a(xc1Var);
    }

    public v61(Context context, sp1 sp1Var, ir1<y61> ir1Var) {
        y45.j(context, "context");
        y45.j(sp1Var, "reporter");
        y45.j(ir1Var, "nativeAdResponseParser");
        this.a = ir1Var;
    }
}
