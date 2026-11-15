package androidx.media3.exoplayer;

import android.util.Pair;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

final class q3 {

    private final x1.f4 f12148a;

    private final d f12152e;

    private final x1.a f12155h;

    private final androidx.media3.common.util.p f12156i;

    private boolean f12158k;

    private w1.n f12159l;

    private f2.v f12157j = new f2.v.a(0);

    private final IdentityHashMap f12150c = new IdentityHashMap();

    private final Map f12151d = new HashMap();

    private final List f12149b = new ArrayList();

    private final HashMap f12153f = new HashMap();

    private final Set f12154g = new HashSet();

    final class a implements androidx.media3.exoplayer.source.s, androidx.media3.exoplayer.drm.r {

        private final c f12160a;

        public a(c cVar) {
            this.f12160a = cVar;
        }

        private Pair U(int i10, androidx.media3.exoplayer.source.r.b bVar) {
            androidx.media3.exoplayer.source.r.b bVar2 = null;
            if (bVar != null) {
                androidx.media3.exoplayer.source.r.b bVarN = q3.n(this.f12160a, bVar);
                if (bVarN == null) {
                    return null;
                }
                bVar2 = bVarN;
            }
            return Pair.create(Integer.valueOf(q3.s(this.f12160a, i10)), bVar2);
        }

        public void V(Pair pair, f2.j jVar) {
            q3.this.f12155h.r(((Integer) pair.first).intValue(), (androidx.media3.exoplayer.source.r.b) pair.second, jVar);
        }

        public void W(Pair pair) {
            q3.this.f12155h.p(((Integer) pair.first).intValue(), (androidx.media3.exoplayer.source.r.b) pair.second);
        }

        public void X(Pair pair) {
            q3.this.f12155h.z(((Integer) pair.first).intValue(), (androidx.media3.exoplayer.source.r.b) pair.second);
        }

        public void Y(Pair pair) {
            q3.this.f12155h.C(((Integer) pair.first).intValue(), (androidx.media3.exoplayer.source.r.b) pair.second);
        }

        public void Z(Pair pair, int i10) {
            q3.this.f12155h.y(((Integer) pair.first).intValue(), (androidx.media3.exoplayer.source.r.b) pair.second, i10);
        }

        public void a0(Pair pair, Exception exc) {
            q3.this.f12155h.A(((Integer) pair.first).intValue(), (androidx.media3.exoplayer.source.r.b) pair.second, exc);
        }

        public void b0(Pair pair) {
            q3.this.f12155h.F(((Integer) pair.first).intValue(), (androidx.media3.exoplayer.source.r.b) pair.second);
        }

        public void c0(Pair pair, f2.i iVar, f2.j jVar) {
            q3.this.f12155h.H(((Integer) pair.first).intValue(), (androidx.media3.exoplayer.source.r.b) pair.second, iVar, jVar);
        }

        public void d0(Pair pair, f2.i iVar, f2.j jVar) {
            q3.this.f12155h.B(((Integer) pair.first).intValue(), (androidx.media3.exoplayer.source.r.b) pair.second, iVar, jVar);
        }

        public void e0(Pair pair, f2.i iVar, f2.j jVar, IOException iOException, boolean z10) {
            q3.this.f12155h.l(((Integer) pair.first).intValue(), (androidx.media3.exoplayer.source.r.b) pair.second, iVar, jVar, iOException, z10);
        }

        public void f0(Pair pair, f2.i iVar, f2.j jVar, int i10) {
            q3.this.f12155h.x(((Integer) pair.first).intValue(), (androidx.media3.exoplayer.source.r.b) pair.second, iVar, jVar, i10);
        }

        public void g0(Pair pair, f2.j jVar) {
            q3.this.f12155h.w(((Integer) pair.first).intValue(), (androidx.media3.exoplayer.source.r.b) androidx.media3.common.util.a.e((androidx.media3.exoplayer.source.r.b) pair.second), jVar);
        }

        @Override
        public void A(int i10, androidx.media3.exoplayer.source.r.b bVar, final Exception exc) {
            final Pair pairU = U(i10, bVar);
            if (pairU != null) {
                q3.this.f12156i.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f11715a.a0(pairU, exc);
                    }
                });
            }
        }

        @Override
        public void B(int i10, androidx.media3.exoplayer.source.r.b bVar, final f2.i iVar, final f2.j jVar) {
            final Pair pairU = U(i10, bVar);
            if (pairU != null) {
                q3.this.f12156i.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f11787a.d0(pairU, iVar, jVar);
                    }
                });
            }
        }

        @Override
        public void C(int i10, androidx.media3.exoplayer.source.r.b bVar) {
            final Pair pairU = U(i10, bVar);
            if (pairU != null) {
                q3.this.f12156i.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f11320a.Y(pairU);
                    }
                });
            }
        }

        @Override
        public void F(int i10, androidx.media3.exoplayer.source.r.b bVar) {
            final Pair pairU = U(i10, bVar);
            if (pairU != null) {
                q3.this.f12156i.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f11744a.b0(pairU);
                    }
                });
            }
        }

        @Override
        public void H(int i10, androidx.media3.exoplayer.source.r.b bVar, final f2.i iVar, final f2.j jVar) {
            final Pair pairU = U(i10, bVar);
            if (pairU != null) {
                q3.this.f12156i.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f11341a.c0(pairU, iVar, jVar);
                    }
                });
            }
        }

        @Override
        public void l(int i10, androidx.media3.exoplayer.source.r.b bVar, final f2.i iVar, final f2.j jVar, final IOException iOException, final boolean z10) {
            final Pair pairU = U(i10, bVar);
            if (pairU != null) {
                q3.this.f12156i.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f11988a.e0(pairU, iVar, jVar, iOException, z10);
                    }
                });
            }
        }

        @Override
        public void p(int i10, androidx.media3.exoplayer.source.r.b bVar) {
            final Pair pairU = U(i10, bVar);
            if (pairU != null) {
                q3.this.f12156i.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f11326a.W(pairU);
                    }
                });
            }
        }

        @Override
        public void r(int i10, androidx.media3.exoplayer.source.r.b bVar, final f2.j jVar) {
            final Pair pairU = U(i10, bVar);
            if (pairU != null) {
                q3.this.f12156i.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f11734a.V(pairU, jVar);
                    }
                });
            }
        }

        @Override
        public void w(int i10, androidx.media3.exoplayer.source.r.b bVar, final f2.j jVar) {
            final Pair pairU = U(i10, bVar);
            if (pairU != null) {
                q3.this.f12156i.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f11312a.g0(pairU, jVar);
                    }
                });
            }
        }

        @Override
        public void x(int i10, androidx.media3.exoplayer.source.r.b bVar, final f2.i iVar, final f2.j jVar, final int i11) {
            final Pair pairU = U(i10, bVar);
            if (pairU != null) {
                q3.this.f12156i.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f11967a.f0(pairU, iVar, jVar, i11);
                    }
                });
            }
        }

        @Override
        public void y(int i10, androidx.media3.exoplayer.source.r.b bVar, final int i11) {
            final Pair pairU = U(i10, bVar);
            if (pairU != null) {
                q3.this.f12156i.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f11818a.Z(pairU, i11);
                    }
                });
            }
        }

        @Override
        public void z(int i10, androidx.media3.exoplayer.source.r.b bVar) {
            final Pair pairU = U(i10, bVar);
            if (pairU != null) {
                q3.this.f12156i.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.f12134a.X(pairU);
                    }
                });
            }
        }
    }

    private static final class b {

        public final androidx.media3.exoplayer.source.r f12162a;

        public final androidx.media3.exoplayer.source.r.c f12163b;

        public final a f12164c;

        public b(androidx.media3.exoplayer.source.r rVar, androidx.media3.exoplayer.source.r.c cVar, a aVar) {
            this.f12162a = rVar;
            this.f12163b = cVar;
            this.f12164c = aVar;
        }
    }

    static final class c implements c3 {

        public final androidx.media3.exoplayer.source.p f12165a;

        public int f12168d;

        public boolean f12169e;

        public final List f12167c = new ArrayList();

        public final Object f12166b = new Object();

        public c(androidx.media3.exoplayer.source.r rVar, boolean z10) {
            this.f12165a = new androidx.media3.exoplayer.source.p(rVar, z10);
        }

        @Override
        public Object a() {
            return this.f12166b;
        }

        @Override
        public androidx.media3.common.e0 b() {
            return this.f12165a.W();
        }

        public void c(int i10) {
            this.f12168d = i10;
            this.f12169e = false;
            this.f12167c.clear();
        }
    }

    public interface d {
        void a();
    }

    public q3(d dVar, x1.a aVar, androidx.media3.common.util.p pVar, x1.f4 f4Var) {
        this.f12148a = f4Var;
        this.f12152e = dVar;
        this.f12155h = aVar;
        this.f12156i = pVar;
    }

    private void B(int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            c cVar = (c) this.f12149b.remove(i12);
            this.f12151d.remove(cVar.f12166b);
            g(i12, -cVar.f12165a.W().p());
            cVar.f12169e = true;
            if (this.f12158k) {
                v(cVar);
            }
        }
    }

    private void g(int i10, int i11) {
        while (i10 < this.f12149b.size()) {
            ((c) this.f12149b.get(i10)).f12168d += i11;
            i10++;
        }
    }

    private void j(c cVar) {
        b bVar = (b) this.f12153f.get(cVar);
        if (bVar != null) {
            bVar.f12162a.p(bVar.f12163b);
        }
    }

    private void k() {
        Iterator it = this.f12154g.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar.f12167c.isEmpty()) {
                j(cVar);
                it.remove();
            }
        }
    }

    private void l(c cVar) {
        this.f12154g.add(cVar);
        b bVar = (b) this.f12153f.get(cVar);
        if (bVar != null) {
            bVar.f12162a.m(bVar.f12163b);
        }
    }

    private static Object m(Object obj) {
        return androidx.media3.exoplayer.a.v(obj);
    }

    public static androidx.media3.exoplayer.source.r.b n(c cVar, androidx.media3.exoplayer.source.r.b bVar) {
        for (int i10 = 0; i10 < cVar.f12167c.size(); i10++) {
            if (((androidx.media3.exoplayer.source.r.b) cVar.f12167c.get(i10)).f12574d == bVar.f12574d) {
                return bVar.a(p(cVar, bVar.f12571a));
            }
        }
        return null;
    }

    private static Object o(Object obj) {
        return androidx.media3.exoplayer.a.w(obj);
    }

    private static Object p(c cVar, Object obj) {
        return androidx.media3.exoplayer.a.y(cVar.f12166b, obj);
    }

    public static int s(c cVar, int i10) {
        return i10 + cVar.f12168d;
    }

    public void u(androidx.media3.exoplayer.source.r rVar, androidx.media3.common.e0 e0Var) {
        this.f12152e.a();
    }

    private void v(c cVar) {
        if (cVar.f12169e && cVar.f12167c.isEmpty()) {
            b bVar = (b) androidx.media3.common.util.a.e((b) this.f12153f.remove(cVar));
            bVar.f12162a.o(bVar.f12163b);
            bVar.f12162a.e(bVar.f12164c);
            bVar.f12162a.j(bVar.f12164c);
            this.f12154g.remove(cVar);
        }
    }

    private void x(c cVar) {
        androidx.media3.exoplayer.source.p pVar = cVar.f12165a;
        androidx.media3.exoplayer.source.r.c cVar2 = new androidx.media3.exoplayer.source.r.c() {
            @Override
            public final void a(androidx.media3.exoplayer.source.r rVar, androidx.media3.common.e0 e0Var) {
                this.f11040a.u(rVar, e0Var);
            }
        };
        a aVar = new a(cVar);
        this.f12153f.put(cVar, new b(pVar, cVar2, aVar));
        pVar.d(androidx.media3.common.util.a1.C(), aVar);
        pVar.i(androidx.media3.common.util.a1.C(), aVar);
        pVar.l(cVar2, this.f12159l, this.f12148a);
    }

    public androidx.media3.common.e0 A(int i10, int i11, f2.v vVar) {
        androidx.media3.common.util.a.a(i10 >= 0 && i10 <= i11 && i11 <= r());
        this.f12157j = vVar;
        B(i10, i11);
        return i();
    }

    public androidx.media3.common.e0 C(List list, f2.v vVar) {
        B(0, this.f12149b.size());
        return f(this.f12149b.size(), list, vVar);
    }

    public androidx.media3.common.e0 D(f2.v vVar) {
        int iR = r();
        if (vVar.getLength() != iR) {
            vVar = vVar.cloneAndClear().cloneAndInsert(0, iR);
        }
        this.f12157j = vVar;
        return i();
    }

    public androidx.media3.common.e0 E(int i10, int i11, List list) {
        androidx.media3.common.util.a.a(i10 >= 0 && i10 <= i11 && i11 <= r());
        androidx.media3.common.util.a.a(list.size() == i11 - i10);
        for (int i12 = i10; i12 < i11; i12++) {
            ((c) this.f12149b.get(i12)).f12165a.n((androidx.media3.common.t) list.get(i12 - i10));
        }
        return i();
    }

    public androidx.media3.common.e0 f(int i10, List list, f2.v vVar) {
        if (!list.isEmpty()) {
            this.f12157j = vVar;
            for (int i11 = i10; i11 < list.size() + i10; i11++) {
                c cVar = (c) list.get(i11 - i10);
                if (i11 > 0) {
                    c cVar2 = (c) this.f12149b.get(i11 - 1);
                    cVar.c(cVar2.f12168d + cVar2.f12165a.W().p());
                } else {
                    cVar.c(0);
                }
                g(i11, cVar.f12165a.W().p());
                this.f12149b.add(i11, cVar);
                this.f12151d.put(cVar.f12166b, cVar);
                if (this.f12158k) {
                    x(cVar);
                    if (this.f12150c.isEmpty()) {
                        this.f12154g.add(cVar);
                    } else {
                        j(cVar);
                    }
                }
            }
        }
        return i();
    }

    public androidx.media3.exoplayer.source.q h(androidx.media3.exoplayer.source.r.b bVar, androidx.media3.exoplayer.upstream.b bVar2, long j10) {
        Object objO = o(bVar.f12571a);
        androidx.media3.exoplayer.source.r.b bVarA = bVar.a(m(bVar.f12571a));
        c cVar = (c) androidx.media3.common.util.a.e((c) this.f12151d.get(objO));
        l(cVar);
        cVar.f12167c.add(bVarA);
        androidx.media3.exoplayer.source.o oVarG = cVar.f12165a.g(bVarA, bVar2, j10);
        this.f12150c.put(oVarG, cVar);
        k();
        return oVarG;
    }

    public androidx.media3.common.e0 i() {
        if (this.f12149b.isEmpty()) {
            return androidx.media3.common.e0.f9613a;
        }
        int iP = 0;
        for (int i10 = 0; i10 < this.f12149b.size(); i10++) {
            c cVar = (c) this.f12149b.get(i10);
            cVar.f12168d = iP;
            iP += cVar.f12165a.W().p();
        }
        return new u3(this.f12149b, this.f12157j);
    }

    public f2.v q() {
        return this.f12157j;
    }

    public int r() {
        return this.f12149b.size();
    }

    public boolean t() {
        return this.f12158k;
    }

    public void w(w1.n nVar) {
        androidx.media3.common.util.a.g(!this.f12158k);
        this.f12159l = nVar;
        for (int i10 = 0; i10 < this.f12149b.size(); i10++) {
            c cVar = (c) this.f12149b.get(i10);
            x(cVar);
            this.f12154g.add(cVar);
        }
        this.f12158k = true;
    }

    public void y() {
        for (b bVar : this.f12153f.values()) {
            try {
                bVar.f12162a.o(bVar.f12163b);
            } catch (RuntimeException e10) {
                androidx.media3.common.util.u.d("MediaSourceList", "Failed to release child source.", e10);
            }
            bVar.f12162a.e(bVar.f12164c);
            bVar.f12162a.j(bVar.f12164c);
        }
        this.f12153f.clear();
        this.f12154g.clear();
        this.f12158k = false;
    }

    public void z(androidx.media3.exoplayer.source.q qVar) {
        c cVar = (c) androidx.media3.common.util.a.e((c) this.f12150c.remove(qVar));
        cVar.f12165a.k(qVar);
        cVar.f12167c.remove(((androidx.media3.exoplayer.source.o) qVar).f12550a);
        if (!this.f12150c.isEmpty()) {
            k();
        }
        v(cVar);
    }
}
