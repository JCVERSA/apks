package com.google.android.gms.tasks;

import java.util.concurrent.Callable;

final class zzz implements Runnable {
    final zzw zza;
    final Callable zzb;

    zzz(zzw zzwVar, Callable callable) {
        this.zza = zzwVar;
        this.zzb = callable;
    }

    @Override
    public final void run() {
        try {
            this.zza.zzb(this.zzb.call());
        } catch (Exception e10) {
            this.zza.zza(e10);
        } catch (Throwable th2) {
            this.zza.zza(new RuntimeException(th2));
        }
    }
}
