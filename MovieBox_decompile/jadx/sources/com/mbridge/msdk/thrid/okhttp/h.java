package com.mbridge.msdk.thrid.okhttp;

import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class h {

    private static final Executor f37044g = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), com.mbridge.msdk.thrid.okhttp.internal.c.a("OkHttp ConnectionPool", true));

    static final boolean f37045h = true;

    private final int f37046a;

    private final long f37047b;

    private final Runnable f37048c;

    private final Deque<com.mbridge.msdk.thrid.okhttp.internal.connection.c> f37049d;

    final com.mbridge.msdk.thrid.okhttp.internal.connection.d f37050e;

    boolean f37051f;

    class a implements Runnable {
        a() {
        }

        @Override
        public void run() {
            while (true) {
                long jA = h.this.a(System.nanoTime());
                if (jA == -1) {
                    return;
                }
                if (jA > 0) {
                    long j10 = jA / 1000000;
                    long j11 = jA - (1000000 * j10);
                    synchronized (h.this) {
                        try {
                            h.this.wait(j10, (int) j11);
                        } catch (InterruptedException unused) {
                        }
                    }
                }
            }
        }
    }

    public h() {
        this(5, 5L, TimeUnit.MINUTES);
    }

    com.mbridge.msdk.thrid.okhttp.internal.connection.c a(com.mbridge.msdk.thrid.okhttp.a aVar, com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar, a0 a0Var) {
        if (!f37045h && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        for (com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar : this.f37049d) {
            if (cVar.a(aVar, a0Var)) {
                gVar.a(cVar, true);
                return cVar;
            }
        }
        return null;
    }

    void b(com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar) {
        if (!f37045h && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (!this.f37051f) {
            this.f37051f = true;
            f37044g.execute(this.f37048c);
        }
        this.f37049d.add(cVar);
    }

    public h(int i10, long j10, TimeUnit timeUnit) {
        this.f37048c = new a();
        this.f37049d = new ArrayDeque();
        this.f37050e = new com.mbridge.msdk.thrid.okhttp.internal.connection.d();
        this.f37046a = i10;
        this.f37047b = timeUnit.toNanos(j10);
        if (j10 > 0) {
            return;
        }
        throw new IllegalArgumentException("keepAliveDuration <= 0: " + j10);
    }

    Socket a(com.mbridge.msdk.thrid.okhttp.a aVar, com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar) {
        if (!f37045h && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        for (com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar : this.f37049d) {
            if (cVar.a(aVar, null) && cVar.f() && cVar != gVar.c()) {
                return gVar.b(cVar);
            }
        }
        return null;
    }

    boolean a(com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar) {
        if (!f37045h && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (!cVar.f37118k && this.f37046a != 0) {
            notifyAll();
            return false;
        }
        this.f37049d.remove(cVar);
        return true;
    }

    long a(long j10) {
        synchronized (this) {
            try {
                com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar = null;
                long j11 = Long.MIN_VALUE;
                int i10 = 0;
                int i11 = 0;
                for (com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar2 : this.f37049d) {
                    if (a(cVar2, j10) > 0) {
                        i11++;
                    } else {
                        i10++;
                        long j12 = j10 - cVar2.f37122o;
                        if (j12 > j11) {
                            cVar = cVar2;
                            j11 = j12;
                        }
                    }
                }
                long j13 = this.f37047b;
                if (j11 < j13 && i10 <= this.f37046a) {
                    if (i10 > 0) {
                        return j13 - j11;
                    }
                    if (i11 > 0) {
                        return j13;
                    }
                    this.f37051f = false;
                    return -1L;
                }
                this.f37049d.remove(cVar);
                com.mbridge.msdk.thrid.okhttp.internal.c.a(cVar.g());
                return 0L;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private int a(com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar, long j10) {
        List<Reference<com.mbridge.msdk.thrid.okhttp.internal.connection.g>> list = cVar.f37121n;
        int i10 = 0;
        while (i10 < list.size()) {
            Reference<com.mbridge.msdk.thrid.okhttp.internal.connection.g> reference = list.get(i10);
            if (reference.get() != null) {
                i10++;
            } else {
                com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().a("A connection to " + cVar.c().a().k() + " was leaked. Did you forget to close a response body?", ((com.mbridge.msdk.thrid.okhttp.internal.connection.g.a) reference).f37151a);
                list.remove(i10);
                cVar.f37118k = true;
                if (list.isEmpty()) {
                    cVar.f37122o = j10 - this.f37047b;
                    return 0;
                }
            }
        }
        return list.size();
    }
}
