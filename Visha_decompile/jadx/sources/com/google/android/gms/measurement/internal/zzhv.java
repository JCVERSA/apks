package com.google.android.gms.measurement.internal;

import defpackage.kwg;
import java.util.concurrent.atomic.AtomicReference;

final class zzhv implements Runnable {
    final AtomicReference zza;
    final g zzb;

    public zzhv(g gVar, AtomicReference atomicReference) {
        this.zzb = gVar;
        this.zza = atomicReference;
    }

    @Override
    public final void run() {
        synchronized (this.zza) {
            try {
                try {
                    this.zza.set(Double.valueOf(this.zzb.a.z().i(this.zzb.a.B().q(), kwg.P)));
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
