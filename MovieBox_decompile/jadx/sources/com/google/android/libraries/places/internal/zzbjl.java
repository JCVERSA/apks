package com.google.android.libraries.places.internal;

final class zzbjl implements Runnable {
    final zzbkd zza;

    zzbjl(zzbkd zzbkdVar) {
        this.zza = zzbkdVar;
    }

    @Override
    public final void run() {
        this.zza.zzo = null;
        this.zza.zzi.zza(2, "CONNECTING after backoff");
        zzbkd.zzA(this.zza, zzaze.CONNECTING);
        zzbkd.zzE(this.zza);
    }
}
