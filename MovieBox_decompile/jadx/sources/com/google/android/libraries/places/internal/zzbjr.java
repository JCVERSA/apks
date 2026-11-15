package com.google.android.libraries.places.internal;

final class zzbjr implements Runnable {
    final zzbgf zza;
    final boolean zzb;
    final zzbkd zzc;

    zzbjr(zzbkd zzbkdVar, zzbgf zzbgfVar, boolean z10) {
        this.zza = zzbgfVar;
        this.zzb = z10;
        this.zzc = zzbkdVar;
    }

    @Override
    public final void run() {
        this.zzc.zzs.zzc(this.zza, this.zzb);
    }
}
