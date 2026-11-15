package com.mbridge.msdk.thrid.okhttp.internal.connection;

import com.mbridge.msdk.thrid.okhttp.a0;
import com.mbridge.msdk.thrid.okhttp.h;
import com.mbridge.msdk.thrid.okhttp.n;
import com.mbridge.msdk.thrid.okhttp.r;
import com.mbridge.msdk.thrid.okhttp.t;
import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.List;

public final class g {

    static final boolean f37136o = true;

    public final com.mbridge.msdk.thrid.okhttp.a f37137a;

    private f.a f37138b;

    private a0 f37139c;

    private final h f37140d;

    public final com.mbridge.msdk.thrid.okhttp.d f37141e;

    public final n f37142f;

    private final Object f37143g;

    private final f f37144h;

    private int f37145i;

    private c f37146j;

    private boolean f37147k;

    private boolean f37148l;

    private boolean f37149m;

    private com.mbridge.msdk.thrid.okhttp.internal.http.c f37150n;

    public static final class a extends WeakReference<g> {

        public final Object f37151a;

        a(g gVar, Object obj) {
            super(gVar);
            this.f37151a = obj;
        }
    }

    public g(h hVar, com.mbridge.msdk.thrid.okhttp.a aVar, com.mbridge.msdk.thrid.okhttp.d dVar, n nVar, Object obj) {
        this.f37140d = hVar;
        this.f37137a = aVar;
        this.f37141e = dVar;
        this.f37142f = nVar;
        this.f37144h = new f(aVar, i(), dVar, nVar);
        this.f37143g = obj;
    }

    private Socket g() {
        if (!f37136o && !Thread.holdsLock(this.f37140d)) {
            throw new AssertionError();
        }
        c cVar = this.f37146j;
        if (cVar == null || !cVar.f37118k) {
            return null;
        }
        return a(false, false, true);
    }

    private d i() {
        return com.mbridge.msdk.thrid.okhttp.internal.a.f37067a.a(this.f37140d);
    }

    public com.mbridge.msdk.thrid.okhttp.internal.http.c a(t tVar, r.a aVar, boolean z10) {
        try {
            com.mbridge.msdk.thrid.okhttp.internal.http.c cVarA = a(aVar.a(), aVar.b(), aVar.c(), tVar.t(), tVar.z(), z10).a(tVar, aVar, this);
            synchronized (this.f37140d) {
                this.f37150n = cVarA;
            }
            return cVarA;
        } catch (IOException e10) {
            throw new e(e10);
        }
    }

    public com.mbridge.msdk.thrid.okhttp.internal.http.c b() {
        com.mbridge.msdk.thrid.okhttp.internal.http.c cVar;
        synchronized (this.f37140d) {
            cVar = this.f37150n;
        }
        return cVar;
    }

    public synchronized c c() {
        return this.f37146j;
    }

    public boolean d() {
        f.a aVar;
        return this.f37139c != null || ((aVar = this.f37138b) != null && aVar.b()) || this.f37144h.a();
    }

    public void e() {
        c cVar;
        Socket socketA;
        synchronized (this.f37140d) {
            cVar = this.f37146j;
            socketA = a(true, false, false);
            if (this.f37146j != null) {
                cVar = null;
            }
        }
        com.mbridge.msdk.thrid.okhttp.internal.c.a(socketA);
        if (cVar != null) {
            this.f37142f.connectionReleased(this.f37141e, cVar);
        }
    }

    public void f() {
        c cVar;
        Socket socketA;
        synchronized (this.f37140d) {
            cVar = this.f37146j;
            socketA = a(false, true, false);
            if (this.f37146j != null) {
                cVar = null;
            }
        }
        com.mbridge.msdk.thrid.okhttp.internal.c.a(socketA);
        if (cVar != null) {
            com.mbridge.msdk.thrid.okhttp.internal.a.f37067a.a(this.f37141e, (IOException) null);
            this.f37142f.connectionReleased(this.f37141e, cVar);
            this.f37142f.callEnd(this.f37141e);
        }
    }

    public a0 h() {
        return this.f37139c;
    }

    public String toString() {
        c cVarC = c();
        return cVarC != null ? cVarC.toString() : this.f37137a.toString();
    }

    public Socket b(c cVar) {
        if (!f37136o && !Thread.holdsLock(this.f37140d)) {
            throw new AssertionError();
        }
        if (this.f37150n == null && this.f37146j.f37121n.size() == 1) {
            Reference<g> reference = this.f37146j.f37121n.get(0);
            Socket socketA = a(true, false, false);
            this.f37146j = cVar;
            cVar.f37121n.add(reference);
            return socketA;
        }
        throw new IllegalStateException();
    }

    private c a(int i10, int i11, int i12, int i13, boolean z10, boolean z11) throws Throwable {
        while (true) {
            c cVarA = a(i10, i11, i12, i13, z10);
            synchronized (this.f37140d) {
                try {
                    if (cVarA.f37119l == 0 && !cVarA.f()) {
                        return cVarA;
                    }
                    if (cVarA.a(z11)) {
                        return cVarA;
                    }
                    e();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private c a(int i10, int i11, int i12, int i13, boolean z10) throws Throwable {
        c cVar;
        Socket socketG;
        c cVar2;
        Socket socketA;
        a0 a0VarC;
        boolean z11;
        boolean z12;
        f.a aVar;
        synchronized (this.f37140d) {
            try {
                if (!this.f37148l) {
                    if (this.f37150n == null) {
                        if (!this.f37149m) {
                            cVar = this.f37146j;
                            socketG = g();
                            cVar2 = this.f37146j;
                            socketA = null;
                            if (cVar2 != null) {
                                cVar = null;
                            } else {
                                cVar2 = null;
                            }
                            if (!this.f37147k) {
                                cVar = null;
                            }
                            if (cVar2 == null) {
                                com.mbridge.msdk.thrid.okhttp.internal.a.f37067a.a(this.f37140d, this.f37137a, this, null);
                                c cVar3 = this.f37146j;
                                if (cVar3 != null) {
                                    z11 = true;
                                    cVar2 = cVar3;
                                    a0VarC = null;
                                } else {
                                    a0VarC = this.f37139c;
                                }
                            } else {
                                a0VarC = null;
                            }
                            z11 = false;
                        } else {
                            throw new IOException("Canceled");
                        }
                    } else {
                        throw new IllegalStateException("codec != null");
                    }
                } else {
                    throw new IllegalStateException("released");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        com.mbridge.msdk.thrid.okhttp.internal.c.a(socketG);
        if (cVar != null) {
            this.f37142f.connectionReleased(this.f37141e, cVar);
        }
        if (z11) {
            this.f37142f.connectionAcquired(this.f37141e, cVar2);
        }
        if (cVar2 != null) {
            this.f37139c = this.f37146j.c();
            return cVar2;
        }
        if (a0VarC != null || ((aVar = this.f37138b) != null && aVar.b())) {
            z12 = false;
        } else {
            this.f37138b = this.f37144h.c();
            z12 = true;
        }
        synchronized (this.f37140d) {
            try {
                if (this.f37149m) {
                    throw new IOException("Canceled");
                }
                if (z12) {
                    List<a0> listA = this.f37138b.a();
                    int size = listA.size();
                    for (int i14 = 0; i14 < size; i14++) {
                        a0 a0Var = listA.get(i14);
                        com.mbridge.msdk.thrid.okhttp.internal.a.f37067a.a(this.f37140d, this.f37137a, this, a0Var);
                        c cVar4 = this.f37146j;
                        if (cVar4 != null) {
                            this.f37139c = a0Var;
                            z11 = true;
                            cVar2 = cVar4;
                            break;
                        }
                    }
                }
                if (!z11) {
                    if (a0VarC == null) {
                        a0VarC = this.f37138b.c();
                    }
                    this.f37139c = a0VarC;
                    this.f37145i = 0;
                    cVar2 = new c(this.f37140d, a0VarC);
                    a(cVar2, false);
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        if (z11) {
            this.f37142f.connectionAcquired(this.f37141e, cVar2);
            return cVar2;
        }
        cVar2.a(i10, i11, i12, i13, z10, this.f37141e, this.f37142f);
        i().a(cVar2.c());
        synchronized (this.f37140d) {
            try {
                this.f37147k = true;
                com.mbridge.msdk.thrid.okhttp.internal.a.f37067a.b(this.f37140d, cVar2);
                if (cVar2.f()) {
                    socketA = com.mbridge.msdk.thrid.okhttp.internal.a.f37067a.a(this.f37140d, this.f37137a, this);
                    cVar2 = this.f37146j;
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
        com.mbridge.msdk.thrid.okhttp.internal.c.a(socketA);
        this.f37142f.connectionAcquired(this.f37141e, cVar2);
        return cVar2;
    }

    public void a(boolean z10, com.mbridge.msdk.thrid.okhttp.internal.http.c cVar, long j10, IOException iOException) {
        c cVar2;
        Socket socketA;
        boolean z11;
        this.f37142f.responseBodyEnd(this.f37141e, j10);
        synchronized (this.f37140d) {
            if (cVar != null) {
                try {
                    if (cVar == this.f37150n) {
                        if (!z10) {
                            this.f37146j.f37119l++;
                        }
                        cVar2 = this.f37146j;
                        socketA = a(z10, false, true);
                        if (this.f37146j != null) {
                            cVar2 = null;
                        }
                        z11 = this.f37148l;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            throw new IllegalStateException("expected " + this.f37150n + " but was " + cVar);
        }
        com.mbridge.msdk.thrid.okhttp.internal.c.a(socketA);
        if (cVar2 != null) {
            this.f37142f.connectionReleased(this.f37141e, cVar2);
        }
        if (iOException != null) {
            this.f37142f.callFailed(this.f37141e, com.mbridge.msdk.thrid.okhttp.internal.a.f37067a.a(this.f37141e, iOException));
        } else if (z11) {
            com.mbridge.msdk.thrid.okhttp.internal.a.f37067a.a(this.f37141e, (IOException) null);
            this.f37142f.callEnd(this.f37141e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0059  */
    private Socket a(boolean z10, boolean z11, boolean z12) {
        Socket socketG;
        if (!f37136o && !Thread.holdsLock(this.f37140d)) {
            throw new AssertionError();
        }
        if (z12) {
            this.f37150n = null;
        }
        if (z11) {
            this.f37148l = true;
        }
        c cVar = this.f37146j;
        if (cVar == null) {
            return null;
        }
        if (z10) {
            cVar.f37118k = true;
        }
        if (this.f37150n != null) {
            return null;
        }
        if (!this.f37148l && !cVar.f37118k) {
            return null;
        }
        a(cVar);
        if (this.f37146j.f37121n.isEmpty()) {
            this.f37146j.f37122o = System.nanoTime();
            if (com.mbridge.msdk.thrid.okhttp.internal.a.f37067a.a(this.f37140d, this.f37146j)) {
                socketG = this.f37146j.g();
            } else {
                socketG = null;
            }
        } else {
            socketG = null;
        }
        this.f37146j = null;
        return socketG;
    }

    public void a() {
        com.mbridge.msdk.thrid.okhttp.internal.http.c cVar;
        c cVar2;
        synchronized (this.f37140d) {
            this.f37149m = true;
            cVar = this.f37150n;
            cVar2 = this.f37146j;
        }
        if (cVar != null) {
            cVar.cancel();
        } else if (cVar2 != null) {
            cVar2.d();
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0048  */
    public void a(IOException iOException) {
        c cVar;
        boolean z10;
        Socket socketA;
        synchronized (this.f37140d) {
            try {
                cVar = null;
                if (iOException instanceof com.mbridge.msdk.thrid.okhttp.internal.http2.n) {
                    com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar = ((com.mbridge.msdk.thrid.okhttp.internal.http2.n) iOException).f37387a;
                    if (bVar == com.mbridge.msdk.thrid.okhttp.internal.http2.b.REFUSED_STREAM) {
                        int i10 = this.f37145i + 1;
                        this.f37145i = i10;
                        if (i10 > 1) {
                            this.f37139c = null;
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                    } else if (bVar != com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL) {
                        this.f37139c = null;
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                } else {
                    c cVar2 = this.f37146j;
                    if (cVar2 == null || (cVar2.f() && !(iOException instanceof com.mbridge.msdk.thrid.okhttp.internal.http2.a))) {
                        z10 = false;
                    } else {
                        if (this.f37146j.f37119l == 0) {
                            a0 a0Var = this.f37139c;
                            if (a0Var != null && iOException != null) {
                                this.f37144h.a(a0Var, iOException);
                            }
                            this.f37139c = null;
                        }
                        z10 = true;
                    }
                }
                c cVar3 = this.f37146j;
                socketA = a(z10, false, true);
                if (this.f37146j == null && this.f37147k) {
                    cVar = cVar3;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        com.mbridge.msdk.thrid.okhttp.internal.c.a(socketA);
        if (cVar != null) {
            this.f37142f.connectionReleased(this.f37141e, cVar);
        }
    }

    public void a(c cVar, boolean z10) {
        if (!f37136o && !Thread.holdsLock(this.f37140d)) {
            throw new AssertionError();
        }
        if (this.f37146j == null) {
            this.f37146j = cVar;
            this.f37147k = z10;
            cVar.f37121n.add(new a(this, this.f37143g));
            return;
        }
        throw new IllegalStateException();
    }

    private void a(c cVar) {
        int size = cVar.f37121n.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (cVar.f37121n.get(i10).get() == this) {
                cVar.f37121n.remove(i10);
                return;
            }
        }
        throw new IllegalStateException();
    }
}
