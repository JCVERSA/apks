package com.yandex.mobile.ads.impl;

import android.os.Process;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;

public final class ym extends Thread {
    private static final boolean h = ti2.a;
    private final BlockingQueue<up1<?>> b;
    private final BlockingQueue<up1<?>> c;
    private final tm d;
    private final fr1 e;
    private volatile boolean f = false;
    private final hj2 g;

    public ym(PriorityBlockingQueue priorityBlockingQueue, PriorityBlockingQueue priorityBlockingQueue2, tm tmVar, fr1 fr1Var) {
        this.b = priorityBlockingQueue;
        this.c = priorityBlockingQueue2;
        this.d = tmVar;
        this.e = fr1Var;
        this.g = new hj2(this, priorityBlockingQueue2, fr1Var);
    }

    public final void b() {
        this.f = true;
        interrupt();
    }

    @Override
    public final void run() {
        if (h) {
            sp0.e(new Object[0]);
        }
        Process.setThreadPriority(10);
        this.d.a();
        while (true) {
            try {
                a();
            } catch (InterruptedException unused) {
                if (this.f) {
                    Thread.currentThread().interrupt();
                    return;
                }
                sp0.b(new Object[0]);
            } catch (Throwable unused2) {
                sp0.b(new Object[0]);
                return;
            }
        }
    }

    private void a() throws InterruptedException {
        up1<?> up1VarTake = this.b.take();
        up1VarTake.a("cache-queue-take");
        up1VarTake.a(1);
        try {
            if (up1VarTake.n()) {
                up1VarTake.c("cache-discard-canceled");
            } else {
                tm.a aVar = this.d.get(up1VarTake.d());
                if (aVar == null) {
                    up1VarTake.a("cache-miss");
                    if (!this.g.a(up1VarTake)) {
                        this.c.put(up1VarTake);
                    }
                } else {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (aVar.e < jCurrentTimeMillis) {
                        up1VarTake.a("cache-hit-expired");
                        up1VarTake.a(aVar);
                        if (!this.g.a(up1VarTake)) {
                            this.c.put(up1VarTake);
                        }
                    } else {
                        up1VarTake.a("cache-hit");
                        xq1<?> xq1VarA = up1VarTake.a(new xc1(200, aVar.a, aVar.g, false));
                        up1VarTake.a("cache-hit-parsed");
                        if (xq1VarA.c != null) {
                            up1VarTake.a("cache-parsing-failed");
                            this.d.a(up1VarTake.d());
                            up1VarTake.a((tm.a) null);
                            if (!this.g.a(up1VarTake)) {
                                this.c.put(up1VarTake);
                            }
                        } else if (aVar.f < jCurrentTimeMillis) {
                            up1VarTake.a("cache-hit-refresh-needed");
                            up1VarTake.a(aVar);
                            xq1VarA.d = true;
                            if (this.g.a(up1VarTake)) {
                                ((h60) this.e).a(up1VarTake, xq1VarA, null);
                            } else {
                                ((h60) this.e).a(up1VarTake, xq1VarA, new xm(this, up1VarTake));
                            }
                        } else {
                            ((h60) this.e).a(up1VarTake, xq1VarA, null);
                        }
                    }
                }
            }
        } finally {
            up1VarTake.a(2);
        }
    }
}
