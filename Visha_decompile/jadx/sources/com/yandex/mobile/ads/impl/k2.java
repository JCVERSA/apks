package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class k2 {
    private final l2 a;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public k2(Context context) {
        this(context, m2.a.a(context).c());
        int i = m2.d;
    }

    public final i2 a() {
        return this.a.b();
    }

    public k2(Context context, l2 l2Var) {
        y45.j(context, "context");
        y45.j(l2Var, "adBlockerStateStorage");
        this.a = l2Var;
    }
}
