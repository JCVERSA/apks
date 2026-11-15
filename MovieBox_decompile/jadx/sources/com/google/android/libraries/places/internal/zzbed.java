package com.google.android.libraries.places.internal;

final class zzbed implements Runnable {
    final zzbdo zza;
    final zzbfs zzb;
    final zzbcf zzc;
    final zzbee zzd;

    zzbed(zzbee zzbeeVar, zzbdo zzbdoVar, zzbfs zzbfsVar, zzbcf zzbcfVar) {
        this.zza = zzbdoVar;
        this.zzb = zzbfsVar;
        this.zzc = zzbcfVar;
        this.zzd = zzbeeVar;
    }

    @Override
    public final void run() {
        this.zzd.zzA(this.zza, this.zzb, this.zzc);
    }
}
