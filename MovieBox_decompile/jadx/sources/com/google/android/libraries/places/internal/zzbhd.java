package com.google.android.libraries.places.internal;

final class zzbhd implements Runnable {
    final zzbdo zza;
    final zzbhg zzb;

    zzbhd(zzbhg zzbhgVar, zzbdo zzbdoVar) {
        this.zza = zzbdoVar;
        this.zzb = zzbhgVar;
    }

    @Override
    public final void run() {
        zzmt.zzp(((zzbkx) this.zzb.zzh).zza.zzP.get(), "Channel must have been shut down");
    }
}
