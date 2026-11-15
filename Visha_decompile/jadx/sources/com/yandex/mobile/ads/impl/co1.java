package com.yandex.mobile.ads.impl;

import androidx.core.app.NotificationCompat;
import defpackage.y45;
import defpackage.zfb;
import java.lang.ref.Reference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;

public final class co1 {
    private final int a;
    private final long b;
    private final k42 c;
    private final bo1 d;
    private final ConcurrentLinkedQueue<ao1> e;

    public co1(l42 l42Var, TimeUnit timeUnit) {
        y45.j(l42Var, "taskRunner");
        y45.j(timeUnit, "timeUnit");
        this.a = 5;
        this.b = timeUnit.toNanos(5L);
        this.c = l42Var.e();
        this.d = new bo1(this, g92.g + " ConnectionPool");
        this.e = new ConcurrentLinkedQueue<>();
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0031 A[SYNTHETIC] */
    public final boolean a(ab abVar, zn1 zn1Var, List<vs1> list, boolean z) {
        y45.j(abVar, "address");
        y45.j(zn1Var, NotificationCompat.CATEGORY_CALL);
        for (ao1 ao1Var : this.e) {
            y45.g(ao1Var);
            synchronized (ao1Var) {
                if (z) {
                    try {
                        if (ao1Var.h()) {
                            if (ao1Var.a(abVar, list)) {
                                zn1Var.a(ao1Var);
                                return true;
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                } else if (ao1Var.a(abVar, list)) {
                    zn1Var.a(ao1Var);
                    return true;
                }
                zfb zfbVar = zfb.a;
            }
        }
        return false;
    }

    public final void b(ao1 ao1Var) {
        y45.j(ao1Var, "connection");
        if (!g92.f || Thread.holdsLock(ao1Var)) {
            this.e.add(ao1Var);
            this.c.a(this.d, 0L);
            return;
        }
        throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + ao1Var);
    }

    public final long a(long j) {
        int i = 0;
        long j2 = Long.MIN_VALUE;
        ao1 ao1Var = null;
        int i2 = 0;
        for (ao1 ao1Var2 : this.e) {
            y45.g(ao1Var2);
            synchronized (ao1Var2) {
                if (a(ao1Var2, j) > 0) {
                    i2++;
                } else {
                    i++;
                    long jC = j - ao1Var2.c();
                    if (jC > j2) {
                        ao1Var = ao1Var2;
                        j2 = jC;
                    }
                    zfb zfbVar = zfb.a;
                }
            }
        }
        long j3 = this.b;
        if (j2 < j3 && i <= this.a) {
            if (i > 0) {
                return j3 - j2;
            }
            if (i2 > 0) {
                return j3;
            }
            return -1L;
        }
        y45.g(ao1Var);
        synchronized (ao1Var) {
            if (!ao1Var.b().isEmpty()) {
                return 0L;
            }
            if (ao1Var.c() + j2 != j) {
                return 0L;
            }
            ao1Var.l();
            this.e.remove(ao1Var);
            g92.a(ao1Var.m());
            if (this.e.isEmpty()) {
                this.c.a();
            }
            return 0L;
        }
    }

    public final boolean a(ao1 ao1Var) {
        y45.j(ao1Var, "connection");
        if (g92.f && !Thread.holdsLock(ao1Var)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + ao1Var);
        }
        if (!ao1Var.d() && this.a != 0) {
            this.c.a(this.d, 0L);
            return false;
        }
        ao1Var.l();
        this.e.remove(ao1Var);
        if (this.e.isEmpty()) {
            this.c.a();
        }
        return true;
    }

    private final int a(ao1 ao1Var, long j) {
        if (g92.f && !Thread.holdsLock(ao1Var)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + ao1Var);
        }
        ArrayList arrayListB = ao1Var.b();
        int i = 0;
        while (i < arrayListB.size()) {
            Reference reference = (Reference) arrayListB.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                y45.h(reference, "null cannot be cast to non-null type com.monetization.ads.embedded.okhttp.src.main.kotlin.okhttp3.internal.connection.RealCall.CallReference");
                String str = "A connection to " + ao1Var.k().a().k() + " was leaked. Did you forget to close a response body?";
                int i2 = rh1.c;
                rh1.a.a().a(((zn1.b) reference).a(), str);
                arrayListB.remove(i);
                ao1Var.l();
                if (arrayListB.isEmpty()) {
                    ao1Var.a(j - this.b);
                    return 0;
                }
            }
        }
        return arrayListB.size();
    }
}
