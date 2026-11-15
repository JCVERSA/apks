package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public abstract class mg0 extends zj<String> implements q3 {
    private final t8 d;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public mg0(Context context, o8<String> o8Var) {
        this(context, o8Var, new t8());
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
    }

    @Override
    public synchronized void b() {
        this.d.a(null);
    }

    public final t8 i() {
        return this.d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mg0(Context context, o8<String> o8Var, t8 t8Var) {
        super(context, o8Var);
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(t8Var, "adResultReceiver");
        this.d = t8Var;
        t8Var.a(this);
    }
}
