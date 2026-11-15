package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.annotation.MainThread;
import defpackage.y45;

@MainThread
public final class wt {
    private final bv1 a;
    private final Context b;
    private final i61 c;

    /* JADX WARN: Illegal instructions before constructor call */
    public wt(Context context, en2 en2Var) {
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this(context, en2Var, applicationContext, new i61(applicationContext, en2Var));
    }

    public final void a() {
        this.c.a();
    }

    public final void b(v7 v7Var) {
        y45.j(v7Var, "adRequestData");
        v61 v61Var = new v61(this.b, this.a.c());
        i61 i61Var = this.c;
        ca1 ca1Var = ca1.c;
        fa1 fa1Var = fa1.c;
        i61Var.b(v7Var, v61Var);
    }

    public final void a(v7 v7Var) {
        y45.j(v7Var, "adRequestData");
        v61 v61Var = new v61(this.b, this.a.c());
        i61 i61Var = this.c;
        ca1 ca1Var = ca1.c;
        fa1 fa1Var = fa1.c;
        i61Var.a(v7Var, v61Var);
    }

    public wt(Context context, en2 en2Var, Context context2, i61 i61Var) {
        y45.j(context, "context");
        y45.j(en2Var, "sdkEnvironmentModule");
        y45.j(context2, "appContext");
        y45.j(i61Var, "adLoadingController");
        this.a = en2Var;
        this.b = context2;
        this.c = i61Var;
    }

    public final void a(v7 v7Var, int i) {
        y45.j(v7Var, "adRequestData");
        v61 v61Var = new v61(this.b, this.a.c());
        i61 i61Var = this.c;
        ca1 ca1Var = ca1.c;
        fa1 fa1Var = fa1.c;
        i61Var.a(v7Var, v61Var, i);
    }

    public final void a(vt vtVar) {
        this.c.a(vtVar);
    }

    public final void a(ym2 ym2Var) {
        this.c.a(ym2Var);
    }

    public final void a(hn2 hn2Var) {
        this.c.a(hn2Var);
    }
}
