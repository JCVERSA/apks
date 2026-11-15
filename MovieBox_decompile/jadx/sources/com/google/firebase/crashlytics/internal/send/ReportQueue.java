package com.google.firebase.crashlytics.internal.send;

import android.os.SystemClock;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.l;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.crashlytics.internal.common.a0;
import com.google.firebase.crashlytics.internal.common.l0;
import com.google.firebase.crashlytics.internal.common.z0;
import java.util.Locale;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import qb.g;
import t8.h;
import t8.j;

final class ReportQueue {

    private final double f30886a;

    private final double f30887b;

    private final long f30888c;

    private final long f30889d;

    private final int f30890e;

    private final BlockingQueue f30891f;

    private final ThreadPoolExecutor f30892g;

    private final h f30893h;

    private final l0 f30894i;

    private int f30895j;

    private long f30896k;

    private final class ReportRunnable implements Runnable {
        private final a0 reportWithSessionId;
        private final TaskCompletionSource<a0> tcs;

        @Override
        public void run() {
            ReportQueue.this.p(this.reportWithSessionId, this.tcs);
            ReportQueue.this.f30894i.c();
            double dG = ReportQueue.this.g();
            g.f().b("Delay for: " + String.format(Locale.US, "%.2f", Double.valueOf(dG / 1000.0d)) + " s for report: " + this.reportWithSessionId.d());
            ReportQueue.q(dG);
        }

        private ReportRunnable(a0 a0Var, TaskCompletionSource<a0> taskCompletionSource) {
            this.reportWithSessionId = a0Var;
            this.tcs = taskCompletionSource;
        }
    }

    ReportQueue(h hVar, com.google.firebase.crashlytics.internal.settings.c cVar, l0 l0Var) {
        this(cVar.f30917f, cVar.f30918g, ((long) cVar.f30919h) * 1000, hVar, l0Var);
    }

    public double g() {
        return Math.min(3600000.0d, (60000.0d / this.f30886a) * Math.pow(this.f30887b, h()));
    }

    private int h() {
        if (this.f30896k == 0) {
            this.f30896k = o();
        }
        int iO = (int) ((o() - this.f30896k) / this.f30888c);
        int iMin = l() ? Math.min(100, this.f30895j + iO) : Math.max(0, this.f30895j - iO);
        if (this.f30895j != iMin) {
            this.f30895j = iMin;
            this.f30896k = o();
        }
        return iMin;
    }

    private boolean k() {
        return this.f30891f.size() < this.f30890e;
    }

    private boolean l() {
        return this.f30891f.size() == this.f30890e;
    }

    public void m(CountDownLatch countDownLatch) {
        try {
            l.a(this.f30893h, Priority.HIGHEST);
        } catch (Exception unused) {
        }
        countDownLatch.countDown();
    }

    public void n(TaskCompletionSource taskCompletionSource, boolean z10, a0 a0Var, Exception exc) {
        if (exc != null) {
            taskCompletionSource.trySetException(exc);
            return;
        }
        if (z10) {
            j();
        }
        taskCompletionSource.trySetResult(a0Var);
    }

    private long o() {
        return System.currentTimeMillis();
    }

    public void p(final a0 a0Var, final TaskCompletionSource taskCompletionSource) {
        g.f().b("Sending report through Google DataTransport: " + a0Var.d());
        final boolean z10 = SystemClock.elapsedRealtime() - this.f30889d < 2000;
        this.f30893h.b(t8.d.h(a0Var.b()), new j() {
            @Override
            public final void a(Exception exc) {
                this.f30903a.n(taskCompletionSource, z10, a0Var, exc);
            }
        });
    }

    public static void q(double d10) {
        try {
            Thread.sleep((long) d10);
        } catch (InterruptedException unused) {
        }
    }

    TaskCompletionSource i(a0 a0Var, boolean z10) {
        synchronized (this.f30891f) {
            try {
                TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
                if (!z10) {
                    p(a0Var, taskCompletionSource);
                    return taskCompletionSource;
                }
                this.f30894i.b();
                if (!k()) {
                    h();
                    g.f().b("Dropping report due to queue being full: " + a0Var.d());
                    this.f30894i.a();
                    taskCompletionSource.trySetResult(a0Var);
                    return taskCompletionSource;
                }
                g.f().b("Enqueueing report: " + a0Var.d());
                g.f().b("Queue size: " + this.f30891f.size());
                this.f30892g.execute(new ReportRunnable(a0Var, taskCompletionSource));
                g.f().b("Closing task for report: " + a0Var.d());
                taskCompletionSource.trySetResult(a0Var);
                return taskCompletionSource;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void j() {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        new Thread(new Runnable() {
            @Override
            public final void run() {
                this.f30907a.m(countDownLatch);
            }
        }).start();
        z0.c(countDownLatch, 2L, TimeUnit.SECONDS);
    }

    ReportQueue(double d10, double d11, long j10, h hVar, l0 l0Var) {
        this.f30886a = d10;
        this.f30887b = d11;
        this.f30888c = j10;
        this.f30893h = hVar;
        this.f30894i = l0Var;
        this.f30889d = SystemClock.elapsedRealtime();
        int i10 = (int) d10;
        this.f30890e = i10;
        ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(i10);
        this.f30891f = arrayBlockingQueue;
        this.f30892g = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, arrayBlockingQueue);
        this.f30895j = 0;
        this.f30896k = 0L;
    }
}
