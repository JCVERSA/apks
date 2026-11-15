package com.google.android.gms.measurement.internal;

import android.os.Process;
import androidx.annotation.GuardedBy;
import defpackage.wd8;
import java.util.concurrent.BlockingQueue;

final class zzfu extends Thread {
    final d zza;
    private final Object zzb;
    private final BlockingQueue zzc;

    @GuardedBy("threadLifeCycleLock")
    private boolean zzd = false;

    public zzfu(d dVar, String str, BlockingQueue blockingQueue) {
        this.zza = dVar;
        wd8.l(str);
        wd8.l(blockingQueue);
        this.zzb = new Object();
        this.zzc = blockingQueue;
        setName(str);
    }

    private final void zzb() {
        synchronized (this.zza.i) {
            try {
                if (!this.zzd) {
                    this.zza.j.release();
                    this.zza.i.notifyAll();
                    d dVar = this.zza;
                    if (this == dVar.c) {
                        dVar.c = null;
                    } else if (this == dVar.d) {
                        dVar.d = null;
                    } else {
                        dVar.a.b().q().a("Current scheduler thread is neither worker nor network");
                    }
                    this.zzd = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void zzc(InterruptedException interruptedException) {
        this.zza.a.b().v().b(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }

    @Override
    public final void run() {
        boolean z = false;
        while (!z) {
            try {
                this.zza.j.acquire();
                z = true;
            } catch (InterruptedException e) {
                zzc(e);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                zzft zzftVar = (zzft) this.zzc.poll();
                if (zzftVar != null) {
                    Process.setThreadPriority(true != zzftVar.zza ? 10 : threadPriority);
                    zzftVar.run();
                } else {
                    synchronized (this.zzb) {
                        if (this.zzc.peek() == null) {
                            d.y(this.zza);
                            try {
                                this.zzb.wait(30000L);
                            } catch (InterruptedException e2) {
                                zzc(e2);
                            }
                        }
                    }
                    synchronized (this.zza.i) {
                        if (this.zzc.peek() == null) {
                            zzb();
                            zzb();
                            return;
                        }
                    }
                }
            }
        } catch (Throwable th) {
            zzb();
            throw th;
        }
    }

    public final void zza() {
        synchronized (this.zzb) {
            this.zzb.notifyAll();
        }
    }
}
