package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import defpackage.wd8;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

final class zzjl implements Runnable {
    final AtomicReference zza;
    final String zzb;
    final String zzc;
    final zzq zzd;
    final boolean zze;
    final j zzf;

    public zzjl(j jVar, AtomicReference atomicReference, String str, String str2, String str3, zzq zzqVar, boolean z) {
        this.zzf = jVar;
        this.zza = atomicReference;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = zzqVar;
        this.zze = z;
    }

    @Override
    public final void run() {
        AtomicReference atomicReference;
        synchronized (this.zza) {
            try {
                try {
                    j jVar = this.zzf;
                    zzee zzeeVar = jVar.d;
                    if (zzeeVar == null) {
                        jVar.a.b().q().d("(legacy) Failed to get user properties; not connected to service", null, this.zzb, this.zzc);
                        this.zza.set(Collections.emptyList());
                        this.zza.notify();
                        return;
                    }
                    if (TextUtils.isEmpty(null)) {
                        wd8.l(this.zzd);
                        this.zza.set(zzeeVar.zzh(this.zzb, this.zzc, this.zze, this.zzd));
                    } else {
                        this.zza.set(zzeeVar.zzi(null, this.zzb, this.zzc, this.zze));
                    }
                    this.zzf.D();
                    atomicReference = this.zza;
                    atomicReference.notify();
                } catch (RemoteException e) {
                    this.zzf.a.b().q().d("(legacy) Failed to get user properties; remote exception", null, this.zzb, e);
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
