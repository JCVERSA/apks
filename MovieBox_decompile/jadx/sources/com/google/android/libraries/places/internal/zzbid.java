package com.google.android.libraries.places.internal;

final class zzbid implements Runnable {
    final boolean zza;
    final zzbie zzb;

    zzbid(zzbie zzbieVar, boolean z10) {
        this.zza = z10;
        this.zzb = zzbieVar;
    }

    @Override
    public final void run() {
        if (this.zza) {
            zzbih zzbihVar = this.zzb.zza;
            zzbihVar.zzf = true;
            if (zzbihVar.zzt > 0) {
                zzna zznaVar = zzbihVar.zzv;
                zznaVar.zzc();
                zznaVar.zzd();
            }
        }
        this.zzb.zza.zzA = false;
    }
}
