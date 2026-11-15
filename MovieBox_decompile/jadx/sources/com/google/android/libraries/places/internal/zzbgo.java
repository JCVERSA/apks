package com.google.android.libraries.places.internal;

final class zzbgo implements Runnable {
    final zzbdo zza;
    final zzbgz zzb;

    zzbgo(zzbgz zzbgzVar, zzbdo zzbdoVar) {
        this.zza = zzbdoVar;
        this.zzb = zzbgzVar;
    }

    @Override
    public final void run() {
        zzbdo zzbdoVar = this.zza;
        this.zzb.zzh.zza(zzbdoVar.zzi(), zzbdoVar.zzj());
    }
}
