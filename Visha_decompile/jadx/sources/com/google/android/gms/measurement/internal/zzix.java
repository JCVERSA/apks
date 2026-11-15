package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import defpackage.wd8;
import java.util.concurrent.atomic.AtomicReference;

final class zzix implements Runnable {
    final AtomicReference zza;
    final zzq zzb;
    final j zzc;

    public zzix(j jVar, AtomicReference atomicReference, zzq zzqVar) {
        this.zzc = jVar;
        this.zza = atomicReference;
        this.zzb = zzqVar;
    }

    @Override
    public final void run() {
        AtomicReference atomicReference;
        synchronized (this.zza) {
            try {
                try {
                    if (!this.zzc.a.F().p().h(zzah.ANALYTICS_STORAGE)) {
                        this.zzc.a.b().w().a("Analytics storage consent denied; will not get app instance id");
                        this.zzc.a.I().B(null);
                        this.zzc.a.F().g.b(null);
                        this.zza.set(null);
                        this.zza.notify();
                        return;
                    }
                    j jVar = this.zzc;
                    zzee zzeeVar = jVar.d;
                    if (zzeeVar == null) {
                        jVar.a.b().q().a("Failed to get app instance id");
                        this.zza.notify();
                        return;
                    }
                    wd8.l(this.zzb);
                    this.zza.set(zzeeVar.zzd(this.zzb));
                    String str = (String) this.zza.get();
                    if (str != null) {
                        this.zzc.a.I().B(str);
                        this.zzc.a.F().g.b(str);
                    }
                    this.zzc.D();
                    atomicReference = this.zza;
                    atomicReference.notify();
                } catch (RemoteException e) {
                    this.zzc.a.b().q().b("Failed to get app instance id", e);
                    atomicReference = this.zza;
                }
            } catch (Throwable th) {
                this.zza.notify();
                throw th;
            }
        }
    }
}
