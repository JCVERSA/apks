package com.google.android.gms.measurement.internal;

import defpackage.kwg;
import java.util.concurrent.atomic.AtomicReference;

final class zzhs implements Runnable {
    final AtomicReference zza;
    final g zzb;

    public zzhs(g gVar, AtomicReference atomicReference) {
        this.zzb = gVar;
        this.zza = atomicReference;
    }

    @Override
    public final void run() {
        synchronized (this.zza) {
            try {
                try {
                    this.zza.set(this.zzb.a.z().s(this.zzb.a.B().q(), kwg.M));
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
