package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class qg0 implements cd1<String> {
    private final aj2<String> a;

    public qg0() {
        this(new tg0());
    }

    @Override
    public final xi2 a(Context context, o3 o3Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        return wc1.a(o3Var, this.a);
    }

    public qg0(aj2<String> aj2Var) {
        y45.j(aj2Var, "responseBodyParser");
        this.a = aj2Var;
    }
}
