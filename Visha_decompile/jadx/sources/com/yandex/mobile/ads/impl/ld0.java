package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class ld0 implements r11, s11 {
    private final Context a;
    private final o8<String> b;
    private final t8 c;
    private final xt1 d;

    public ld0(Context context, o3 o3Var, o8<String> o8Var, t8 t8Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(t8Var, "adResultReceiver");
        this.a = context;
        this.b = o8Var;
        this.c = t8Var;
        this.d = new xt1(o3Var);
    }

    @Override
    public final void a() {
        this.d.b(this.a, this.b);
        this.c.a(13, null);
    }

    @Override
    public final void b() {
        this.c.a(15, null);
    }

    @Override
    public final void e() {
        this.c.a(14, null);
    }
}
