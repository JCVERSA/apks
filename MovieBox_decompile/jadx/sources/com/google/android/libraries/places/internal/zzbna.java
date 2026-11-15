package com.google.android.libraries.places.internal;

final class zzbna implements Runnable {
    final zzbnj zza;

    zzbna(zzbnj zzbnjVar) {
        this.zza = zzbnjVar;
    }

    @Override
    public final void run() {
        this.zza.zzl = null;
        if (this.zza.zzi.zzf()) {
            this.zza.zzd();
        }
    }
}
