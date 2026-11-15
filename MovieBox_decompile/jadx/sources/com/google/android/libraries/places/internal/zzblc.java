package com.google.android.libraries.places.internal;

final class zzblc implements Runnable {
    final zzbma zza;

    zzblc(zzbma zzbmaVar, zzblb zzblbVar) {
        this.zza = zzbmaVar;
    }

    @Override
    public final void run() {
        zzbma zzbmaVar = this.zza;
        if (zzbmaVar.zzG == null) {
            return;
        }
        zzbma.zzP(zzbmaVar);
    }
}
