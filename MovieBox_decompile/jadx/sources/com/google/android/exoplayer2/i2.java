package com.google.android.exoplayer2;

import android.os.Handler;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

final class i2 {

    private final g9.u1 f24477a;

    private final d f24481e;

    private final com.google.android.exoplayer2.source.p.a f24482f;

    private final com.google.android.exoplayer2.drm.s.a f24483g;

    private final HashMap f24484h;

    private final Set f24485i;

    private boolean f24487k;

    private com.google.android.exoplayer2.upstream.k0 f24488l;

    private v9.t f24486j = new v9.t.a(0);

    private final IdentityHashMap f24479c = new IdentityHashMap();

    private final Map f24480d = new HashMap();

    private final List f24478b = new ArrayList();

    private final class a implements com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.drm.s {

        private final c f24489a;

        private com.google.android.exoplayer2.source.p.a f24490b;

        private com.google.android.exoplayer2.drm.s.a f24491c;

        public a(c cVar) {
            this.f24490b = i2.this.f24482f;
            this.f24491c = i2.this.f24483g;
            this.f24489a = cVar;
        }

        private boolean G(int i10, com.google.android.exoplayer2.source.o.b bVar) {
            com.google.android.exoplayer2.source.o.b bVarN;
            if (bVar != null) {
                bVarN = i2.n(this.f24489a, bVar);
                if (bVarN == null) {
                    return false;
                }
            } else {
                bVarN = null;
            }
            int iR = i2.r(this.f24489a, i10);
            com.google.android.exoplayer2.source.p.a aVar = this.f24490b;
            if (aVar.f25583a != iR || !com.google.android.exoplayer2.util.p0.c(aVar.f25584b, bVarN)) {
                this.f24490b = i2.this.f24482f.F(iR, bVarN, 0L);
            }
            com.google.android.exoplayer2.drm.s.a aVar2 = this.f24491c;
            if (aVar2.f24371a == iR && com.google.android.exoplayer2.util.p0.c(aVar2.f24372b, bVarN)) {
                return true;
            }
            this.f24491c = i2.this.f24483g.u(iR, bVarN);
            return true;
        }

        @Override
        public void A(int i10, com.google.android.exoplayer2.source.o.b bVar) {
            if (G(i10, bVar)) {
                this.f24491c.h();
            }
        }

        @Override
        public void B(int i10, com.google.android.exoplayer2.source.o.b bVar, int i11) {
            if (G(i10, bVar)) {
                this.f24491c.k(i11);
            }
        }

        @Override
        public void C(int i10, com.google.android.exoplayer2.source.o.b bVar) {
            if (G(i10, bVar)) {
                this.f24491c.m();
            }
        }

        @Override
        public void D(int i10, com.google.android.exoplayer2.source.o.b bVar, v9.h hVar, v9.i iVar) {
            if (G(i10, bVar)) {
                this.f24490b.v(hVar, iVar);
            }
        }

        @Override
        public void E(int i10, com.google.android.exoplayer2.source.o.b bVar, v9.i iVar) {
            if (G(i10, bVar)) {
                this.f24490b.E(iVar);
            }
        }

        @Override
        public void F(int i10, com.google.android.exoplayer2.source.o.b bVar) {
            if (G(i10, bVar)) {
                this.f24491c.j();
            }
        }

        @Override
        public void l(int i10, com.google.android.exoplayer2.source.o.b bVar, v9.h hVar, v9.i iVar) {
            if (G(i10, bVar)) {
                this.f24490b.s(hVar, iVar);
            }
        }

        @Override
        public void p(int i10, com.google.android.exoplayer2.source.o.b bVar) {
            if (G(i10, bVar)) {
                this.f24491c.i();
            }
        }

        @Override
        public void s(int i10, com.google.android.exoplayer2.source.o.b bVar) {
            com.google.android.exoplayer2.drm.l.a(this, i10, bVar);
        }

        @Override
        public void u(int i10, com.google.android.exoplayer2.source.o.b bVar, v9.h hVar, v9.i iVar) {
            if (G(i10, bVar)) {
                this.f24490b.B(hVar, iVar);
            }
        }

        @Override
        public void w(int i10, com.google.android.exoplayer2.source.o.b bVar, Exception exc) {
            if (G(i10, bVar)) {
                this.f24491c.l(exc);
            }
        }

        @Override
        public void y(int i10, com.google.android.exoplayer2.source.o.b bVar, v9.i iVar) {
            if (G(i10, bVar)) {
                this.f24490b.j(iVar);
            }
        }

        @Override
        public void z(int i10, com.google.android.exoplayer2.source.o.b bVar, v9.h hVar, v9.i iVar, IOException iOException, boolean z10) {
            if (G(i10, bVar)) {
                this.f24490b.y(hVar, iVar, iOException, z10);
            }
        }
    }

    private static final class b {

        public final com.google.android.exoplayer2.source.o f24493a;

        public final com.google.android.exoplayer2.source.o.c f24494b;

        public final a f24495c;

        public b(com.google.android.exoplayer2.source.o oVar, com.google.android.exoplayer2.source.o.c cVar, a aVar) {
            this.f24493a = oVar;
            this.f24494b = cVar;
            this.f24495c = aVar;
        }
    }

    static final class c implements g2 {

        public final com.google.android.exoplayer2.source.m f24496a;

        public int f24499d;

        public boolean f24500e;

        public final List f24498c = new ArrayList();

        public final Object f24497b = new Object();

        public c(com.google.android.exoplayer2.source.o oVar, boolean z10) {
            this.f24496a = new com.google.android.exoplayer2.source.m(oVar, z10);
        }

        @Override
        public Object a() {
            return this.f24497b;
        }

        @Override
        public l3 b() {
            return this.f24496a.P();
        }

        public void c(int i10) {
            this.f24499d = i10;
            this.f24500e = false;
            this.f24498c.clear();
        }
    }

    public interface d {
        void a();
    }

    public i2(d dVar, g9.a aVar, Handler handler, g9.u1 u1Var) {
        this.f24477a = u1Var;
        this.f24481e = dVar;
        com.google.android.exoplayer2.source.p.a aVar2 = new com.google.android.exoplayer2.source.p.a();
        this.f24482f = aVar2;
        com.google.android.exoplayer2.drm.s.a aVar3 = new com.google.android.exoplayer2.drm.s.a();
        this.f24483g = aVar3;
        this.f24484h = new HashMap();
        this.f24485i = new HashSet();
        aVar2.g(handler, aVar);
        aVar3.g(handler, aVar);
    }

    private void A(int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            c cVar = (c) this.f24478b.remove(i12);
            this.f24480d.remove(cVar.f24497b);
            g(i12, -cVar.f24496a.P().t());
            cVar.f24500e = true;
            if (this.f24487k) {
                u(cVar);
            }
        }
    }

    private void g(int i10, int i11) {
        while (i10 < this.f24478b.size()) {
            ((c) this.f24478b.get(i10)).f24499d += i11;
            i10++;
        }
    }

    private void j(c cVar) {
        b bVar = (b) this.f24484h.get(cVar);
        if (bVar != null) {
            bVar.f24493a.o(bVar.f24494b);
        }
    }

    private void k() {
        Iterator it = this.f24485i.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar.f24498c.isEmpty()) {
                j(cVar);
                it.remove();
            }
        }
    }

    private void l(c cVar) {
        this.f24485i.add(cVar);
        b bVar = (b) this.f24484h.get(cVar);
        if (bVar != null) {
            bVar.f24493a.k(bVar.f24494b);
        }
    }

    private static Object m(Object obj) {
        return com.google.android.exoplayer2.a.B(obj);
    }

    public static com.google.android.exoplayer2.source.o.b n(c cVar, com.google.android.exoplayer2.source.o.b bVar) {
        for (int i10 = 0; i10 < cVar.f24498c.size(); i10++) {
            if (((com.google.android.exoplayer2.source.o.b) cVar.f24498c.get(i10)).f73507d == bVar.f73507d) {
                return bVar.c(p(cVar, bVar.f73504a));
            }
        }
        return null;
    }

    private static Object o(Object obj) {
        return com.google.android.exoplayer2.a.C(obj);
    }

    private static Object p(c cVar, Object obj) {
        return com.google.android.exoplayer2.a.E(cVar.f24497b, obj);
    }

    public static int r(c cVar, int i10) {
        return i10 + cVar.f24499d;
    }

    public void t(com.google.android.exoplayer2.source.o oVar, l3 l3Var) {
        this.f24481e.a();
    }

    private void u(c cVar) {
        if (cVar.f24500e && cVar.f24498c.isEmpty()) {
            b bVar = (b) com.google.android.exoplayer2.util.a.e((b) this.f24484h.remove(cVar));
            bVar.f24493a.e(bVar.f24494b);
            bVar.f24493a.h(bVar.f24495c);
            bVar.f24493a.r(bVar.f24495c);
            this.f24485i.remove(cVar);
        }
    }

    private void w(c cVar) {
        com.google.android.exoplayer2.source.m mVar = cVar.f24496a;
        com.google.android.exoplayer2.source.o.c cVar2 = new com.google.android.exoplayer2.source.o.c() {
            @Override
            public final void a(com.google.android.exoplayer2.source.o oVar, l3 l3Var) {
                this.f24473a.t(oVar, l3Var);
            }
        };
        a aVar = new a(cVar);
        this.f24484h.put(cVar, new b(mVar, cVar2, aVar));
        mVar.g(com.google.android.exoplayer2.util.p0.y(), aVar);
        mVar.q(com.google.android.exoplayer2.util.p0.y(), aVar);
        mVar.m(cVar2, this.f24488l, this.f24477a);
    }

    public l3 B(List list, v9.t tVar) {
        A(0, this.f24478b.size());
        return f(this.f24478b.size(), list, tVar);
    }

    public l3 C(v9.t tVar) {
        int iQ = q();
        if (tVar.getLength() != iQ) {
            tVar = tVar.cloneAndClear().cloneAndInsert(0, iQ);
        }
        this.f24486j = tVar;
        return i();
    }

    public l3 f(int i10, List list, v9.t tVar) {
        if (!list.isEmpty()) {
            this.f24486j = tVar;
            for (int i11 = i10; i11 < list.size() + i10; i11++) {
                c cVar = (c) list.get(i11 - i10);
                if (i11 > 0) {
                    c cVar2 = (c) this.f24478b.get(i11 - 1);
                    cVar.c(cVar2.f24499d + cVar2.f24496a.P().t());
                } else {
                    cVar.c(0);
                }
                g(i11, cVar.f24496a.P().t());
                this.f24478b.add(i11, cVar);
                this.f24480d.put(cVar.f24497b, cVar);
                if (this.f24487k) {
                    w(cVar);
                    if (this.f24479c.isEmpty()) {
                        this.f24485i.add(cVar);
                    } else {
                        j(cVar);
                    }
                }
            }
        }
        return i();
    }

    public com.google.android.exoplayer2.source.n h(com.google.android.exoplayer2.source.o.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j10) {
        Object objO = o(bVar.f73504a);
        com.google.android.exoplayer2.source.o.b bVarC = bVar.c(m(bVar.f73504a));
        c cVar = (c) com.google.android.exoplayer2.util.a.e((c) this.f24480d.get(objO));
        l(cVar);
        cVar.f24498c.add(bVarC);
        com.google.android.exoplayer2.source.l lVarD = cVar.f24496a.d(bVarC, bVar2, j10);
        this.f24479c.put(lVarD, cVar);
        k();
        return lVarD;
    }

    public l3 i() {
        if (this.f24478b.isEmpty()) {
            return l3.f24520a;
        }
        int iT = 0;
        for (int i10 = 0; i10 < this.f24478b.size(); i10++) {
            c cVar = (c) this.f24478b.get(i10);
            cVar.f24499d = iT;
            iT += cVar.f24496a.P().t();
        }
        return new u2(this.f24478b, this.f24486j);
    }

    public int q() {
        return this.f24478b.size();
    }

    public boolean s() {
        return this.f24487k;
    }

    public void v(com.google.android.exoplayer2.upstream.k0 k0Var) {
        com.google.android.exoplayer2.util.a.g(!this.f24487k);
        this.f24488l = k0Var;
        for (int i10 = 0; i10 < this.f24478b.size(); i10++) {
            c cVar = (c) this.f24478b.get(i10);
            w(cVar);
            this.f24485i.add(cVar);
        }
        this.f24487k = true;
    }

    public void x() {
        for (b bVar : this.f24484h.values()) {
            try {
                bVar.f24493a.e(bVar.f24494b);
            } catch (RuntimeException e10) {
                com.google.android.exoplayer2.util.s.d("MediaSourceList", "Failed to release child source.", e10);
            }
            bVar.f24493a.h(bVar.f24495c);
            bVar.f24493a.r(bVar.f24495c);
        }
        this.f24484h.clear();
        this.f24485i.clear();
        this.f24487k = false;
    }

    public void y(com.google.android.exoplayer2.source.n nVar) {
        c cVar = (c) com.google.android.exoplayer2.util.a.e((c) this.f24479c.remove(nVar));
        cVar.f24496a.i(nVar);
        cVar.f24498c.remove(((com.google.android.exoplayer2.source.l) nVar).f25561a);
        if (!this.f24479c.isEmpty()) {
            k();
        }
        u(cVar);
    }

    public l3 z(int i10, int i11, v9.t tVar) {
        com.google.android.exoplayer2.util.a.a(i10 >= 0 && i10 <= i11 && i11 <= q());
        this.f24486j = tVar;
        A(i10, i11);
        return i();
    }
}
