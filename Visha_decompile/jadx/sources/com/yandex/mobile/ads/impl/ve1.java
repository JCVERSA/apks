package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class ve1 {
    private final pw1 a;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ve1() {
        this(pw1.a.a());
        int i = pw1.l;
    }

    public final boolean a(Context context) {
        ju1 ju1VarA;
        y45.j(context, "context");
        return (!oa.a(context) || (ju1VarA = this.a.a(context)) == null || ju1VarA.s0()) ? false : true;
    }

    public ve1(pw1 pw1Var) {
        y45.j(pw1Var, "sdkSettings");
        this.a = pw1Var;
    }
}
