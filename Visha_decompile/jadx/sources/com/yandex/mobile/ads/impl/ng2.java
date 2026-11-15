package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;
import java.util.List;

public final class ng2 implements mg2 {
    private final mg2 a;
    private boolean b;
    private boolean c;

    public ng2(gr grVar) {
        y45.j(grVar, "videoTracker");
        this.a = grVar;
    }

    @Override
    public final void a(View view, List<xb2> list) {
        y45.j(view, "view");
        y45.j(list, "friendlyOverlays");
        this.a.a(view, list);
        this.b = false;
        this.c = false;
    }

    @Override
    public final void b() {
        this.a.b();
        k();
    }

    @Override
    public final void c() {
        this.a.c();
    }

    @Override
    public final void d() {
        this.a.d();
    }

    @Override
    public final void e() {
        this.a.e();
        k();
    }

    @Override
    public final void f() {
        this.a.f();
    }

    @Override
    public final void g() {
        this.a.g();
        k();
    }

    @Override
    public final void h() {
        if (this.b) {
            return;
        }
        this.b = true;
        this.a.h();
    }

    @Override
    public final void i() {
        this.a.i();
    }

    @Override
    public final void j() {
        this.a.j();
    }

    @Override
    public final void k() {
        this.a.k();
        this.b = false;
        this.c = false;
    }

    @Override
    public final void l() {
        this.a.l();
    }

    @Override
    public final void m() {
        this.a.m();
        h();
        n();
    }

    @Override
    public final void n() {
        if (this.c) {
            return;
        }
        this.c = true;
        this.a.n();
    }

    @Override
    public final void a(String str) {
        y45.j(str, "assetName");
        this.a.a(str);
        h();
        n();
    }

    @Override
    public final void a(xc2 xc2Var) {
        y45.j(xc2Var, "error");
        this.a.a(xc2Var);
        k();
    }

    @Override
    public final void a(mg2.a aVar) {
        y45.j(aVar, "quartile");
        this.a.a(aVar);
    }

    @Override
    public final void a(float f, long j) {
        this.a.a(f, j);
    }

    @Override
    public final void a() {
        this.a.a();
    }

    @Override
    public final void a(float f) {
        this.a.a(f);
    }
}
