package com.google.android.libraries.places.internal;

final class zzbhc implements Runnable {
    final zzbmk zza;

    zzbhc(zzbhg zzbhgVar, zzbmk zzbmkVar) {
        this.zza = zzbmkVar;
    }

    @Override
    public final void run() {
        zzbkx zzbkxVar = (zzbkx) this.zza;
        zzmt.zzp(zzbkxVar.zza.zzP.get(), "Channel must have been shut down");
        zzbkxVar.zza.zzQ = true;
        zzbkxVar.zza.zzah(false);
        zzbma.zzQ(zzbkxVar.zza);
    }
}
