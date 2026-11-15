package com.google.android.exoplayer2.source;

import android.os.Handler;
import android.os.Looper;
import com.google.android.exoplayer2.a0;
import defpackage.ta8;
import defpackage.u5b;
import defpackage.zi;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

public abstract class a implements i {
    public final ArrayList a = new ArrayList(1);
    public final HashSet b = new HashSet(1);
    public final j.a c = new j.a();
    public final com.google.android.exoplayer2.drm.b.a d = new com.google.android.exoplayer2.drm.b.a();
    public Looper e;
    public a0 f;
    public ta8 g;

    @Override
    public final void a(i.c cVar) {
        this.a.remove(cVar);
        if (!this.a.isEmpty()) {
            g(cVar);
            return;
        }
        this.e = null;
        this.f = null;
        this.g = null;
        this.b.clear();
        v();
    }

    @Override
    public final void b(j jVar) {
        this.c.w(jVar);
    }

    @Override
    public final void d(Handler handler, j jVar) {
        zi.e(handler);
        zi.e(jVar);
        this.c.f(handler, jVar);
    }

    @Override
    public final void f(i.c cVar) {
        zi.e(this.e);
        boolean zIsEmpty = this.b.isEmpty();
        this.b.add(cVar);
        if (zIsEmpty) {
            q();
        }
    }

    @Override
    public final void g(i.c cVar) {
        boolean zIsEmpty = this.b.isEmpty();
        this.b.remove(cVar);
        if (zIsEmpty || !this.b.isEmpty()) {
            return;
        }
        p();
    }

    @Override
    public final void i(Handler handler, com.google.android.exoplayer2.drm.b bVar) {
        zi.e(handler);
        zi.e(bVar);
        this.d.g(handler, bVar);
    }

    @Override
    public final void j(com.google.android.exoplayer2.drm.b bVar) {
        this.d.t(bVar);
    }

    @Override
    public final void k(i.c cVar, u5b u5bVar, ta8 ta8Var) {
        Looper looperMyLooper = Looper.myLooper();
        Looper looper = this.e;
        zi.a(looper == null || looper == looperMyLooper);
        this.g = ta8Var;
        a0 a0Var = this.f;
        this.a.add(cVar);
        if (this.e == null) {
            this.e = looperMyLooper;
            this.b.add(cVar);
            t(u5bVar);
        } else if (a0Var != null) {
            f(cVar);
            cVar.a(this, a0Var);
        }
    }

    public final com.google.android.exoplayer2.drm.b.a l(int i, i.b bVar) {
        return this.d.u(i, bVar);
    }

    public final com.google.android.exoplayer2.drm.b.a m(i.b bVar) {
        return this.d.u(0, bVar);
    }

    public final j.a n(int i, i.b bVar, long j) {
        return this.c.x(i, bVar, j);
    }

    public final j.a o(i.b bVar) {
        return this.c.x(0, bVar, 0L);
    }

    public void p() {
    }

    public void q() {
    }

    public final ta8 r() {
        return (ta8) zi.i(this.g);
    }

    public final boolean s() {
        return !this.b.isEmpty();
    }

    public abstract void t(u5b u5bVar);

    public final void u(a0 a0Var) {
        this.f = a0Var;
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((i.c) it.next()).a(this, a0Var);
        }
    }

    public abstract void v();
}
