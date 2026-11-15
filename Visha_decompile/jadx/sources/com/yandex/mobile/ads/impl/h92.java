package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class h92 {
    private final pw1 a;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public h92() {
        this(pw1.a.a());
        int i = pw1.l;
    }

    public final boolean a(Context context) {
        y45.j(context, "context");
        ju1 ju1VarA = this.a.a(context);
        return ju1VarA != null && ju1VarA.L();
    }

    public h92(pw1 pw1Var) {
        y45.j(pw1Var, "sdkSettings");
        this.a = pw1Var;
    }
}
