package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

public abstract class pk implements vw0 {
    private final ArrayList<vw0.c> a = new ArrayList<>(1);
    private final HashSet<vw0.c> b = new HashSet<>(1);
    private final ww0.a c = new ww0.a();
    private final h40.a d = new h40.a();

    @Nullable
    private Looper e;

    @Nullable
    private i52 f;

    @Nullable
    private mi1 g;

    public void a() {
    }

    public abstract void a(@Nullable d72 d72Var);

    public void b() {
    }

    @Override
    public final void c(vw0.c cVar) {
        this.e.getClass();
        boolean zIsEmpty = this.b.isEmpty();
        this.b.add(cVar);
        if (zIsEmpty) {
            b();
        }
    }

    public final boolean d() {
        return !this.b.isEmpty();
    }

    public abstract void e();

    @Override
    public final void a(Handler handler, h40 h40Var) {
        this.d.a(handler, h40Var);
    }

    public final ww0.a b(int i, @Nullable vw0.b bVar) {
        return this.c.a(i, bVar);
    }

    @Override
    public final void a(Handler handler, ww0 ww0Var) {
        this.c.a(handler, ww0Var);
    }

    public final ww0.a b(@Nullable vw0.b bVar) {
        return this.c.a(0, bVar);
    }

    public final h40.a a(int i, @Nullable vw0.b bVar) {
        return this.d.a(i, bVar);
    }

    @Override
    public final void b(vw0.c cVar) {
        boolean zIsEmpty = this.b.isEmpty();
        this.b.remove(cVar);
        if (zIsEmpty || !this.b.isEmpty()) {
            return;
        }
        a();
    }

    public final h40.a a(@Nullable vw0.b bVar) {
        return this.d.a(0, bVar);
    }

    @Override
    public final void a(vw0.c cVar, @Nullable d72 d72Var, mi1 mi1Var) {
        Looper looperMyLooper = Looper.myLooper();
        Looper looper = this.e;
        if (looper != null && looper != looperMyLooper) {
            throw new IllegalArgumentException();
        }
        this.g = mi1Var;
        i52 i52Var = this.f;
        this.a.add(cVar);
        if (this.e == null) {
            this.e = looperMyLooper;
            this.b.add(cVar);
            a(d72Var);
        } else if (i52Var != null) {
            c(cVar);
            cVar.a(this, i52Var);
        }
    }

    public final mi1 c() {
        mi1 mi1Var = this.g;
        if (mi1Var != null) {
            return mi1Var;
        }
        throw new IllegalStateException();
    }

    public final void a(i52 i52Var) {
        this.f = i52Var;
        Iterator<vw0.c> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(this, i52Var);
        }
    }

    @Override
    public final void a(vw0.c cVar) {
        this.a.remove(cVar);
        if (this.a.isEmpty()) {
            this.e = null;
            this.f = null;
            this.g = null;
            this.b.clear();
            e();
            return;
        }
        b(cVar);
    }

    @Override
    public final void a(h40 h40Var) {
        this.d.e(h40Var);
    }

    @Override
    public final void a(ww0 ww0Var) {
        this.c.a(ww0Var);
    }
}
