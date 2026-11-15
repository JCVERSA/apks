package com.google.android.gms.tasks;

final class zzg implements Runnable {
    final d zza;

    public zzg(d dVar) {
        this.zza = dVar;
    }

    @Override
    public final void run() {
        synchronized (this.zza.b) {
            try {
                d dVar = this.zza;
                if (dVar.c != null) {
                    dVar.c.b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
