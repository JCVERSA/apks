package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class jp0 {
    private final na1 a;
    private final int b;

    public jp0(na1 na1Var, int i) {
        y45.j(na1Var, "nativeValidator");
        this.a = na1Var;
        this.b = i;
    }

    public final n92 a(Context context) {
        y45.j(context, "context");
        return this.a.a(context, this.b);
    }
}
