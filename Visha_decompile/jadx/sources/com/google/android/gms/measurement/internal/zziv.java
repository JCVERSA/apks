package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import defpackage.wd8;
import java.util.concurrent.atomic.AtomicReference;

final class zziv implements Runnable {
    final AtomicReference zza;
    final zzq zzb;
    final boolean zzc;
    final j zzd;

    public zziv(j jVar, AtomicReference atomicReference, zzq zzqVar, boolean z) {
        this.zzd = jVar;
        this.zza = atomicReference;
        this.zzb = zzqVar;
        this.zzc = z;
    }

    @Override
    public final void run() {
        AtomicReference atomicReference;
        synchronized (this.zza) {
            try {
                try {
                    j jVar = this.zzd;
                    zzee zzeeVar = jVar.d;
                    if (zzeeVar == null) {
                        jVar.a.b().q().a("Failed to get all user properties; not connected to service");
                        this.zza.notify();
                        return;
                    }
                    wd8.l(this.zzb);
                    this.zza.set(zzeeVar.zze(this.zzb, this.zzc));
                    this.zzd.D();
                    atomicReference = this.zza;
                    atomicReference.notify();
                } catch (RemoteException e) {
                    this.zzd.a.b().q().b("Failed to get all user properties; remote exception", e);
                    atomicReference = this.zza;
                }
            } catch (Throwable th) {
                this.zza.notify();
                throw th;
            }
        }
    }
}
