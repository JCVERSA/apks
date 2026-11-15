package com.danikula.videocache;

import defpackage.ae8;
import defpackage.gp0;
import defpackage.qq5;
import defpackage.sq5;
import defpackage.vj8;
import defpackage.xt9;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class ProxyCache {
    public static final qq5 i = sq5.j("ProxyCache");
    public final xt9 a;
    public final gp0 b;
    public volatile Thread f;
    public volatile boolean g;
    public final Object c = new Object();
    public final Object d = new Object();
    public volatile int h = -1;
    public final AtomicInteger e = new AtomicInteger();

    public class SourceReaderRunnable implements Runnable {
        private SourceReaderRunnable() {
        }

        @Override
        public void run() {
            ProxyCache.this.k();
        }
    }

    public ProxyCache(xt9 xt9Var, gp0 gp0Var) {
        this.a = (xt9) ae8.d(xt9Var);
        this.b = (gp0) ae8.d(gp0Var);
    }

    public final void b() throws ProxyCacheException {
        int i2 = this.e.get();
        if (i2 < 1) {
            return;
        }
        this.e.set(0);
        throw new ProxyCacheException("Error reading source " + i2 + " times");
    }

    public final void c() {
        try {
            this.a.close();
        } catch (ProxyCacheException e) {
            h(new ProxyCacheException("Error closing source " + this.a, e));
        }
    }

    public final boolean d() {
        return Thread.currentThread().isInterrupted() || this.g;
    }

    public final void e(long j, long j2) {
        f(j, j2);
        synchronized (this.c) {
            this.c.notifyAll();
        }
    }

    public void f(long j, long j2) {
        int i2 = j2 == 0 ? 100 : (int) ((j / j2) * 100.0f);
        boolean z = i2 != this.h;
        if (j2 >= 0 && z) {
            g(i2);
        }
        this.h = i2;
    }

    public abstract void g(int i2);

    public final void h(Throwable th) {
        if (th instanceof InterruptedProxyCacheException) {
            i.debug("ProxyCache is interrupted");
        } else {
            i.error("ProxyCache error", th);
        }
    }

    public final void i() {
        this.h = 100;
        g(this.h);
    }

    public int j(byte[] bArr, long j, int i2) throws ProxyCacheException {
        vj8.a(bArr, j, i2);
        while (!this.b.isCompleted() && this.b.available() < ((long) i2) + j && !this.g) {
            l();
            o();
            b();
        }
        int iB = this.b.b(bArr, j, i2);
        if (this.b.isCompleted() && this.h != 100) {
            this.h = 100;
            g(100);
        }
        return iB;
    }

    public final void k() {
        long length = -1;
        long jAvailable = 0;
        try {
            jAvailable = this.b.available();
            this.a.a(jAvailable);
            length = this.a.length();
            byte[] bArr = new byte[8192];
            while (true) {
                int i2 = this.a.read(bArr);
                if (i2 == -1) {
                    n();
                    i();
                    break;
                }
                synchronized (this.d) {
                    if (d()) {
                        c();
                        e(jAvailable, length);
                        return;
                    }
                    this.b.a(bArr, i2);
                }
                jAvailable += (long) i2;
                e(jAvailable, length);
            }
        } catch (Throwable th) {
            try {
                this.e.incrementAndGet();
                h(th);
            } finally {
                c();
                e(jAvailable, length);
            }
        }
    }

    public final synchronized void l() {
        try {
            boolean z = (this.f == null || this.f.getState() == Thread.State.TERMINATED) ? false : true;
            if (!this.g && !this.b.isCompleted() && !z) {
                this.f = new Thread(new SourceReaderRunnable(), "Source reader for " + this.a);
                this.f.start();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void m() {
        synchronized (this.d) {
            try {
                i.debug("Shutdown proxy for " + this.a);
                try {
                    this.g = true;
                    if (this.f != null) {
                        this.f.interrupt();
                    }
                    this.b.close();
                } catch (ProxyCacheException e) {
                    h(e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void n() {
        synchronized (this.d) {
            try {
                if (!d() && this.b.available() == this.a.length()) {
                    this.b.complete();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void o() {
        synchronized (this.c) {
            try {
                try {
                    this.c.wait(1000L);
                } catch (InterruptedException e) {
                    throw new ProxyCacheException("Waiting source data is interrupted!", e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
