package com.google.android.libraries.places.internal;

final class zzbgw implements Runnable {
    final zzbdo zza;
    final zzbcf zzb;
    final zzbgy zzc;

    zzbgw(zzbgy zzbgyVar, zzbdo zzbdoVar, zzbcf zzbcfVar) {
        this.zza = zzbdoVar;
        this.zzb = zzbcfVar;
        this.zzc = zzbgyVar;
    }

    @Override
    public final void run() {
        this.zzc.zza.zza(this.zza, this.zzb);
    }
}
