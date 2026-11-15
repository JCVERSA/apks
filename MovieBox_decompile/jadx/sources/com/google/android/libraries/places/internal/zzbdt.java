package com.google.android.libraries.places.internal;

final class zzbdt implements Runnable {
    final Runnable zza;
    boolean zzb;
    boolean zzc;

    zzbdt(Runnable runnable) {
        this.zza = runnable;
    }

    @Override
    public final void run() {
        if (this.zzb) {
            return;
        }
        this.zzc = true;
        this.zza.run();
    }
}
