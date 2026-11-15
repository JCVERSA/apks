package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class i92 {
    private final m92 a;
    private final pw1 b;
    private final kb2 c;
    private final h92 d;
    private final Context e;

    public i92(Context context) {
        m92 m92Var = new m92(context);
        int i = pw1.l;
        this(context, m92Var, pw1.a.a(), new kb2(), new h92());
    }

    public final void a() {
        kb2 kb2Var = this.c;
        Context context = this.e;
        kb2Var.getClass();
        y45.j(context, "context");
        if (pa.a(context) && this.b.k() && this.d.a(this.e)) {
            this.a.a();
        }
    }

    public i92(Context context, m92 m92Var, pw1 pw1Var, kb2 kb2Var, h92 h92Var) {
        y45.j(context, "context");
        y45.j(m92Var, "toastPresenter");
        y45.j(pw1Var, "sdkSettings");
        y45.j(kb2Var, "versionValidationNeedChecker");
        y45.j(h92Var, "validationErrorIndicatorChecker");
        this.a = m92Var;
        this.b = pw1Var;
        this.c = kb2Var;
        this.d = h92Var;
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.e = applicationContext;
    }
}
