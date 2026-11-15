package com.google.android.libraries.places.internal;

final class zzbph implements Runnable {
    final zzbpl zza;

    zzbph(zzbpl zzbplVar) {
        this.zza = zzbplVar;
    }

    @Override
    public final void run() {
        this.zza.zzb.zzD = true;
        zzbpo zzbpoVar = this.zza.zzb;
        zzbpoVar.zzy.zzd(zzbpoVar.zzw.zza, this.zza.zzb.zzw.zzb, this.zza.zzb.zzw.zzc);
    }
}
