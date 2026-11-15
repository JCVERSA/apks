package com.yandex.mobile.ads.impl;

import androidx.core.app.NotificationCompat;
import com.lzy.okgo.model.Progress;
import defpackage.ue3;
import defpackage.y45;
import defpackage.zfb;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.SocketFactory;
import javax.net.ssl.SSLSocketFactory;
import okio.AsyncTimeout;

public final class zn1 implements nn {
    private final fe1 a;
    private final vp1 b;
    private final boolean c;
    private final co1 d;
    private final w50 e;
    private final c f;
    private final AtomicBoolean g;
    private Object h;
    private d60 i;
    private ao1 j;
    private boolean k;
    private b60 l;
    private boolean m;
    private boolean n;
    private boolean o;
    private volatile boolean p;
    private volatile b60 q;
    private volatile ao1 r;

    public static final class b extends WeakReference<zn1> {
        private final Object a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(zn1 zn1Var, Object obj) {
            super(zn1Var);
            y45.j(zn1Var, "referent");
            this.a = obj;
        }

        public final Object a() {
            return this.a;
        }
    }

    public static final class c extends AsyncTimeout {
        public c() {
        }

        @Override
        public final void timedOut() {
            zn1.this.a();
        }
    }

    public zn1(fe1 fe1Var, vp1 vp1Var, boolean z) {
        y45.j(fe1Var, "client");
        y45.j(vp1Var, "originalRequest");
        this.a = fe1Var;
        this.b = vp1Var;
        this.c = z;
        this.d = fe1Var.f().a();
        this.e = fe1Var.k().a(this);
        c cVar = new c();
        cVar.timeout(0, TimeUnit.MILLISECONDS);
        this.f = cVar;
        this.g = new AtomicBoolean();
        this.o = true;
    }

    public final String o() throws EOFException {
        return (this.p ? "canceled " : "") + (this.c ? "web socket" : NotificationCompat.CATEGORY_CALL) + " to " + this.b.g().j();
    }

    public final fe1 c() {
        return this.a;
    }

    public final Object clone() {
        return new zn1(this.a, this.b, this.c);
    }

    public final ao1 d() {
        return this.j;
    }

    public final w50 e() {
        return this.e;
    }

    public final boolean f() {
        return this.c;
    }

    public final b60 g() {
        return this.l;
    }

    public final vp1 h() {
        return this.b;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x009b  */
    public final vq1 i() throws Throwable {
        ArrayList arrayList = new ArrayList();
        defpackage.d81.C(arrayList, this.a.p());
        arrayList.add(new mr1(this.a));
        arrayList.add(new dm(this.a.h()));
        this.a.getClass();
        arrayList.add(new dn());
        arrayList.add(nr.a);
        if (!this.c) {
            defpackage.d81.C(arrayList, this.a.q());
        }
        arrayList.add(new on(this.c));
        boolean z = false;
        try {
            vq1 vq1VarA = new do1(this, arrayList, 0, null, this.b, this.a.e(), this.a.u(), this.a.z()).a(this.b);
            if (this.p) {
                g92.a((Closeable) vq1VarA);
                throw new IOException("Canceled");
            }
            b((IOException) null);
            return vq1VarA;
        } catch (IOException e) {
            try {
                IOException iOExceptionB = b(e);
                y45.h(iOExceptionB, "null cannot be cast to non-null type kotlin.Throwable");
                throw iOExceptionB;
            } catch (Throwable th) {
                th = th;
                z = true;
                if (!z) {
                    b((IOException) null);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            if (!z) {
                b((IOException) null);
            }
            throw th;
        }
    }

    public final boolean j() {
        return this.p;
    }

    public final String k() {
        return this.b.g().j();
    }

    public final Socket l() {
        ao1 ao1Var = this.j;
        y45.g(ao1Var);
        if (g92.f && !Thread.holdsLock(ao1Var)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + ao1Var);
        }
        ArrayList arrayListB = ao1Var.b();
        Iterator it = arrayListB.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            if (y45.e(((Reference) it.next()).get(), this)) {
                break;
            }
            i++;
        }
        if (i == -1) {
            throw new IllegalStateException("Check failed.");
        }
        arrayListB.remove(i);
        this.j = null;
        if (arrayListB.isEmpty()) {
            ao1Var.a(System.nanoTime());
            if (this.d.a(ao1Var)) {
                return ao1Var.m();
            }
        }
        return null;
    }

    public final boolean m() {
        d60 d60Var = this.i;
        y45.g(d60Var);
        return d60Var.b();
    }

    public final void n() {
        if (this.k) {
            throw new IllegalStateException("Check failed.");
        }
        this.k = true;
        this.f.exit();
    }

    public final void a(ao1 ao1Var) {
        y45.j(ao1Var, "connection");
        if (!g92.f || Thread.holdsLock(ao1Var)) {
            if (this.j != null) {
                throw new IllegalStateException("Check failed.");
            }
            this.j = ao1Var;
            ao1Var.b().add(new b(this, this.h));
            return;
        }
        throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + ao1Var);
    }

    public final vq1 b() {
        if (!this.g.compareAndSet(false, true)) {
            throw new IllegalStateException("Already Executed");
        }
        this.f.enter();
        this.h = rh1.a.b();
        this.e.getClass();
        y45.j(this, NotificationCompat.CATEGORY_CALL);
        try {
            this.a.i().a(this);
            return i();
        } finally {
            this.a.i().b(this);
        }
    }

    public final void a() {
        if (this.p) {
            return;
        }
        this.p = true;
        b60 b60Var = this.q;
        if (b60Var != null) {
            b60Var.a();
        }
        ao1 ao1Var = this.r;
        if (ao1Var != null) {
            ao1Var.a();
        }
        this.e.getClass();
        y45.j(this, NotificationCompat.CATEGORY_CALL);
    }

    public final class a implements Runnable {
        private final vn b;
        private volatile AtomicInteger c;
        final zn1 d;

        public a(zn1 zn1Var, vn vnVar) {
            y45.j(vnVar, "responseCallback");
            this.d = zn1Var;
            this.b = vnVar;
            this.c = new AtomicInteger(0);
        }

        public final void a(ExecutorService executorService) {
            y45.j(executorService, "executorService");
            s10 s10VarI = this.d.c().i();
            if (g92.f && Thread.holdsLock(s10VarI)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + s10VarI);
            }
            try {
                try {
                    executorService.execute(this);
                } catch (RejectedExecutionException e) {
                    InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                    interruptedIOException.initCause(e);
                    this.d.b(interruptedIOException);
                    this.b.a(interruptedIOException);
                    this.d.c().i().b(this);
                }
            } catch (Throwable th) {
                this.d.c().i().b(this);
                throw th;
            }
        }

        public final AtomicInteger b() {
            return this.c;
        }

        public final String c() {
            return this.d.h().g().g();
        }

        @Override
        public final void run() {
            s10 s10VarI;
            String str = "OkHttp " + this.d.k();
            zn1 zn1Var = this.d;
            Thread threadCurrentThread = Thread.currentThread();
            String name = threadCurrentThread.getName();
            threadCurrentThread.setName(str);
            try {
                zn1Var.f.enter();
                boolean z = false;
                try {
                    try {
                        try {
                            this.b.a(zn1Var.i());
                            s10VarI = zn1Var.c().i();
                        } catch (IOException e) {
                            e = e;
                            z = true;
                            if (z) {
                                int i = rh1.c;
                                rh1 rh1VarA = rh1.a.a();
                                String str2 = "Callback failure for " + zn1Var.o();
                                rh1VarA.getClass();
                                rh1.a(4, str2, e);
                            } else {
                                this.b.a(e);
                            }
                            s10VarI = zn1Var.c().i();
                        } catch (Throwable th) {
                            th = th;
                            z = true;
                            zn1Var.a();
                            if (!z) {
                                IOException iOException = new IOException("canceled due to " + th);
                                ue3.a(iOException, th);
                                this.b.a(iOException);
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        zn1Var.c().i().b(this);
                        throw th2;
                    }
                } catch (IOException e2) {
                    e = e2;
                } catch (Throwable th3) {
                    th = th3;
                }
                s10VarI.b(this);
                threadCurrentThread.setName(name);
            } catch (Throwable th4) {
                threadCurrentThread.setName(name);
                throw th4;
            }
        }

        public final zn1 a() {
            return this.d;
        }

        public final void a(a aVar) {
            y45.j(aVar, "other");
            this.c = aVar.c;
        }
    }

    public final IOException b(IOException iOException) {
        boolean z;
        synchronized (this) {
            try {
                z = false;
                if (this.o) {
                    this.o = false;
                    if (!this.m && !this.n) {
                        z = true;
                    }
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z ? a(iOException) : iOException;
    }

    public final void a(vn vnVar) {
        y45.j(vnVar, "responseCallback");
        if (this.g.compareAndSet(false, true)) {
            this.h = rh1.a.b();
            this.e.getClass();
            y45.j(this, NotificationCompat.CATEGORY_CALL);
            this.a.i().a(new a(this, vnVar));
            return;
        }
        throw new IllegalStateException("Already Executed");
    }

    public final void b(ao1 ao1Var) {
        this.r = ao1Var;
    }

    public final void a(vp1 vp1Var, boolean z) {
        SSLSocketFactory sSLSocketFactoryX;
        ee1 ee1VarO;
        fo foVarD;
        y45.j(vp1Var, Progress.REQUEST);
        if (this.l == null) {
            synchronized (this) {
                if (!this.n) {
                    if (!this.m) {
                        zfb zfbVar = zfb.a;
                    } else {
                        throw new IllegalStateException("Check failed.");
                    }
                } else {
                    throw new IllegalStateException("cannot make a new request because the previous response is still open: please call response.close()");
                }
            }
            if (z) {
                co1 co1Var = this.d;
                gi0 gi0VarG = vp1Var.g();
                if (gi0VarG.h()) {
                    sSLSocketFactoryX = this.a.x();
                    ee1VarO = this.a.o();
                    foVarD = this.a.d();
                } else {
                    sSLSocketFactoryX = null;
                    ee1VarO = null;
                    foVarD = null;
                }
                String strG = gi0VarG.g();
                int i = gi0VarG.i();
                q30 q30VarJ = this.a.j();
                SocketFactory socketFactoryW = this.a.w();
                ci ciVarS = this.a.s();
                this.a.getClass();
                this.i = new d60(co1Var, new ab(strG, i, q30VarJ, socketFactoryW, sSLSocketFactoryX, ee1VarO, foVarD, ciVarS, this.a.r(), this.a.g(), this.a.t()), this, this.e);
                return;
            }
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    public final void a(boolean z) {
        b60 b60Var;
        synchronized (this) {
            if (this.o) {
                zfb zfbVar = zfb.a;
            } else {
                throw new IllegalStateException("released");
            }
        }
        if (z && (b60Var = this.q) != null) {
            b60Var.b();
        }
        this.l = null;
    }

    public final b60 a(do1 do1Var) throws IOException {
        y45.j(do1Var, "chain");
        synchronized (this) {
            if (this.o) {
                if (!this.n) {
                    if (!this.m) {
                        zfb zfbVar = zfb.a;
                    } else {
                        throw new IllegalStateException("Check failed.");
                    }
                } else {
                    throw new IllegalStateException("Check failed.");
                }
            } else {
                throw new IllegalStateException("released");
            }
        }
        d60 d60Var = this.i;
        y45.g(d60Var);
        b60 b60Var = new b60(this, this.e, d60Var, d60Var.a(this.a, do1Var));
        this.l = b60Var;
        this.q = b60Var;
        synchronized (this) {
            this.m = true;
            this.n = true;
        }
        if (this.p) {
            throw new IOException("Canceled");
        }
        return b60Var;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x001f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x0021 A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:8:0x0012, B:17:0x0021, B:19:0x0025, B:20:0x0027, B:22:0x002c, B:27:0x0035, B:29:0x0039, B:34:0x0042, B:14:0x001b), top: B:46:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:19:0x0025 A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:8:0x0012, B:17:0x0021, B:19:0x0025, B:20:0x0027, B:22:0x002c, B:27:0x0035, B:29:0x0039, B:34:0x0042, B:14:0x001b), top: B:46:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x0032  */
    public final <E extends IOException> E a(b60 b60Var, boolean z, boolean z2, E e) {
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        y45.j(b60Var, "exchange");
        if (!y45.e(b60Var, this.q)) {
            return e;
        }
        synchronized (this) {
            z3 = false;
            if (z) {
                try {
                    if (!this.m) {
                        if (z2 || !this.n) {
                            z4 = false;
                        } else {
                            if (z) {
                                this.m = false;
                            }
                            if (z2) {
                                this.n = false;
                            }
                            z5 = this.m;
                            if (!z5 || this.n) {
                                z6 = false;
                            } else {
                                z6 = true;
                            }
                            if (!z5 && !this.n && !this.o) {
                                z3 = true;
                            }
                            z4 = z3;
                            z3 = z6;
                        }
                    } else {
                        if (z) {
                            this.m = false;
                        }
                        if (z2) {
                            this.n = false;
                        }
                        z5 = this.m;
                        if (z5) {
                            z6 = false;
                        } else {
                            z6 = false;
                        }
                        if (!z5) {
                            z3 = true;
                        }
                        z4 = z3;
                        z3 = z6;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            } else {
                if (z2) {
                }
                z4 = false;
            }
            zfb zfbVar = zfb.a;
        }
        if (z3) {
            this.q = null;
            ao1 ao1Var = this.j;
            if (ao1Var != null) {
                ao1Var.g();
            }
        }
        return z4 ? (E) a(e) : e;
    }

    private final <E extends IOException> E a(E e) {
        E interruptedIOException;
        Socket socketL;
        boolean z = g92.f;
        if (z && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        ao1 ao1Var = this.j;
        if (ao1Var != null) {
            if (z && Thread.holdsLock(ao1Var)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + ao1Var);
            }
            synchronized (ao1Var) {
                socketL = l();
            }
            if (this.j == null) {
                if (socketL != null) {
                    g92.a(socketL);
                }
                this.e.getClass();
                w50.a(this, ao1Var);
            } else if (socketL != null) {
                throw new IllegalStateException("Check failed.");
            }
        }
        if (!this.k && this.f.exit()) {
            interruptedIOException = new InterruptedIOException("timeout");
            if (e != null) {
                interruptedIOException.initCause(e);
            }
        } else {
            interruptedIOException = e;
        }
        if (e != null) {
            w50 w50Var = this.e;
            y45.g(interruptedIOException);
            w50Var.getClass();
            w50.a(this, interruptedIOException);
        } else {
            this.e.getClass();
            w50.a((nn) this);
        }
        return interruptedIOException;
    }
}
