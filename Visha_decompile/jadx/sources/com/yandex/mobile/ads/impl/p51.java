package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.hunantv.imgo.net.entity.AuthInfo;
import defpackage.y45;

public final class p51 implements x50, qk0.a {
    private final r51 a;
    private final m0 b;

    public p51(Context context, o3 o3Var, o8 o8Var) {
        r51 r51Var = new r51();
        this(context, o3Var, o8Var, r51Var, new m0(context, o3Var, o8Var, r51Var));
    }

    @Override
    public final void a() {
        this.a.a();
    }

    public final void b() {
        sp0.a(new Object[0]);
        this.b.a();
    }

    public final void c() {
        this.b.e();
    }

    public final void d() {
        this.a.onLeftApplication();
        this.b.d();
    }

    public final void e() {
        this.a.onLeftApplication();
        this.b.f();
    }

    public final void f() {
        this.b.b();
    }

    public final void g() {
        this.a.onLeftApplication();
        this.b.c();
    }

    @Override
    public final void a(t4 t4Var) {
        this.a.a(t4Var);
    }

    public final void a(st stVar) {
        this.a.a(stVar);
    }

    public p51(Context context, o3 o3Var, o8<?> o8Var, r51 r51Var, m0 m0Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(r51Var, "nativeAdEventListenerController");
        y45.j(m0Var, "activityInteractionControllerWrapper");
        this.a = r51Var;
        this.b = m0Var;
    }

    public final void a(x71 x71Var) {
        y45.j(x71Var, "reportParameterManager");
        this.b.a(x71Var);
    }

    public final void a(vr0 vr0Var) {
        y45.j(vr0Var, AuthInfo.Component.CODE_LINK);
        this.b.a(vr0Var.c());
    }
}
