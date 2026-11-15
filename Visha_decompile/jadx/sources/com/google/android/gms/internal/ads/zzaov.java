package com.google.android.gms.internal.ads;

import android.os.Process;
import defpackage.fme;
import defpackage.kme;
import defpackage.nme;
import defpackage.ome;
import defpackage.xle;
import defpackage.yle;
import java.util.concurrent.BlockingQueue;

public final class zzaov extends Thread {
    private static final boolean zza = nme.b;
    private final BlockingQueue zzb;
    private final BlockingQueue zzc;
    private final yle zzd;
    private volatile boolean zze = false;
    private final ome zzf;
    private final b zzg;

    public zzaov(BlockingQueue blockingQueue, BlockingQueue blockingQueue2, yle yleVar, b bVar) {
        this.zzb = blockingQueue;
        this.zzc = blockingQueue2;
        this.zzd = yleVar;
        this.zzg = bVar;
        this.zzf = new ome(this, blockingQueue2, bVar);
    }

    private void zzc() throws InterruptedException {
        c cVar = (c) this.zzb.take();
        cVar.zzm("cache-queue-take");
        cVar.h(1);
        try {
            cVar.zzw();
            yle yleVar = this.zzd;
            xle xleVarZza = yleVar.zza(cVar.zzj());
            if (xleVarZza == null) {
                cVar.zzm("cache-miss");
                if (!this.zzf.b(cVar)) {
                    this.zzc.put(cVar);
                }
            } else {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (xleVarZza.a(jCurrentTimeMillis)) {
                    cVar.zzm("cache-hit-expired");
                    cVar.zze(xleVarZza);
                    if (!this.zzf.b(cVar)) {
                        this.zzc.put(cVar);
                    }
                } else {
                    cVar.zzm("cache-hit");
                    kme kmeVarA = cVar.a(new fme(xleVarZza.a, xleVarZza.g));
                    cVar.zzm("cache-hit-parsed");
                    if (!kmeVarA.c()) {
                        cVar.zzm("cache-parsing-failed");
                        yleVar.a(cVar.zzj(), true);
                        cVar.zze(null);
                        if (!this.zzf.b(cVar)) {
                            this.zzc.put(cVar);
                        }
                    } else if (xleVarZza.f < jCurrentTimeMillis) {
                        cVar.zzm("cache-hit-refresh-needed");
                        cVar.zze(xleVarZza);
                        kmeVarA.d = true;
                        if (this.zzf.b(cVar)) {
                            this.zzg.b(cVar, kmeVarA, null);
                        } else {
                            this.zzg.b(cVar, kmeVarA, new zzaou(this, cVar));
                        }
                    } else {
                        this.zzg.b(cVar, kmeVarA, null);
                    }
                }
            }
        } finally {
            cVar.h(2);
        }
    }

    @Override
    public final void run() {
        if (zza) {
            nme.d("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.zzd.zzb();
        while (true) {
            try {
                zzc();
            } catch (InterruptedException unused) {
                if (this.zze) {
                    Thread.currentThread().interrupt();
                    return;
                }
                nme.b("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }

    public final void zzb() {
        this.zze = true;
        interrupt();
    }
}
