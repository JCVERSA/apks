package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.List;

public final class to1 implements qo1.b {
    private final s4 a;
    private final cp1 b;
    private final wo1 c;
    private final so1 d;
    private final qo1 e;
    private boolean f;

    public to1(Context context, u7 u7Var, o8 o8Var, o3 o3Var, s9 s9Var, s4 s4Var, cp1 cp1Var, wo1 wo1Var, so1 so1Var) {
        y45.j(context, "context");
        y45.j(u7Var, "renderingValidator");
        y45.j(o8Var, "adResponse");
        y45.j(o3Var, "adConfiguration");
        y45.j(s9Var, "adStructureType");
        y45.j(s4Var, "adIdStorageManager");
        y45.j(cp1Var, "renderingImpressionTrackingListener");
        y45.j(so1Var, "renderTracker");
        this.a = s4Var;
        this.b = cp1Var;
        this.c = wo1Var;
        this.d = so1Var;
        this.e = new qo1(u7Var, this);
    }

    @Override
    public final void a() {
        wo1 wo1Var = this.c;
        if (wo1Var != null) {
            wo1Var.a();
        }
        this.d.a();
        this.a.b();
        this.b.f();
    }

    public final void b() {
        if (this.f) {
            return;
        }
        this.f = true;
        this.e.a();
    }

    public final void c() {
        this.f = false;
        this.e.b();
    }

    public final void a(u91 u91Var) {
        y45.j(u91Var, "reportParameterManager");
        this.d.a(u91Var);
    }

    public to1(Context context, u7 u7Var, o8 o8Var, o3 o3Var, s9 s9Var, s4 s4Var, cp1 cp1Var, wo1 wo1Var, List list) {
        this(context, u7Var, o8Var, o3Var, s9Var, s4Var, cp1Var, wo1Var, new so1(context, o8Var, o3Var, s9Var, list));
    }
}
