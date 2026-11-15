package com.yandex.mobile.ads.impl;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import defpackage.y45;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;

public final class tc1 extends Thread {
    private final BlockingQueue<up1<?>> b;
    private final sc1 c;
    private final tm d;
    private final fr1 e;
    private volatile boolean f = false;

    public tc1(PriorityBlockingQueue priorityBlockingQueue, sc1 sc1Var, tm tmVar, fr1 fr1Var) {
        this.b = priorityBlockingQueue;
        this.c = sc1Var;
        this.d = tmVar;
        this.e = fr1Var;
    }

    private void a() throws InterruptedException {
        up1<?> up1VarTake = this.b.take();
        SystemClock.elapsedRealtime();
        up1VarTake.a(3);
        try {
            try {
                try {
                    up1VarTake.a("network-queue-take");
                    if (up1VarTake.n()) {
                        up1VarTake.c("network-discard-cancelled");
                        up1VarTake.p();
                    } else {
                        TrafficStats.setThreadStatsTag(up1VarTake.k());
                        xc1 xc1VarA = this.c.a(up1VarTake);
                        up1VarTake.a("network-http-complete");
                        if (xc1VarA.e && up1VarTake.m()) {
                            up1VarTake.c("not-modified");
                            up1VarTake.p();
                        } else {
                            xq1<?> xq1VarA = up1VarTake.a(xc1VarA);
                            up1VarTake.a("network-parse-complete");
                            if (up1VarTake.t() && xq1VarA.b != null) {
                                this.d.a(up1VarTake.d(), xq1VarA.b);
                                up1VarTake.a("network-cache-written");
                            }
                            up1VarTake.o();
                            ((h60) this.e).a(up1VarTake, xq1VarA, null);
                            up1VarTake.a(xq1VarA);
                        }
                    }
                } catch (Exception e) {
                    Object[] objArr = {e.toString()};
                    boolean z = ti2.a;
                    int i = sp0.b;
                    y45.j(objArr, "args");
                    si2 si2Var = new si2((Throwable) e);
                    SystemClock.elapsedRealtime();
                    ((h60) this.e).a(up1VarTake, si2Var);
                    up1VarTake.p();
                }
            } catch (si2 e2) {
                SystemClock.elapsedRealtime();
                ((h60) this.e).a(up1VarTake, up1VarTake.b(e2));
                up1VarTake.p();
            }
        } finally {
            up1VarTake.a(4);
        }
    }

    public final void b() {
        this.f = true;
        interrupt();
    }

    @Override
    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                a();
            } catch (InterruptedException unused) {
                if (this.f) {
                    Thread.currentThread().interrupt();
                    return;
                } else {
                    boolean z = ti2.a;
                    sp0.b(new Object[0]);
                }
            } catch (Throwable unused2) {
                boolean z2 = ti2.a;
                sp0.b(new Object[0]);
                return;
            }
        }
    }
}
