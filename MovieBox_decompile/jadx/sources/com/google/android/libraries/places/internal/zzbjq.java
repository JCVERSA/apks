package com.google.android.libraries.places.internal;

final class zzbjq implements Runnable {
    final zzbkd zza;

    zzbjq(zzbkd zzbkdVar) {
        this.zza = zzbkdVar;
    }

    @Override
    public final void run() {
        this.zza.zzi.zza(2, "Terminated");
        zzbkd zzbkdVar = this.zza;
        zzblv zzblvVar = (zzblv) zzbkdVar.zzc;
        zzblvVar.zzb.zzj.zzJ.remove(zzbkdVar);
        zzblvVar.zzb.zzj.zzX.zzh(zzbkdVar);
        zzbma.zzQ(zzblvVar.zzb.zzj);
    }
}
