package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class m0 {
    private final o3 a;
    private final o8<?> b;
    private final n0 c;
    private final Context d;
    private l0 e;
    private x71 f;

    /* JADX WARN: Illegal instructions before constructor call */
    public m0(Context context, o3 o3Var, o8 o8Var, r51 r51Var) {
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this(context, o3Var, o8Var, r51Var, applicationContext, new l0(applicationContext, o3Var, o8Var, r51Var, null));
    }

    public final void a() {
        this.e.a();
    }

    public final void b() {
        this.e.b();
    }

    public final void c() {
        this.e.c();
    }

    public final void d() {
        this.e.e();
    }

    public final void e() {
        this.e.f();
    }

    public final void f() {
        this.e.g();
    }

    public final void a(x71 x71Var) {
        y45.j(x71Var, "reportParameterManager");
        this.f = x71Var;
        this.e.a(x71Var);
    }

    public m0(Context context, o3 o3Var, o8 o8Var, r51 r51Var, Context context2, l0 l0Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(r51Var, "activityInteractionEventListener");
        y45.j(context2, "applicationContext");
        y45.j(l0Var, "activityInteractionController");
        this.a = o3Var;
        this.b = o8Var;
        this.c = r51Var;
        this.d = context2;
        this.e = l0Var;
    }

    public final void a(m80 m80Var) {
        this.e = new l0(this.d, this.a, this.b, this.c, m80Var);
        x71 x71Var = this.f;
        if (x71Var != null) {
            y45.j(x71Var, "reportParameterManager");
            this.f = x71Var;
            this.e.a(x71Var);
        }
    }
}
