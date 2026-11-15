package com.google.android.libraries.places.internal;

final class zzblo implements Runnable {
    final Runnable zza;
    final zzblq zzb;

    zzblo(zzblq zzblqVar, Runnable runnable) {
        this.zza = runnable;
        this.zzb = zzblqVar;
    }

    @Override
    public final void run() {
        this.zza.run();
        zzblq zzblqVar = this.zzb;
        zzblp zzblpVar = new zzblp(zzblqVar);
        zzbdw zzbdwVar = zzblqVar.zzd.zza.zzf;
        zzbdwVar.zzc(zzblpVar);
        zzbdwVar.zzb();
    }
}
