package com.google.android.exoplayer2.source;

import android.os.Handler;
import android.os.Looper;
import com.google.android.exoplayer2.l3;
import com.google.android.exoplayer2.upstream.k0;
import g9.u1;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

public abstract class a implements o {

    private final ArrayList f25020a = new ArrayList(1);

    private final HashSet f25021b = new HashSet(1);

    private final p.a f25022c = new p.a();

    private final com.google.android.exoplayer2.drm.s.a f25023d = new com.google.android.exoplayer2.drm.s.a();

    private Looper f25024e;

    private l3 f25025f;

    private u1 f25026g;

    protected final boolean A() {
        return !this.f25021b.isEmpty();
    }

    protected abstract void B(k0 k0Var);

    protected final void C(l3 l3Var) {
        this.f25025f = l3Var;
        Iterator it = this.f25020a.iterator();
        while (it.hasNext()) {
            ((o.c) it.next()).a(this, l3Var);
        }
    }

    protected abstract void D();

    @Override
    public boolean b() {
        return v9.k.b(this);
    }

    @Override
    public l3 c() {
        return v9.k.a(this);
    }

    @Override
    public final void e(o.c cVar) {
        this.f25020a.remove(cVar);
        if (!this.f25020a.isEmpty()) {
            o(cVar);
            return;
        }
        this.f25024e = null;
        this.f25025f = null;
        this.f25026g = null;
        this.f25021b.clear();
        D();
    }

    @Override
    public final void g(Handler handler, p pVar) {
        com.google.android.exoplayer2.util.a.e(handler);
        com.google.android.exoplayer2.util.a.e(pVar);
        this.f25022c.g(handler, pVar);
    }

    @Override
    public final void h(p pVar) {
        this.f25022c.C(pVar);
    }

    @Override
    public final void k(o.c cVar) {
        com.google.android.exoplayer2.util.a.e(this.f25024e);
        boolean zIsEmpty = this.f25021b.isEmpty();
        this.f25021b.add(cVar);
        if (zIsEmpty) {
            y();
        }
    }

    @Override
    public final void m(o.c cVar, k0 k0Var, u1 u1Var) {
        Looper looperMyLooper = Looper.myLooper();
        Looper looper = this.f25024e;
        com.google.android.exoplayer2.util.a.a(looper == null || looper == looperMyLooper);
        this.f25026g = u1Var;
        l3 l3Var = this.f25025f;
        this.f25020a.add(cVar);
        if (this.f25024e == null) {
            this.f25024e = looperMyLooper;
            this.f25021b.add(cVar);
            B(k0Var);
        } else if (l3Var != null) {
            k(cVar);
            cVar.a(this, l3Var);
        }
    }

    @Override
    public final void o(o.c cVar) {
        boolean zIsEmpty = this.f25021b.isEmpty();
        this.f25021b.remove(cVar);
        if (zIsEmpty || !this.f25021b.isEmpty()) {
            return;
        }
        x();
    }

    @Override
    public final void q(Handler handler, com.google.android.exoplayer2.drm.s sVar) {
        com.google.android.exoplayer2.util.a.e(handler);
        com.google.android.exoplayer2.util.a.e(sVar);
        this.f25023d.g(handler, sVar);
    }

    @Override
    public final void r(com.google.android.exoplayer2.drm.s sVar) {
        this.f25023d.t(sVar);
    }

    protected final com.google.android.exoplayer2.drm.s.a s(int i10, o.b bVar) {
        return this.f25023d.u(i10, bVar);
    }

    protected final com.google.android.exoplayer2.drm.s.a t(o.b bVar) {
        return this.f25023d.u(0, bVar);
    }

    protected final p.a u(int i10, o.b bVar, long j10) {
        return this.f25022c.F(i10, bVar, j10);
    }

    protected final p.a v(o.b bVar) {
        return this.f25022c.F(0, bVar, 0L);
    }

    protected final p.a w(o.b bVar, long j10) {
        com.google.android.exoplayer2.util.a.e(bVar);
        return this.f25022c.F(0, bVar, j10);
    }

    protected final u1 z() {
        return (u1) com.google.android.exoplayer2.util.a.i(this.f25026g);
    }

    protected void x() {
    }

    protected void y() {
    }
}
