package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class ks1 implements zr {
    private final Context a;
    private final dq b;
    private final zr c;
    private boolean d;

    public ks1(Context context, z20 z20Var, zr zrVar) {
        y45.j(context, "context");
        y45.j(z20Var, "closeVerificationDialogController");
        y45.j(zrVar, "contentCloseListener");
        this.a = context;
        this.b = z20Var;
        this.c = zrVar;
    }

    public final void a() {
        this.d = true;
        this.b.a();
    }

    @Override
    public final void f() {
        if (this.d) {
            this.c.f();
        } else {
            this.b.a(this.a);
        }
    }
}
