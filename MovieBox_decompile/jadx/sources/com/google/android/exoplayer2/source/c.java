package com.google.android.exoplayer2.source;

import android.os.Handler;
import com.google.android.exoplayer2.l3;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.util.p0;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;

public abstract class c extends com.google.android.exoplayer2.source.a {

    private final HashMap f25068h = new HashMap();

    private Handler f25069i;

    private k0 f25070j;

    private final class a implements p, com.google.android.exoplayer2.drm.s {

        private final Object f25071a;

        private p.a f25072b;

        private com.google.android.exoplayer2.drm.s.a f25073c;

        public a(Object obj) {
            this.f25072b = c.this.v(null);
            this.f25073c = c.this.t(null);
            this.f25071a = obj;
        }

        private boolean G(int i10, o.b bVar) {
            o.b bVarF;
            if (bVar != null) {
                bVarF = c.this.F(this.f25071a, bVar);
                if (bVarF == null) {
                    return false;
                }
            } else {
                bVarF = null;
            }
            int iH = c.this.H(this.f25071a, i10);
            p.a aVar = this.f25072b;
            if (aVar.f25583a != iH || !p0.c(aVar.f25584b, bVarF)) {
                this.f25072b = c.this.u(iH, bVarF, 0L);
            }
            com.google.android.exoplayer2.drm.s.a aVar2 = this.f25073c;
            if (aVar2.f24371a == iH && p0.c(aVar2.f24372b, bVarF)) {
                return true;
            }
            this.f25073c = c.this.s(iH, bVarF);
            return true;
        }

        private v9.i H(v9.i iVar) {
            long jG = c.this.G(this.f25071a, iVar.f73502f);
            long jG2 = c.this.G(this.f25071a, iVar.f73503g);
            return (jG == iVar.f73502f && jG2 == iVar.f73503g) ? iVar : new v9.i(iVar.f73497a, iVar.f73498b, iVar.f73499c, iVar.f73500d, iVar.f73501e, jG, jG2);
        }

        @Override
        public void A(int i10, o.b bVar) {
            if (G(i10, bVar)) {
                this.f25073c.h();
            }
        }

        @Override
        public void B(int i10, o.b bVar, int i11) {
            if (G(i10, bVar)) {
                this.f25073c.k(i11);
            }
        }

        @Override
        public void C(int i10, o.b bVar) {
            if (G(i10, bVar)) {
                this.f25073c.m();
            }
        }

        @Override
        public void D(int i10, o.b bVar, v9.h hVar, v9.i iVar) {
            if (G(i10, bVar)) {
                this.f25072b.v(hVar, H(iVar));
            }
        }

        @Override
        public void E(int i10, o.b bVar, v9.i iVar) {
            if (G(i10, bVar)) {
                this.f25072b.E(H(iVar));
            }
        }

        @Override
        public void F(int i10, o.b bVar) {
            if (G(i10, bVar)) {
                this.f25073c.j();
            }
        }

        @Override
        public void l(int i10, o.b bVar, v9.h hVar, v9.i iVar) {
            if (G(i10, bVar)) {
                this.f25072b.s(hVar, H(iVar));
            }
        }

        @Override
        public void p(int i10, o.b bVar) {
            if (G(i10, bVar)) {
                this.f25073c.i();
            }
        }

        @Override
        public void s(int i10, o.b bVar) {
            com.google.android.exoplayer2.drm.l.a(this, i10, bVar);
        }

        @Override
        public void u(int i10, o.b bVar, v9.h hVar, v9.i iVar) {
            if (G(i10, bVar)) {
                this.f25072b.B(hVar, H(iVar));
            }
        }

        @Override
        public void w(int i10, o.b bVar, Exception exc) {
            if (G(i10, bVar)) {
                this.f25073c.l(exc);
            }
        }

        @Override
        public void y(int i10, o.b bVar, v9.i iVar) {
            if (G(i10, bVar)) {
                this.f25072b.j(H(iVar));
            }
        }

        @Override
        public void z(int i10, o.b bVar, v9.h hVar, v9.i iVar, IOException iOException, boolean z10) {
            if (G(i10, bVar)) {
                this.f25072b.y(hVar, H(iVar), iOException, z10);
            }
        }
    }

    private static final class b {

        public final o f25075a;

        public final o.c f25076b;

        public final a f25077c;

        public b(o oVar, o.c cVar, a aVar) {
            this.f25075a = oVar;
            this.f25076b = cVar;
            this.f25077c = aVar;
        }
    }

    protected c() {
    }

    @Override
    protected void B(k0 k0Var) {
        this.f25070j = k0Var;
        this.f25069i = p0.w();
    }

    @Override
    protected void D() {
        for (b bVar : this.f25068h.values()) {
            bVar.f25075a.e(bVar.f25076b);
            bVar.f25075a.h(bVar.f25077c);
            bVar.f25075a.r(bVar.f25077c);
        }
        this.f25068h.clear();
    }

    public abstract void I(Object obj, o oVar, l3 l3Var);

    protected final void K(final Object obj, o oVar) {
        com.google.android.exoplayer2.util.a.a(!this.f25068h.containsKey(obj));
        o.c cVar = new o.c() {
            @Override
            public final void a(com.google.android.exoplayer2.source.o oVar2, l3 l3Var) {
                this.f73485a.I(obj, oVar2, l3Var);
            }
        };
        a aVar = new a(obj);
        this.f25068h.put(obj, new b(oVar, cVar, aVar));
        oVar.g((Handler) com.google.android.exoplayer2.util.a.e(this.f25069i), aVar);
        oVar.q((Handler) com.google.android.exoplayer2.util.a.e(this.f25069i), aVar);
        oVar.m(cVar, this.f25070j, z());
        if (A()) {
            return;
        }
        oVar.o(cVar);
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() {
        Iterator it = this.f25068h.values().iterator();
        while (it.hasNext()) {
            ((b) it.next()).f25075a.maybeThrowSourceInfoRefreshError();
        }
    }

    @Override
    protected void x() {
        for (b bVar : this.f25068h.values()) {
            bVar.f25075a.o(bVar.f25076b);
        }
    }

    @Override
    protected void y() {
        for (b bVar : this.f25068h.values()) {
            bVar.f25075a.k(bVar.f25076b);
        }
    }

    protected o.b F(Object obj, o.b bVar) {
        return bVar;
    }

    protected long G(Object obj, long j10) {
        return j10;
    }

    protected int H(Object obj, int i10) {
        return i10;
    }
}
