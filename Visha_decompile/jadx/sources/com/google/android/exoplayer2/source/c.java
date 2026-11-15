package com.google.android.exoplayer2.source;

import android.os.Handler;
import com.google.android.exoplayer2.a0;
import com.google.android.exoplayer2.source.i;
import defpackage.blb;
import defpackage.ih6;
import defpackage.in5;
import defpackage.u5b;
import defpackage.zi;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;

public abstract class c extends com.google.android.exoplayer2.source.a {
    public final HashMap h = new HashMap();
    public Handler i;
    public u5b j;

    public final class a implements j, com.google.android.exoplayer2.drm.b {
        public final Object b;
        public j.a c;
        public com.google.android.exoplayer2.drm.b.a d;

        public a(Object obj) {
            this.c = c.this.o(null);
            this.d = c.this.m(null);
            this.b = obj;
        }

        private boolean v(int i, i.b bVar) {
            i.b bVarX;
            if (bVar != null) {
                bVarX = c.this.x(this.b, bVar);
                if (bVarX == null) {
                    return false;
                }
            } else {
                bVarX = null;
            }
            int iZ = c.this.z(this.b, i);
            j.a aVar = this.c;
            if (aVar.a != iZ || !blb.c(aVar.b, bVarX)) {
                this.c = c.this.n(iZ, bVarX, 0L);
            }
            com.google.android.exoplayer2.drm.b.a aVar2 = this.d;
            if (aVar2.a == iZ && blb.c(aVar2.b, bVarX)) {
                return true;
            }
            this.d = c.this.l(iZ, bVarX);
            return true;
        }

        @Override
        public void g(int i, i.b bVar, ih6 ih6Var) {
            if (v(i, bVar)) {
                this.c.i(w(ih6Var));
            }
        }

        @Override
        public void i(int i, i.b bVar, in5 in5Var, ih6 ih6Var) {
            if (v(i, bVar)) {
                this.c.r(in5Var, w(ih6Var));
            }
        }

        @Override
        public void j(int i, i.b bVar) {
            if (v(i, bVar)) {
                this.d.h();
            }
        }

        @Override
        public void k(int i, i.b bVar, int i2) {
            if (v(i, bVar)) {
                this.d.k(i2);
            }
        }

        @Override
        public void l(int i, i.b bVar) {
            if (v(i, bVar)) {
                this.d.j();
            }
        }

        @Override
        public void m(int i, i.b bVar) {
            if (v(i, bVar)) {
                this.d.i();
            }
        }

        @Override
        public void o(int i, i.b bVar, Exception exc) {
            if (v(i, bVar)) {
                this.d.l(exc);
            }
        }

        @Override
        public void p(int i, i.b bVar, in5 in5Var, ih6 ih6Var) {
            if (v(i, bVar)) {
                this.c.p(in5Var, w(ih6Var));
            }
        }

        @Override
        public void s(int i, i.b bVar, in5 in5Var, ih6 ih6Var) {
            if (v(i, bVar)) {
                this.c.v(in5Var, w(ih6Var));
            }
        }

        @Override
        public void t(int i, i.b bVar, in5 in5Var, ih6 ih6Var, IOException iOException, boolean z) {
            if (v(i, bVar)) {
                this.c.t(in5Var, w(ih6Var), iOException, z);
            }
        }

        @Override
        public void u(int i, i.b bVar) {
            if (v(i, bVar)) {
                this.d.m();
            }
        }

        public final ih6 w(ih6 ih6Var) {
            long jY = c.this.y(this.b, ih6Var.f);
            long jY2 = c.this.y(this.b, ih6Var.g);
            return (jY == ih6Var.f && jY2 == ih6Var.g) ? ih6Var : new ih6(ih6Var.a, ih6Var.b, ih6Var.c, ih6Var.d, ih6Var.e, jY, jY2);
        }
    }

    public static final class b {
        public final i a;
        public final i.c b;
        public final a c;

        public b(i iVar, i.c cVar, a aVar) {
            this.a = iVar;
            this.b = cVar;
            this.c = aVar;
        }
    }

    public abstract void A(Object obj, i iVar, a0 a0Var);

    public final void C(final Object obj, i iVar) {
        zi.a(!this.h.containsKey(obj));
        i.c cVar = new i.c() {
            @Override
            public final void a(i iVar2, a0 a0Var) {
                this.a.A(obj, iVar2, a0Var);
            }
        };
        a aVar = new a(obj);
        this.h.put(obj, new b(iVar, cVar, aVar));
        iVar.d((Handler) zi.e(this.i), aVar);
        iVar.i((Handler) zi.e(this.i), aVar);
        iVar.k(cVar, this.j, r());
        if (s()) {
            return;
        }
        iVar.g(cVar);
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() {
        Iterator it = this.h.values().iterator();
        while (it.hasNext()) {
            ((b) it.next()).a.maybeThrowSourceInfoRefreshError();
        }
    }

    @Override
    public void p() {
        for (b bVar : this.h.values()) {
            bVar.a.g(bVar.b);
        }
    }

    @Override
    public void q() {
        for (b bVar : this.h.values()) {
            bVar.a.f(bVar.b);
        }
    }

    @Override
    public void t(u5b u5bVar) {
        this.j = u5bVar;
        this.i = blb.u();
    }

    @Override
    public void v() {
        for (b bVar : this.h.values()) {
            bVar.a.a(bVar.b);
            bVar.a.b(bVar.c);
            bVar.a.j(bVar.c);
        }
        this.h.clear();
    }

    public i.b x(Object obj, i.b bVar) {
        return bVar;
    }

    public long y(Object obj, long j) {
        return j;
    }

    public int z(Object obj, int i) {
        return i;
    }
}
