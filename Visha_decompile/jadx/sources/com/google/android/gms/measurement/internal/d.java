package com.google.android.gms.measurement.internal;

import defpackage.boi;
import defpackage.g1i;
import defpackage.wd8;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class d extends boi {
    public static final AtomicLong l = new AtomicLong(Long.MIN_VALUE);
    public zzfu c;
    public zzfu d;
    public final PriorityBlockingQueue e;
    public final BlockingQueue f;
    public final Thread.UncaughtExceptionHandler g;
    public final Thread.UncaughtExceptionHandler h;
    public final Object i;
    public final Semaphore j;
    public volatile boolean k;

    public d(e eVar) {
        super(eVar);
        this.i = new Object();
        this.j = new Semaphore(2);
        this.e = new PriorityBlockingQueue();
        this.f = new LinkedBlockingQueue();
        this.g = new g1i(this, "Thread death: Uncaught exception on worker thread");
        this.h = new g1i(this, "Thread death: Uncaught exception on network thread");
    }

    public static boolean y(d dVar) {
        boolean z = dVar.k;
        return false;
    }

    public final void A(zzft zzftVar) {
        synchronized (this.i) {
            try {
                this.e.add(zzftVar);
                zzfu zzfuVar = this.c;
                if (zzfuVar == null) {
                    zzfu zzfuVar2 = new zzfu(this, "Measurement Worker", this.e);
                    this.c = zzfuVar2;
                    zzfuVar2.setUncaughtExceptionHandler(this.g);
                    this.c.start();
                } else {
                    zzfuVar.zza();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void f() {
        if (Thread.currentThread() != this.d) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    @Override
    public final void g() {
        if (Thread.currentThread() != this.c) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    @Override
    public final boolean i() {
        return false;
    }

    public final Object q(AtomicReference atomicReference, long j, String str, Runnable runnable) {
        synchronized (atomicReference) {
            this.a.a().w(runnable);
            try {
                atomicReference.wait(j);
            } catch (InterruptedException unused) {
                this.a.b().v().a("Interrupted waiting for " + str);
                return null;
            }
        }
        Object obj = atomicReference.get();
        if (obj == null) {
            this.a.b().v().a("Timed out waiting for ".concat(str));
        }
        return obj;
    }

    public final void v(Runnable runnable) {
        j();
        wd8.l(runnable);
        zzft zzftVar = new zzft(this, runnable, false, "Task exception on network thread");
        synchronized (this.i) {
            try {
                this.f.add(zzftVar);
                zzfu zzfuVar = this.d;
                if (zzfuVar == null) {
                    zzfu zzfuVar2 = new zzfu(this, "Measurement Network", this.f);
                    this.d = zzfuVar2;
                    zzfuVar2.setUncaughtExceptionHandler(this.h);
                    this.d.start();
                } else {
                    zzfuVar.zza();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void w(Runnable runnable) {
        j();
        wd8.l(runnable);
        A(new zzft(this, runnable, false, "Task exception on worker thread"));
    }

    public final void x(Runnable runnable) {
        j();
        wd8.l(runnable);
        A(new zzft(this, runnable, true, "Task exception on worker thread"));
    }

    public final boolean z() {
        return Thread.currentThread() == this.c;
    }
}
