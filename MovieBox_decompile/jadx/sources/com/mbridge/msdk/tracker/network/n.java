package com.mbridge.msdk.tracker.network;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;

public class n implements Runnable {

    private final BlockingQueue<t<?>> f37752a;

    private final m f37753b;

    private final b f37754c;

    private final w f37755d;

    private volatile boolean f37756e = false;

    public n(BlockingQueue<t<?>> blockingQueue, m mVar, b bVar, w wVar) {
        this.f37752a = blockingQueue;
        this.f37753b = mVar;
        this.f37754c = bVar;
        this.f37755d = wVar;
    }

    private void a(t<?> tVar) {
        TrafficStats.setThreadStatsTag(tVar.s());
    }

    void b(t<?> tVar) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        tVar.a(3);
        try {
            try {
                try {
                    tVar.a("network-queue-take");
                    if (tVar.v()) {
                        tVar.c("network-discard-cancelled");
                        tVar.x();
                        return;
                    }
                    if (tVar.y()) {
                        a(tVar);
                    }
                    q qVarA = this.f37753b.a(tVar);
                    tVar.a("network-http-complete");
                    if (qVarA.f37787e && tVar.u()) {
                        tVar.c("not-modified");
                        tVar.x();
                        return;
                    }
                    v<?> vVarA = tVar.a(qVarA);
                    tVar.a("network-parse-complete");
                    if (tVar.z() && vVarA.f37860b != null) {
                        this.f37754c.a(tVar.e(), vVarA.f37860b);
                        tVar.a("network-cache-written");
                    }
                    tVar.w();
                    this.f37755d.a(tVar, vVarA);
                    tVar.a(vVarA);
                } catch (Exception e10) {
                    c0.a(e10, "Unhandled exception %s", e10.toString());
                    a0 a0Var = new a0(e10);
                    a0Var.a(SystemClock.elapsedRealtime() - jElapsedRealtime);
                    this.f37755d.a(tVar, a0Var);
                    tVar.x();
                }
            } catch (b0 e11) {
                e11.a(SystemClock.elapsedRealtime() - jElapsedRealtime);
                a(tVar, e11);
                tVar.x();
            }
        } finally {
            tVar.a(4);
        }
    }

    @Override
    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                a();
            } catch (InterruptedException unused) {
                if (this.f37756e) {
                    Thread.currentThread().interrupt();
                    return;
                }
                c0.c("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }

    private void a() throws InterruptedException {
        b(this.f37752a.take());
    }

    private void a(t<?> tVar, b0 b0Var) {
        this.f37755d.a(tVar, tVar.c(b0Var));
    }
}
