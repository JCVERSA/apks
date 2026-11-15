package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

final class zzku implements Runnable {
    private final AtomicReference zza;
    private final zzjq zzb;

    zzku(zzjq zzjqVar, AtomicReference atomicReference) {
        this.zza = atomicReference;
        this.zzb = zzjqVar;
    }

    @Override
    public final void run() {
        synchronized (this.zza) {
            try {
                try {
                    this.zza.set(Long.valueOf(this.zzb.zze().zzc(this.zzb.zzg().zzad(), zzbh.zzao)));
                    this.zza.notify();
                } catch (Throwable th2) {
                    this.zza.notify();
                    throw th2;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }
}
