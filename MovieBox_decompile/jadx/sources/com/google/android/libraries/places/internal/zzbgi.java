package com.google.android.libraries.places.internal;

abstract class zzbgi implements Runnable {
    private final zzazj zza;

    protected zzbgi(zzazj zzazjVar) {
        this.zza = zzazjVar;
    }

    @Override
    public final void run() {
        zzazj zzazjVarZza = this.zza.zza();
        try {
            zza();
        } finally {
            this.zza.zze(zzazjVarZza);
        }
    }

    public abstract void zza();
}
