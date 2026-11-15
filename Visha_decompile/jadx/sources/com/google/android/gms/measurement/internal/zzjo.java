package com.google.android.gms.measurement.internal;

final class zzjo implements Runnable {
    final zzee zza;
    final i zzb;

    public zzjo(i iVar, zzee zzeeVar) {
        this.zzb = iVar;
        this.zza = zzeeVar;
    }

    @Override
    public final void run() {
        synchronized (this.zzb) {
            try {
                this.zzb.b = false;
                if (!this.zzb.d.y()) {
                    this.zzb.d.a.b().p().a("Connected to remote service");
                    this.zzb.d.w(this.zza);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
