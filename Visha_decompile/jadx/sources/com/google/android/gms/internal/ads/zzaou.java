package com.google.android.gms.internal.ads;

final class zzaou implements Runnable {
    final c zza;
    final zzaov zzb;

    public zzaou(zzaov zzaovVar, c cVar) {
        this.zza = cVar;
        this.zzb = zzaovVar;
    }

    @Override
    public final void run() {
        try {
            this.zzb.zzc.put(this.zza);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }
}
