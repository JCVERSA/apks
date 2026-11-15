package com.transsion.transfer.androidasync.future;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class w extends n implements c {

    private com.transsion.transfer.androidasync.c f53158a;

    private Exception f53159b;

    private Object f53160c;

    private boolean f53161d;

    private a f53162e;

    protected interface a {
        void a(Exception exc, Object obj, b bVar);
    }

    static class b {

        Exception f53163a;

        Object f53164b;

        a f53165c;

        b() {
        }

        void a() {
            while (true) {
                a aVar = this.f53165c;
                if (aVar == null) {
                    return;
                }
                Exception exc = this.f53163a;
                Object obj = this.f53164b;
                this.f53165c = null;
                this.f53163a = null;
                this.f53164b = null;
                aVar.a(exc, obj, this);
            }
        }
    }

    public w() {
    }

    public static f A(y yVar, Object obj) {
        return new w(yVar.then(obj));
    }

    private f F(f fVar, b bVar) {
        setParent(fVar);
        final w wVar = new w();
        if (fVar instanceof w) {
            ((w) fVar).D(bVar, new a() {
                @Override
                public final void a(Exception exc, Object obj, w.b bVar2) {
                    this.f53146a.w(wVar, exc, obj, bVar2);
                }
            });
        } else {
            fVar.f(new g() {
                @Override
                public final void a(Exception exc, Object obj) {
                    this.f53148a.x(wVar, exc, obj);
                }
            });
        }
        return wVar;
    }

    private boolean I(Exception exc, Object obj, b bVar) {
        synchronized (this) {
            try {
                if (!super.setComplete()) {
                    return false;
                }
                this.f53160c = obj;
                this.f53159b = exc;
                B();
                r(bVar, s());
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private boolean n(boolean z10) {
        a aVarS;
        if (!super.cancel()) {
            return false;
        }
        synchronized (this) {
            this.f53159b = new CancellationException();
            B();
            aVarS = s();
            this.f53161d = z10;
        }
        r(null, aVarS);
        return true;
    }

    private Object q() throws ExecutionException {
        if (this.f53159b == null) {
            return this.f53160c;
        }
        throw new ExecutionException(this.f53159b);
    }

    private void r(b bVar, a aVar) {
        boolean z10;
        if (this.f53161d || aVar == null) {
            return;
        }
        if (bVar == null) {
            bVar = new b();
            z10 = true;
        } else {
            z10 = false;
        }
        bVar.f53165c = aVar;
        bVar.f53163a = this.f53159b;
        bVar.f53164b = this.f53160c;
        if (z10) {
            bVar.a();
        }
    }

    private a s() {
        a aVar = this.f53162e;
        this.f53162e = null;
        return aVar;
    }

    public static f t(d dVar, Exception exc) {
        dVar.a(exc);
        return new w(null);
    }

    public static void u(w wVar, e eVar, Exception exc, Object obj, b bVar) {
        if (exc == null) {
            wVar.I(exc, obj, bVar);
            return;
        }
        try {
            wVar.F(eVar.a(exc), bVar);
        } catch (Exception e10) {
            wVar.I(e10, null, bVar);
        }
    }

    public void w(w wVar, Exception exc, Object obj, b bVar) {
        wVar.I(I(exc, obj, bVar) ? null : new CancellationException(), obj, bVar);
    }

    public void x(w wVar, Exception exc, Object obj) {
        wVar.G(I(exc, obj, null) ? null : new CancellationException());
    }

    public static void y(x xVar, w wVar, Exception e10, Object obj, b bVar) {
        if (e10 == null) {
            try {
                xVar.a(obj);
            } catch (Exception e11) {
                e10 = e11;
            }
        }
        wVar.I(e10, obj, bVar);
    }

    public static void z(w wVar, z zVar, Exception exc, Object obj, b bVar) {
        if (exc != null) {
            wVar.I(exc, null, bVar);
            return;
        }
        try {
            wVar.F(zVar.then(obj), bVar);
        } catch (Exception e10) {
            wVar.I(e10, null, bVar);
        }
    }

    void B() {
        com.transsion.transfer.androidasync.c cVar = this.f53158a;
        if (cVar != null) {
            cVar.b();
            this.f53158a = null;
        }
    }

    @Override
    public w reset() {
        super.reset();
        this.f53160c = null;
        this.f53159b = null;
        this.f53158a = null;
        this.f53162e = null;
        this.f53161d = false;
        return this;
    }

    void D(b bVar, a aVar) {
        synchronized (this) {
            try {
                this.f53162e = aVar;
                if (isDone() || isCancelled()) {
                    r(bVar, s());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public f E(f fVar) {
        return F(fVar, null);
    }

    public boolean G(Exception exc) {
        return I(exc, null, null);
    }

    public boolean H(Exception exc, Object obj) {
        return I(exc, obj, null);
    }

    public boolean J(Object obj) {
        return I(null, obj, null);
    }

    @Override
    public f a(final z zVar) {
        final w wVar = new w();
        wVar.setParent(this);
        D(null, new a() {
            @Override
            public final void a(Exception exc, Object obj, w.b bVar) {
                w.z(this.f53151a, zVar, exc, obj, bVar);
            }
        });
        return wVar;
    }

    @Override
    public boolean cancel(boolean z10) {
        return cancel();
    }

    @Override
    public f e(final d dVar) {
        return p(new e() {
            @Override
            public final f a(Exception exc) {
                return w.t(dVar, exc);
            }
        });
    }

    @Override
    public void f(final g gVar) {
        if (gVar == null) {
            D(null, null);
        } else {
            D(null, new a() {
                @Override
                public final void a(Exception exc, Object obj, w.b bVar) {
                    gVar.a(exc, obj);
                }
            });
        }
    }

    @Override
    public Object get() {
        synchronized (this) {
            if (!isCancelled() && !isDone()) {
                o().a();
                return q();
            }
            return q();
        }
    }

    @Override
    public f i(final y yVar) {
        return a(new z() {
            @Override
            public final f then(Object obj) {
                return w.A(yVar, obj);
            }
        });
    }

    @Override
    public f j(final x xVar) {
        final w wVar = new w();
        wVar.setParent(this);
        D(null, new a() {
            @Override
            public final void a(Exception exc, Object obj, w.b bVar) {
                w.y(xVar, wVar, exc, obj, bVar);
            }
        });
        return wVar;
    }

    com.transsion.transfer.androidasync.c o() {
        if (this.f53158a == null) {
            this.f53158a = new com.transsion.transfer.androidasync.c();
        }
        return this.f53158a;
    }

    public f p(final e eVar) {
        final w wVar = new w();
        wVar.setParent(this);
        D(null, new a() {
            @Override
            public final void a(Exception exc, Object obj, w.b bVar) {
                w.u(this.f53154a, eVar, exc, obj, bVar);
            }
        });
        return wVar;
    }

    @Override
    public boolean setComplete() {
        return J(null);
    }

    @Override
    public boolean setParent(com.transsion.transfer.androidasync.future.a aVar) {
        return super.setParent(aVar);
    }

    public w(Object obj) {
        J(obj);
    }

    @Override
    public boolean cancel() {
        return n(this.f53161d);
    }

    @Override
    public Object get(long j10, TimeUnit timeUnit) throws TimeoutException {
        synchronized (this) {
            if (!isCancelled() && !isDone()) {
                com.transsion.transfer.androidasync.c cVarO = o();
                if (cVarO.c(j10, timeUnit)) {
                    return q();
                }
                throw new TimeoutException();
            }
            return q();
        }
    }
}
