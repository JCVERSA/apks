package com.google.android.gms.internal.ads;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import defpackage.eme;
import defpackage.fme;
import defpackage.kme;
import defpackage.nme;
import defpackage.xle;
import defpackage.yle;
import java.util.concurrent.BlockingQueue;

public final class zzapd extends Thread {
    private final BlockingQueue zza;
    private final eme zzb;
    private final yle zzc;
    private volatile boolean zzd = false;
    private final b zze;

    public zzapd(BlockingQueue blockingQueue, eme emeVar, yle yleVar, b bVar) {
        this.zza = blockingQueue;
        this.zzb = emeVar;
        this.zzc = yleVar;
        this.zze = bVar;
    }

    private void zzb() throws InterruptedException {
        c cVar = (c) this.zza.take();
        SystemClock.elapsedRealtime();
        cVar.h(3);
        try {
            try {
                cVar.zzm("network-queue-take");
                cVar.zzw();
                TrafficStats.setThreadStatsTag(cVar.zzc());
                fme fmeVarZza = this.zzb.zza(cVar);
                cVar.zzm("network-http-complete");
                if (fmeVarZza.e && cVar.zzv()) {
                    cVar.e("not-modified");
                    cVar.f();
                } else {
                    kme kmeVarA = cVar.a(fmeVarZza);
                    cVar.zzm("network-parse-complete");
                    xle xleVar = kmeVarA.b;
                    if (xleVar != null) {
                        this.zzc.b(cVar.zzj(), xleVar);
                        cVar.zzm("network-cache-written");
                    }
                    cVar.zzq();
                    this.zze.b(cVar, kmeVarA, null);
                    cVar.g(kmeVarA);
                }
            } catch (zzaps e) {
                SystemClock.elapsedRealtime();
                this.zze.a(cVar, e);
                cVar.f();
            } catch (Exception e2) {
                nme.c(e2, "Unhandled exception %s", e2.toString());
                zzaps zzapsVar = new zzaps(e2);
                SystemClock.elapsedRealtime();
                this.zze.a(cVar, zzapsVar);
                cVar.f();
            }
        } finally {
            cVar.h(4);
        }
    }

    @Override
    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                zzb();
            } catch (InterruptedException unused) {
                if (this.zzd) {
                    Thread.currentThread().interrupt();
                    return;
                }
                nme.b("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }

    public final void zza() {
        this.zzd = true;
        interrupt();
    }
}
