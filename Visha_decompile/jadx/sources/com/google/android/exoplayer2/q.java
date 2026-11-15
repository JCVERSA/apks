package com.google.android.exoplayer2;

import android.os.Handler;
import com.google.android.exoplayer2.a0;
import com.google.android.exoplayer2.source.i;
import defpackage.blb;
import defpackage.cb;
import defpackage.ih6;
import defpackage.in5;
import defpackage.kb;
import defpackage.mi9;
import defpackage.op5;
import defpackage.ta8;
import defpackage.u5b;
import defpackage.wl6;
import defpackage.zb8;
import defpackage.zi;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class q {
    public final ta8 a;
    public final d e;
    public final com.google.android.exoplayer2.source.j.a f;
    public final com.google.android.exoplayer2.drm.b.a g;
    public final HashMap h;
    public final Set i;
    public boolean k;
    public u5b l;
    public mi9 j = new mi9.a(0);
    public final IdentityHashMap c = new IdentityHashMap();
    public final Map d = new HashMap();
    public final List b = new ArrayList();

    public final class a implements com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.drm.b {
        public final c b;
        public com.google.android.exoplayer2.source.j.a c;
        public com.google.android.exoplayer2.drm.b.a d;

        public a(c cVar) {
            this.c = q.this.f;
            this.d = q.this.g;
            this.b = cVar;
        }

        @Override
        public void g(int i, com.google.android.exoplayer2.source.i.b bVar, ih6 ih6Var) {
            if (v(i, bVar)) {
                this.c.i(ih6Var);
            }
        }

        @Override
        public void i(int i, com.google.android.exoplayer2.source.i.b bVar, in5 in5Var, ih6 ih6Var) {
            if (v(i, bVar)) {
                this.c.r(in5Var, ih6Var);
            }
        }

        @Override
        public void j(int i, com.google.android.exoplayer2.source.i.b bVar) {
            if (v(i, bVar)) {
                this.d.h();
            }
        }

        @Override
        public void k(int i, com.google.android.exoplayer2.source.i.b bVar, int i2) {
            if (v(i, bVar)) {
                this.d.k(i2);
            }
        }

        @Override
        public void l(int i, com.google.android.exoplayer2.source.i.b bVar) {
            if (v(i, bVar)) {
                this.d.j();
            }
        }

        @Override
        public void m(int i, com.google.android.exoplayer2.source.i.b bVar) {
            if (v(i, bVar)) {
                this.d.i();
            }
        }

        @Override
        public void o(int i, com.google.android.exoplayer2.source.i.b bVar, Exception exc) {
            if (v(i, bVar)) {
                this.d.l(exc);
            }
        }

        @Override
        public void p(int i, com.google.android.exoplayer2.source.i.b bVar, in5 in5Var, ih6 ih6Var) {
            if (v(i, bVar)) {
                this.c.p(in5Var, ih6Var);
            }
        }

        @Override
        public void s(int i, com.google.android.exoplayer2.source.i.b bVar, in5 in5Var, ih6 ih6Var) {
            if (v(i, bVar)) {
                this.c.v(in5Var, ih6Var);
            }
        }

        @Override
        public void t(int i, com.google.android.exoplayer2.source.i.b bVar, in5 in5Var, ih6 ih6Var, IOException iOException, boolean z) {
            if (v(i, bVar)) {
                this.c.t(in5Var, ih6Var, iOException, z);
            }
        }

        @Override
        public void u(int i, com.google.android.exoplayer2.source.i.b bVar) {
            if (v(i, bVar)) {
                this.d.m();
            }
        }

        public final boolean v(int i, com.google.android.exoplayer2.source.i.b bVar) {
            com.google.android.exoplayer2.source.i.b bVarN;
            if (bVar != null) {
                bVarN = q.n(this.b, bVar);
                if (bVarN == null) {
                    return false;
                }
            } else {
                bVarN = null;
            }
            int iR = q.r(this.b, i);
            com.google.android.exoplayer2.source.j.a aVar = this.c;
            if (aVar.a != iR || !blb.c(aVar.b, bVarN)) {
                this.c = q.this.f.x(iR, bVarN, 0L);
            }
            com.google.android.exoplayer2.drm.b.a aVar2 = this.d;
            if (aVar2.a == iR && blb.c(aVar2.b, bVarN)) {
                return true;
            }
            this.d = q.this.g.u(iR, bVarN);
            return true;
        }
    }

    public static final class b {
        public final com.google.android.exoplayer2.source.i a;
        public final com.google.android.exoplayer2.source.i.c b;
        public final a c;

        public b(com.google.android.exoplayer2.source.i iVar, com.google.android.exoplayer2.source.i.c cVar, a aVar) {
            this.a = iVar;
            this.b = cVar;
            this.c = aVar;
        }
    }

    public static final class c implements wl6 {
        public final com.google.android.exoplayer2.source.g a;
        public int d;
        public boolean e;
        public final List c = new ArrayList();
        public final Object b = new Object();

        public c(com.google.android.exoplayer2.source.i iVar, boolean z) {
            this.a = new com.google.android.exoplayer2.source.g(iVar, z);
        }

        public void a(int i) {
            this.d = i;
            this.e = false;
            this.c.clear();
        }

        @Override
        public a0 getTimeline() {
            return this.a.H();
        }

        @Override
        public Object getUid() {
            return this.b;
        }
    }

    public interface d {
        void onPlaylistUpdateRequested();
    }

    public q(d dVar, kb kbVar, Handler handler, ta8 ta8Var) {
        this.a = ta8Var;
        this.e = dVar;
        com.google.android.exoplayer2.source.j.a aVar = new com.google.android.exoplayer2.source.j.a();
        this.f = aVar;
        com.google.android.exoplayer2.drm.b.a aVar2 = new com.google.android.exoplayer2.drm.b.a();
        this.g = aVar2;
        this.h = new HashMap();
        this.i = new HashSet();
        aVar.f(handler, kbVar);
        aVar2.g(handler, kbVar);
    }

    public static Object m(Object obj) {
        return com.google.android.exoplayer2.a.B(obj);
    }

    public static com.google.android.exoplayer2.source.i.b n(c cVar, com.google.android.exoplayer2.source.i.b bVar) {
        for (int i = 0; i < cVar.c.size(); i++) {
            if (((com.google.android.exoplayer2.source.i.b) cVar.c.get(i)).d == bVar.d) {
                return bVar.c(p(cVar, bVar.a));
            }
        }
        return null;
    }

    public static Object o(Object obj) {
        return com.google.android.exoplayer2.a.C(obj);
    }

    public static Object p(c cVar, Object obj) {
        return com.google.android.exoplayer2.a.E(cVar.b, obj);
    }

    public static int r(c cVar, int i) {
        return i + cVar.d;
    }

    public final void A(int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            c cVar = (c) this.b.remove(i3);
            this.d.remove(cVar.b);
            g(i3, -cVar.a.H().t());
            cVar.e = true;
            if (this.k) {
                u(cVar);
            }
        }
    }

    public a0 B(List list, mi9 mi9Var) {
        A(0, this.b.size());
        return f(this.b.size(), list, mi9Var);
    }

    public a0 C(mi9 mi9Var) {
        int iQ = q();
        if (mi9Var.getLength() != iQ) {
            mi9Var = mi9Var.cloneAndClear().cloneAndInsert(0, iQ);
        }
        this.j = mi9Var;
        return i();
    }

    public a0 f(int i, List list, mi9 mi9Var) {
        if (!list.isEmpty()) {
            this.j = mi9Var;
            for (int i2 = i; i2 < list.size() + i; i2++) {
                c cVar = (c) list.get(i2 - i);
                if (i2 > 0) {
                    c cVar2 = (c) this.b.get(i2 - 1);
                    cVar.a(cVar2.d + cVar2.a.H().t());
                } else {
                    cVar.a(0);
                }
                g(i2, cVar.a.H().t());
                this.b.add(i2, cVar);
                this.d.put(cVar.b, cVar);
                if (this.k) {
                    w(cVar);
                    if (this.c.isEmpty()) {
                        this.i.add(cVar);
                    } else {
                        j(cVar);
                    }
                }
            }
        }
        return i();
    }

    public final void g(int i, int i2) {
        while (i < this.b.size()) {
            ((c) this.b.get(i)).d += i2;
            i++;
        }
    }

    public com.google.android.exoplayer2.source.h h(com.google.android.exoplayer2.source.i.b bVar, cb cbVar, long j) {
        Object objO = o(bVar.a);
        com.google.android.exoplayer2.source.i.b bVarC = bVar.c(m(bVar.a));
        c cVar = (c) zi.e((c) this.d.get(objO));
        l(cVar);
        cVar.c.add(bVarC);
        com.google.android.exoplayer2.source.f fVarC = cVar.a.c(bVarC, cbVar, j);
        this.c.put(fVarC, cVar);
        k();
        return fVarC;
    }

    public a0 i() {
        if (this.b.isEmpty()) {
            return a0.b;
        }
        int iT = 0;
        for (int i = 0; i < this.b.size(); i++) {
            c cVar = (c) this.b.get(i);
            cVar.d = iT;
            iT += cVar.a.H().t();
        }
        return new zb8(this.b, this.j);
    }

    public final void j(c cVar) {
        b bVar = (b) this.h.get(cVar);
        if (bVar != null) {
            bVar.a.g(bVar.b);
        }
    }

    public final void k() {
        Iterator it = this.i.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar.c.isEmpty()) {
                j(cVar);
                it.remove();
            }
        }
    }

    public final void l(c cVar) {
        this.i.add(cVar);
        b bVar = (b) this.h.get(cVar);
        if (bVar != null) {
            bVar.a.f(bVar.b);
        }
    }

    public int q() {
        return this.b.size();
    }

    public boolean s() {
        return this.k;
    }

    public final void t(com.google.android.exoplayer2.source.i iVar, a0 a0Var) {
        this.e.onPlaylistUpdateRequested();
    }

    public final void u(c cVar) {
        if (cVar.e && cVar.c.isEmpty()) {
            b bVar = (b) zi.e((b) this.h.remove(cVar));
            bVar.a.a(bVar.b);
            bVar.a.b(bVar.c);
            bVar.a.j(bVar.c);
            this.i.remove(cVar);
        }
    }

    public void v(u5b u5bVar) {
        zi.g(!this.k);
        this.l = u5bVar;
        for (int i = 0; i < this.b.size(); i++) {
            c cVar = (c) this.b.get(i);
            w(cVar);
            this.i.add(cVar);
        }
        this.k = true;
    }

    public final void w(c cVar) {
        com.google.android.exoplayer2.source.g gVar = cVar.a;
        com.google.android.exoplayer2.source.i.c cVar2 = new com.google.android.exoplayer2.source.i.c() {
            @Override
            public final void a(i iVar, a0 a0Var) {
                this.a.t(iVar, a0Var);
            }
        };
        a aVar = new a(cVar);
        this.h.put(cVar, new b(gVar, cVar2, aVar));
        gVar.d(blb.w(), aVar);
        gVar.i(blb.w(), aVar);
        gVar.k(cVar2, this.l, this.a);
    }

    public void x() {
        for (b bVar : this.h.values()) {
            try {
                bVar.a.a(bVar.b);
            } catch (RuntimeException e) {
                op5.d("MediaSourceList", "Failed to release child source.", e);
            }
            bVar.a.b(bVar.c);
            bVar.a.j(bVar.c);
        }
        this.h.clear();
        this.i.clear();
        this.k = false;
    }

    public void y(com.google.android.exoplayer2.source.h hVar) {
        c cVar = (c) zi.e((c) this.c.remove(hVar));
        cVar.a.e(hVar);
        cVar.c.remove(((com.google.android.exoplayer2.source.f) hVar).b);
        if (!this.c.isEmpty()) {
            k();
        }
        u(cVar);
    }

    public a0 z(int i, int i2, mi9 mi9Var) {
        zi.a(i >= 0 && i <= i2 && i2 <= q());
        this.j = mi9Var;
        A(i, i2);
        return i();
    }
}
