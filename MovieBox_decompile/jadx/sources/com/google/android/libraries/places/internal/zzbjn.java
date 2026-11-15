package com.google.android.libraries.places.internal;

final class zzbjn implements Runnable {
    final zzbjo zza;

    zzbjn(zzbjo zzbjoVar) {
        this.zza = zzbjoVar;
    }

    @Override
    public final void run() {
        zzbkd zzbkdVar = this.zza.zzb;
        zzbml zzbmlVar = zzbkdVar.zzq;
        zzbkdVar.zzp = null;
        this.zza.zzb.zzq = null;
        zzbmlVar.zzd(zzbdo.zzp.zzg("InternalSubchannel closed transport due to address change"));
    }
}
