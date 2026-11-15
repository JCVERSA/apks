package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public abstract class zj<T> implements gh1.b, ro {
    private final Context a;
    private final o8<T> b;
    private final gh1 c;

    public zj(Context context, o8 o8Var) {
        this(context, o8Var, gh1.h.a(context));
    }

    @Override
    public final synchronized boolean a() {
        return false;
    }

    public abstract void b();

    public void c() {
        b();
        getClass().toString();
        sp0.d(new Object[0]);
    }

    public final o8<T> d() {
        return this.b;
    }

    public final Context e() {
        return this.a;
    }

    public final boolean f() {
        return !this.c.b();
    }

    public final void g() {
        getClass().toString();
        sp0.d(new Object[0]);
        this.c.a(this);
    }

    public final void h() {
        getClass().toString();
        sp0.d(new Object[0]);
        this.c.b(this);
    }

    public zj(Context context, o8<T> o8Var, gh1 gh1Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(gh1Var, "phoneStateTracker");
        this.a = context;
        this.b = o8Var;
        this.c = gh1Var;
    }
}
