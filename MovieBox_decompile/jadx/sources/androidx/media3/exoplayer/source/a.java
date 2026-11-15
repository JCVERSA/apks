package androidx.media3.exoplayer.source;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import x1.f4;

public abstract class a implements r {

    private final ArrayList f12314a = new ArrayList(1);

    private final HashSet f12315b = new HashSet(1);

    private final s.a f12316c = new s.a();

    private final androidx.media3.exoplayer.drm.r.a f12317d = new androidx.media3.exoplayer.drm.r.a();

    private Looper f12318e;

    private androidx.media3.common.e0 f12319f;

    private f4 f12320g;

    protected final void A(androidx.media3.common.e0 e0Var) {
        this.f12319f = e0Var;
        Iterator it = this.f12314a.iterator();
        while (it.hasNext()) {
            ((r.c) it.next()).a(this, e0Var);
        }
    }

    protected abstract void B();

    @Override
    public boolean b() {
        return f2.k.c(this);
    }

    @Override
    public androidx.media3.common.e0 c() {
        return f2.k.b(this);
    }

    @Override
    public final void d(Handler handler, s sVar) {
        androidx.media3.common.util.a.e(handler);
        androidx.media3.common.util.a.e(sVar);
        this.f12316c.h(handler, sVar);
    }

    @Override
    public final void e(s sVar) {
        this.f12316c.E(sVar);
    }

    @Override
    public final void i(Handler handler, androidx.media3.exoplayer.drm.r rVar) {
        androidx.media3.common.util.a.e(handler);
        androidx.media3.common.util.a.e(rVar);
        this.f12317d.g(handler, rVar);
    }

    @Override
    public final void j(androidx.media3.exoplayer.drm.r rVar) {
        this.f12317d.t(rVar);
    }

    @Override
    public final void l(r.c cVar, w1.n nVar, f4 f4Var) {
        Looper looperMyLooper = Looper.myLooper();
        Looper looper = this.f12318e;
        androidx.media3.common.util.a.a(looper == null || looper == looperMyLooper);
        this.f12320g = f4Var;
        androidx.media3.common.e0 e0Var = this.f12319f;
        this.f12314a.add(cVar);
        if (this.f12318e == null) {
            this.f12318e = looperMyLooper;
            this.f12315b.add(cVar);
            z(nVar);
        } else if (e0Var != null) {
            m(cVar);
            cVar.a(this, e0Var);
        }
    }

    @Override
    public final void m(r.c cVar) {
        androidx.media3.common.util.a.e(this.f12318e);
        boolean zIsEmpty = this.f12315b.isEmpty();
        this.f12315b.add(cVar);
        if (zIsEmpty) {
            w();
        }
    }

    @Override
    public void n(androidx.media3.common.t tVar) {
        f2.k.d(this, tVar);
    }

    @Override
    public final void o(r.c cVar) {
        this.f12314a.remove(cVar);
        if (!this.f12314a.isEmpty()) {
            p(cVar);
            return;
        }
        this.f12318e = null;
        this.f12319f = null;
        this.f12320g = null;
        this.f12315b.clear();
        B();
    }

    @Override
    public final void p(r.c cVar) {
        boolean zIsEmpty = this.f12315b.isEmpty();
        this.f12315b.remove(cVar);
        if (zIsEmpty || !this.f12315b.isEmpty()) {
            return;
        }
        v();
    }

    @Override
    public boolean q(androidx.media3.common.t tVar) {
        return f2.k.a(this, tVar);
    }

    protected final androidx.media3.exoplayer.drm.r.a r(int i10, r.b bVar) {
        return this.f12317d.u(i10, bVar);
    }

    protected final androidx.media3.exoplayer.drm.r.a s(r.b bVar) {
        return this.f12317d.u(0, bVar);
    }

    protected final s.a t(int i10, r.b bVar) {
        return this.f12316c.H(i10, bVar);
    }

    protected final s.a u(r.b bVar) {
        return this.f12316c.H(0, bVar);
    }

    protected final f4 x() {
        return (f4) androidx.media3.common.util.a.i(this.f12320g);
    }

    protected final boolean y() {
        return !this.f12315b.isEmpty();
    }

    protected abstract void z(w1.n nVar);

    protected void v() {
    }

    protected void w() {
    }
}
