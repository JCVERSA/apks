package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class k92 {
    private final kb2 a;
    private final j92 b;
    private final Context c;
    private final l92 d;

    public k92(Context context) {
        this(context, new kb2(), new j92());
    }

    public final void a() {
        kb2 kb2Var = this.a;
        Context context = this.c;
        kb2Var.getClass();
        y45.j(context, "context");
        if (pa.a(context) && this.b.a(this.c)) {
            this.d.getClass();
            l92.b();
        }
    }

    public k92(Context context, kb2 kb2Var, j92 j92Var) {
        y45.j(context, "context");
        y45.j(kb2Var, "versionValidationNeedChecker");
        y45.j(j92Var, "validationErrorLogChecker");
        this.a = kb2Var;
        this.b = j92Var;
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.c = applicationContext;
        this.d = new l92();
    }
}
