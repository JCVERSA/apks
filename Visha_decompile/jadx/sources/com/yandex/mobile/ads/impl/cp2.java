package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Handler;
import java.util.Iterator;

public final class cp2 implements qo2, go2.a {
    private static cp2 f;
    private float a = 0.0f;
    private final zo2 b;
    private final fo2 c;
    private uo2 d;
    private wn2 e;

    public cp2(zo2 zo2Var, fo2 fo2Var) {
        this.b = zo2Var;
        this.c = fo2Var;
    }

    public static cp2 a() {
        if (f == null) {
            f = new cp2(new zo2(), new fo2());
        }
        return f;
    }

    public final void b() {
        go2.a().a(this);
        go2.a().b();
        g72.g().getClass();
        g72.a();
        this.d.a();
    }

    public final void c() {
        g72.g().b();
        go2.a().c();
        this.d.b();
    }

    public final float d() {
        return this.a;
    }

    public final void a(float f2) {
        this.a = f2;
        if (this.e == null) {
            this.e = wn2.a();
        }
        Iterator<vn2> it = this.e.c().iterator();
        while (it.hasNext()) {
            it.next().j().a(f2);
        }
    }

    public final void a(Context context) {
        this.c.getClass();
        do2 do2Var = new do2();
        zo2 zo2Var = this.b;
        Handler handler = new Handler();
        zo2Var.getClass();
        this.d = new uo2(handler, context, do2Var, this);
    }
}
