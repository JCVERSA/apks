package com.android.net;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;

public final class i extends Thread {
    volatile boolean a = false;
    private final BlockingQueue<n<?>> b;
    private final h c;
    private final b d;
    private final q e;

    public i(BlockingQueue<n<?>> blockingQueue, h hVar, b bVar, q qVar) {
        this.b = blockingQueue;
        this.c = hVar;
        this.d = bVar;
        this.e = qVar;
    }

    @Override
    public final void run() {
        b.a aVar;
        Process.setThreadPriority(10);
        while (true) {
            try {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                n<?> nVarTake = this.b.take();
                try {
                    try {
                        nVarTake.a("network-queue-take");
                        if (nVarTake.b()) {
                            nVarTake.b("network-discard-cancelled");
                        } else {
                            TrafficStats.setThreadStatsTag(nVarTake.c);
                            k kVarA = this.c.a(nVarTake);
                            nVarTake.a("network-http-complete");
                            if (kVarA.e && nVarTake.l()) {
                                nVarTake.b("not-modified");
                            } else {
                                p<?> pVarA = nVarTake.a(kVarA);
                                nVarTake.a("network-parse-complete");
                                if (nVarTake.h && (aVar = pVarA.b) != null) {
                                    this.d.a(nVarTake.b, aVar);
                                    nVarTake.a("network-cache-written");
                                }
                                nVarTake.k();
                                this.e.a(nVarTake, pVarA);
                                nVarTake.a(pVarA);
                            }
                        }
                        nVarTake.m();
                    } catch (u e) {
                        e.b = SystemClock.elapsedRealtime() - jElapsedRealtime;
                        this.e.a(nVarTake, n.a(e));
                        nVarTake.m();
                    }
                } catch (Exception e2) {
                    v.a(e2, "Unhandled exception %s", e2.toString());
                    u uVar = new u(e2);
                    uVar.b = SystemClock.elapsedRealtime() - jElapsedRealtime;
                    this.e.a(nVarTake, uVar);
                    nVarTake.m();
                }
            } catch (InterruptedException unused) {
                if (this.a) {
                    return;
                }
            }
        }
    }
}
