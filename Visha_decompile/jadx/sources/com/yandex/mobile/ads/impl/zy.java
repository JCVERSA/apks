package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.lang.ref.WeakReference;

public final class zy implements f42 {
    private final o3 a;
    private final o8<?> b;
    private final t8 c;
    private final t1 d;
    private final p50 e;
    private final WeakReference<Context> f;

    public zy(Context context, t1 t1Var, o8 o8Var, t8 t8Var, bv1 bv1Var, p50 p50Var, o3 o3Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(t8Var, "receiver");
        y45.j(t1Var, "adActivityShowManager");
        y45.j(p50Var, "environmentController");
        this.a = o3Var;
        this.b = o8Var;
        this.c = t8Var;
        this.d = t1Var;
        this.e = p50Var;
        this.f = new WeakReference<>(context);
    }

    @Override
    public final void a(tp1 tp1Var, String str) {
        y45.j(tp1Var, "reporter");
        y45.j(str, "targetUrl");
        this.e.c().getClass();
        this.d.a(this.f.get(), this.a, this.b, tp1Var, str, this.c, y45.e(null, Boolean.TRUE) || this.b.G());
    }
}
