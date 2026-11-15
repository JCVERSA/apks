package com.google.firebase.perf.session.gauges;

import com.google.firebase.perf.util.StorageUnit;
import com.google.firebase.perf.util.Timer;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public class l {

    private static final uc.a f31530f = uc.a.e();

    private final ScheduledExecutorService f31531a;

    public final ConcurrentLinkedQueue f31532b;

    private final Runtime f31533c;

    private ScheduledFuture f31534d;

    private long f31535e;

    l() {
        this(Executors.newSingleThreadScheduledExecutor(), Runtime.getRuntime());
    }

    private int d() {
        return com.google.firebase.perf.util.k.c(StorageUnit.BYTES.toKilobytes(this.f31533c.totalMemory() - this.f31533c.freeMemory()));
    }

    public static boolean e(long j10) {
        return j10 <= 0;
    }

    public void f(Timer timer) {
        com.google.firebase.perf.v1.b bVarL = l(timer);
        if (bVarL != null) {
            this.f31532b.add(bVarL);
        }
    }

    public void g(Timer timer) {
        com.google.firebase.perf.v1.b bVarL = l(timer);
        if (bVarL != null) {
            this.f31532b.add(bVarL);
        }
    }

    private synchronized void h(final Timer timer) {
        try {
            this.f31531a.schedule(new Runnable() {
                @Override
                public final void run() {
                    this.f31528a.f(timer);
                }
            }, 0L, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e10) {
            f31530f.j("Unable to collect Memory Metric: " + e10.getMessage());
        }
    }

    private synchronized void i(long j10, final Timer timer) {
        this.f31535e = j10;
        try {
            this.f31534d = this.f31531a.scheduleAtFixedRate(new Runnable() {
                @Override
                public final void run() {
                    this.f31526a.g(timer);
                }
            }, 0L, j10, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e10) {
            f31530f.j("Unable to start collecting Memory Metrics: " + e10.getMessage());
        }
    }

    private com.google.firebase.perf.v1.b l(Timer timer) {
        if (timer == null) {
            return null;
        }
        return (com.google.firebase.perf.v1.b) com.google.firebase.perf.v1.b.j().d(timer.getCurrentTimestampMicros()).h(d()).build();
    }

    public void c(Timer timer) {
        h(timer);
    }

    public void j(long j10, Timer timer) {
        if (e(j10)) {
            return;
        }
        if (this.f31534d == null) {
            i(j10, timer);
        } else if (this.f31535e != j10) {
            k();
            i(j10, timer);
        }
    }

    public void k() {
        ScheduledFuture scheduledFuture = this.f31534d;
        if (scheduledFuture == null) {
            return;
        }
        scheduledFuture.cancel(false);
        this.f31534d = null;
        this.f31535e = -1L;
    }

    l(ScheduledExecutorService scheduledExecutorService, Runtime runtime) {
        this.f31534d = null;
        this.f31535e = -1L;
        this.f31531a = scheduledExecutorService;
        this.f31532b = new ConcurrentLinkedQueue();
        this.f31533c = runtime;
    }
}
