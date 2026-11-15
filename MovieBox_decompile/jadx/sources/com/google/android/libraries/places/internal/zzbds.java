package com.google.android.libraries.places.internal;

final class zzbds implements Runnable {
    final zzbdt zza;
    final Runnable zzb;
    final zzbdw zzc;

    zzbds(zzbdw zzbdwVar, zzbdt zzbdtVar, Runnable runnable) {
        this.zza = zzbdtVar;
        this.zzb = runnable;
        this.zzc = zzbdwVar;
    }

    @Override
    public final void run() {
        zzbdw zzbdwVar = this.zzc;
        zzbdwVar.zzc(this.zza);
        zzbdwVar.zzb();
    }

    public final String toString() {
        return String.valueOf(this.zzb.toString()).concat("(scheduled in SynchronizationContext)");
    }
}
