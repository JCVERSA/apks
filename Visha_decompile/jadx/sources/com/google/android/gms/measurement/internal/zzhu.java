package com.google.android.gms.measurement.internal;

import defpackage.kwg;
import java.util.concurrent.atomic.AtomicReference;

final class zzhu implements Runnable {
    final AtomicReference zza;
    final g zzb;

    public zzhu(g gVar, AtomicReference atomicReference) {
        this.zzb = gVar;
        this.zza = atomicReference;
    }

    @Override
    public final void run() {
        synchronized (this.zza) {
            try {
                try {
                    this.zza.set(Integer.valueOf(this.zzb.a.z().k(this.zzb.a.B().q(), kwg.O)));
                    this.zza.notify();
                } catch (Throwable th) {
                    this.zza.notify();
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
