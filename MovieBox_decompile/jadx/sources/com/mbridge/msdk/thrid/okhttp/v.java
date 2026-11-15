package com.mbridge.msdk.thrid.okhttp;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;

final class v implements d {

    final t f37535a;

    final com.mbridge.msdk.thrid.okhttp.internal.http.j f37536b;

    final com.mbridge.msdk.thrid.okio.a f37537c;

    private n f37538d;

    final w f37539e;

    final boolean f37540f;

    private boolean f37541g;

    class a extends com.mbridge.msdk.thrid.okio.a {
        a() {
        }

        @Override
        protected void j() {
            v.this.cancel();
        }
    }

    final class b extends com.mbridge.msdk.thrid.okhttp.internal.b {

        static final boolean f37543c = true;

        final v f37544b;

        void a(ExecutorService executorService) {
            if (!f37543c && Thread.holdsLock(this.f37544b.f37535a.j())) {
                throw new AssertionError();
            }
            try {
                try {
                    executorService.execute(this);
                } catch (RejectedExecutionException e10) {
                    InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                    interruptedIOException.initCause(e10);
                    this.f37544b.f37538d.callFailed(this.f37544b, interruptedIOException);
                    throw null;
                }
            } catch (Throwable th2) {
                this.f37544b.f37535a.j().a(this);
                throw th2;
            }
        }

        @Override
        protected void b() {
            boolean z10;
            Throwable th2;
            this.f37544b.f37537c.h();
            try {
                try {
                    this.f37544b.c();
                    try {
                        throw null;
                    } catch (Throwable th3) {
                        th2 = th3;
                        z10 = true;
                        this.f37544b.cancel();
                        if (z10) {
                            throw th2;
                        }
                        new IOException("canceled due to " + th2);
                        throw null;
                    }
                } catch (Throwable th4) {
                    this.f37544b.f37535a.j().a(this);
                    throw th4;
                }
            } catch (IOException e10) {
                this.f37544b.f37538d.callFailed(this.f37544b, this.f37544b.a(e10));
                throw null;
            } catch (Throwable th5) {
                z10 = false;
                th2 = th5;
            }
        }

        v c() {
            return this.f37544b;
        }

        String d() {
            return this.f37544b.f37539e.g().g();
        }
    }

    private v(t tVar, w wVar, boolean z10) {
        this.f37535a = tVar;
        this.f37539e = wVar;
        this.f37540f = z10;
        this.f37536b = new com.mbridge.msdk.thrid.okhttp.internal.http.j(tVar, z10);
        a aVar = new a();
        this.f37537c = aVar;
        aVar.a(tVar.b(), TimeUnit.MILLISECONDS);
    }

    public v clone() {
        return a(this.f37535a, this.f37539e, this.f37540f);
    }

    y c() throws IOException {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f37535a.p());
        arrayList.add(this.f37536b);
        arrayList.add(new com.mbridge.msdk.thrid.okhttp.internal.http.a(this.f37535a.i()));
        this.f37535a.q();
        arrayList.add(new com.mbridge.msdk.thrid.okhttp.internal.cache.a(null));
        arrayList.add(new com.mbridge.msdk.thrid.okhttp.internal.connection.a(this.f37535a));
        if (!this.f37540f) {
            arrayList.addAll(this.f37535a.r());
        }
        arrayList.add(new com.mbridge.msdk.thrid.okhttp.internal.http.b(this.f37540f));
        y yVarA = new com.mbridge.msdk.thrid.okhttp.internal.http.g(arrayList, null, null, null, 0, this.f37539e, this, this.f37538d, this.f37535a.e(), this.f37535a.y(), this.f37535a.C()).a(this.f37539e);
        if (!this.f37536b.b()) {
            return yVarA;
        }
        com.mbridge.msdk.thrid.okhttp.internal.c.a(yVarA);
        throw new IOException("Canceled");
    }

    @Override
    public void cancel() {
        this.f37536b.a();
    }

    @Override
    public y d() throws IOException {
        synchronized (this) {
            if (this.f37541g) {
                throw new IllegalStateException("Already Executed");
            }
            this.f37541g = true;
        }
        a();
        this.f37537c.h();
        this.f37538d.callStart(this);
        try {
            try {
                this.f37535a.j().a(this);
                y yVarC = c();
                if (yVarC == null) {
                    throw new IOException("Canceled");
                }
                this.f37535a.j().b(this);
                return yVarC;
            } catch (IOException e10) {
                IOException iOExceptionA = a(e10);
                this.f37538d.callFailed(this, iOExceptionA);
                throw iOExceptionA;
            }
        } catch (Throwable th2) {
            this.f37535a.j().b(this);
            throw th2;
        }
        this.f37535a.j().b(this);
        throw th2;
    }

    @Override
    public boolean h() {
        return this.f37536b.b();
    }

    static v a(t tVar, w wVar, boolean z10) {
        v vVar = new v(tVar, wVar, z10);
        vVar.f37538d = tVar.l().a(vVar);
        return vVar;
    }

    IOException a(IOException iOException) {
        if (!this.f37537c.i()) {
            return iOException;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    private void a() {
        this.f37536b.a(com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().a("response.body().close()"));
    }
}
