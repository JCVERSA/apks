package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import defpackage.wd8;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

final class zzjj implements Runnable {
    final AtomicReference zza;
    final String zzb;
    final String zzc;
    final zzq zzd;
    final j zze;

    public zzjj(j jVar, AtomicReference atomicReference, String str, String str2, String str3, zzq zzqVar) {
        this.zze = jVar;
        this.zza = atomicReference;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = zzqVar;
    }

    @Override
    public final void run() {
        AtomicReference atomicReference;
        synchronized (this.zza) {
            try {
                try {
                    j jVar = this.zze;
                    zzee zzeeVar = jVar.d;
                    if (zzeeVar == null) {
                        jVar.a.b().q().d("(legacy) Failed to get conditional properties; not connected to service", null, this.zzb, this.zzc);
                        this.zza.set(Collections.emptyList());
                        this.zza.notify();
                        return;
                    }
                    if (TextUtils.isEmpty(null)) {
                        wd8.l(this.zzd);
                        this.zza.set(zzeeVar.zzf(this.zzb, this.zzc, this.zzd));
                    } else {
                        this.zza.set(zzeeVar.zzg(null, this.zzb, this.zzc));
                    }
                    this.zze.D();
                    atomicReference = this.zza;
                    atomicReference.notify();
                } catch (RemoteException e) {
                    this.zze.a.b().q().d("(legacy) Failed to get conditional properties; remote exception", null, this.zzb, e);
                    this.zza.set(Collections.emptyList());
                    atomicReference = this.zza;
                }
            } catch (Throwable th) {
                this.zza.notify();
                throw th;
            }
        }
    }
}
