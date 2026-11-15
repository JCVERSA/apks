package androidx.media3.exoplayer.source;

import android.os.Handler;
import androidx.media3.common.e0;
import androidx.media3.common.util.a1;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;

public abstract class c extends androidx.media3.exoplayer.source.a {

    private final HashMap f12403h = new HashMap();

    private Handler f12404i;

    private w1.n f12405j;

    private final class a implements s, androidx.media3.exoplayer.drm.r {

        private final Object f12406a;

        private s.a f12407b;

        private androidx.media3.exoplayer.drm.r.a f12408c;

        public a(Object obj) {
            this.f12407b = c.this.u(null);
            this.f12408c = c.this.s(null);
            this.f12406a = obj;
        }

        private boolean I(int i10, r.b bVar) {
            r.b bVarD;
            if (bVar != null) {
                bVarD = c.this.D(this.f12406a, bVar);
                if (bVarD == null) {
                    return false;
                }
            } else {
                bVarD = null;
            }
            int iF = c.this.F(this.f12406a, i10);
            s.a aVar = this.f12407b;
            if (aVar.f12576a != iF || !Objects.equals(aVar.f12577b, bVarD)) {
                this.f12407b = c.this.t(iF, bVarD);
            }
            androidx.media3.exoplayer.drm.r.a aVar2 = this.f12408c;
            if (aVar2.f11295a == iF && Objects.equals(aVar2.f11296b, bVarD)) {
                return true;
            }
            this.f12408c = c.this.r(iF, bVarD);
            return true;
        }

        private f2.j J(f2.j jVar, r.b bVar) {
            long jE = c.this.E(this.f12406a, jVar.f59922f, bVar);
            long jE2 = c.this.E(this.f12406a, jVar.f59923g, bVar);
            return (jE == jVar.f59922f && jE2 == jVar.f59923g) ? jVar : new f2.j(jVar.f59917a, jVar.f59918b, jVar.f59919c, jVar.f59920d, jVar.f59921e, jE, jE2);
        }

        @Override
        public void A(int i10, r.b bVar, Exception exc) {
            if (I(i10, bVar)) {
                this.f12408c.l(exc);
            }
        }

        @Override
        public void B(int i10, r.b bVar, f2.i iVar, f2.j jVar) {
            if (I(i10, bVar)) {
                this.f12407b.x(iVar, J(jVar, bVar));
            }
        }

        @Override
        public void C(int i10, r.b bVar) {
            if (I(i10, bVar)) {
                this.f12408c.j();
            }
        }

        @Override
        public void F(int i10, r.b bVar) {
            if (I(i10, bVar)) {
                this.f12408c.m();
            }
        }

        @Override
        public void H(int i10, r.b bVar, f2.i iVar, f2.j jVar) {
            if (I(i10, bVar)) {
                this.f12407b.u(iVar, J(jVar, bVar));
            }
        }

        @Override
        public void l(int i10, r.b bVar, f2.i iVar, f2.j jVar, IOException iOException, boolean z10) {
            if (I(i10, bVar)) {
                this.f12407b.A(iVar, J(jVar, bVar), iOException, z10);
            }
        }

        @Override
        public void p(int i10, r.b bVar) {
            if (I(i10, bVar)) {
                this.f12408c.h();
            }
        }

        @Override
        public void r(int i10, r.b bVar, f2.j jVar) {
            if (I(i10, bVar)) {
                this.f12407b.k(J(jVar, bVar));
            }
        }

        @Override
        public void w(int i10, r.b bVar, f2.j jVar) {
            if (I(i10, bVar)) {
                this.f12407b.G(J(jVar, bVar));
            }
        }

        @Override
        public void x(int i10, r.b bVar, f2.i iVar, f2.j jVar, int i11) {
            if (I(i10, bVar)) {
                this.f12407b.D(iVar, J(jVar, bVar), i11);
            }
        }

        @Override
        public void y(int i10, r.b bVar, int i11) {
            if (I(i10, bVar)) {
                this.f12408c.k(i11);
            }
        }

        @Override
        public void z(int i10, r.b bVar) {
            if (I(i10, bVar)) {
                this.f12408c.i();
            }
        }
    }

    private static final class b {

        public final r f12410a;

        public final r.c f12411b;

        public final a f12412c;

        public b(r rVar, r.c cVar, a aVar) {
            this.f12410a = rVar;
            this.f12411b = cVar;
            this.f12412c = aVar;
        }
    }

    protected c() {
    }

    @Override
    protected void B() {
        for (b bVar : this.f12403h.values()) {
            bVar.f12410a.o(bVar.f12411b);
            bVar.f12410a.e(bVar.f12412c);
            bVar.f12410a.j(bVar.f12412c);
        }
        this.f12403h.clear();
    }

    protected abstract r.b D(Object obj, r.b bVar);

    public abstract void G(Object obj, r rVar, androidx.media3.common.e0 e0Var);

    protected final void I(final Object obj, r rVar) {
        androidx.media3.common.util.a.a(!this.f12403h.containsKey(obj));
        r.c cVar = new r.c() {
            @Override
            public final void a(androidx.media3.exoplayer.source.r rVar2, e0 e0Var) {
                this.f59901a.G(obj, rVar2, e0Var);
            }
        };
        a aVar = new a(obj);
        this.f12403h.put(obj, new b(rVar, cVar, aVar));
        rVar.d((Handler) androidx.media3.common.util.a.e(this.f12404i), aVar);
        rVar.i((Handler) androidx.media3.common.util.a.e(this.f12404i), aVar);
        rVar.l(cVar, this.f12405j, x());
        if (y()) {
            return;
        }
        rVar.p(cVar);
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() {
        Iterator it = this.f12403h.values().iterator();
        while (it.hasNext()) {
            ((b) it.next()).f12410a.maybeThrowSourceInfoRefreshError();
        }
    }

    @Override
    protected void v() {
        for (b bVar : this.f12403h.values()) {
            bVar.f12410a.p(bVar.f12411b);
        }
    }

    @Override
    protected void w() {
        for (b bVar : this.f12403h.values()) {
            bVar.f12410a.m(bVar.f12411b);
        }
    }

    @Override
    protected void z(w1.n nVar) {
        this.f12405j = nVar;
        this.f12404i = a1.A();
    }

    protected int F(Object obj, int i10) {
        return i10;
    }

    protected long E(Object obj, long j10, r.b bVar) {
        return j10;
    }
}
