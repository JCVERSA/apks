package com.google.android.libraries.places.internal;

final class zzbsd implements Runnable {
    final zzbsf zza;

    zzbsd(zzbsf zzbsfVar) {
        this.zza = zzbsfVar;
    }

    @Override
    public final void run() {
        zzbsf zzbsfVar = this.zza;
        zzbsfVar.zzs.execute(zzbsfVar.zzx);
        synchronized (this.zza.zzo) {
            this.zza.zzH = Integer.MAX_VALUE;
            this.zza.zzad();
        }
    }
}
