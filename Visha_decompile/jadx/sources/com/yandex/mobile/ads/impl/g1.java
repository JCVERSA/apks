package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Bundle;
import android.view.Window;
import android.widget.RelativeLayout;
import defpackage.y45;
import java.io.Serializable;
import java.util.Map;

public final class g1 implements m1, zr {
    private final RelativeLayout a;
    private final j1 b;
    private final Window c;
    private final lf1 d;
    private final wc0 e;
    private final id0 f;
    private final o8<?> g;
    private final gv1 h;

    public g1(Context context, RelativeLayout relativeLayout, v1 v1Var, Window window, fd0 fd0Var, lf1 lf1Var, wc0 wc0Var, id0 id0Var) {
        y45.j(context, "context");
        y45.j(relativeLayout, "rootLayout");
        y45.j(v1Var, "adActivityListener");
        y45.j(window, "window");
        y45.j(fd0Var, "fullScreenDataHolder");
        y45.j(lf1Var, "orientationConfigurator");
        y45.j(wc0Var, "fullScreenBackButtonController");
        y45.j(id0Var, "fullScreenInsetsController");
        this.a = relativeLayout;
        this.b = v1Var;
        this.c = window;
        this.d = lf1Var;
        this.e = wc0Var;
        this.f = id0Var;
        this.g = fd0Var.a();
        gv1 gv1VarB = fd0Var.b();
        this.h = gv1VarB;
        gv1VarB.a(this);
    }

    @Override
    public final void a() {
        this.b.a(2, null);
        this.h.i();
    }

    @Override
    public final void b() {
        this.b.a(3, null);
        this.h.g();
    }

    @Override
    public final void c() {
        this.h.a(this.a);
        Bundle bundle = new Bundle();
        Map<String, String> mapA = this.h.f().a();
        bundle.putSerializable("extra_tracking_parameters", mapA instanceof Serializable ? (Serializable) mapA : null);
        this.b.a(0, bundle);
        this.b.a(5, null);
        sp0.d(new Object[0]);
    }

    @Override
    public final void d() {
        this.h.d();
    }

    @Override
    public final boolean e() {
        return this.e.a() && !(this.h.f().b() && this.g.P());
    }

    @Override
    public final void f() {
        this.b.a();
    }

    @Override
    public final void g() {
        this.c.requestFeature(1);
        this.c.addFlags(1024);
        this.c.addFlags(16777216);
        this.f.a(this.c, this.a);
        this.d.a();
    }

    @Override
    public final void onAdClosed() {
        this.b.a(4, null);
    }
}
