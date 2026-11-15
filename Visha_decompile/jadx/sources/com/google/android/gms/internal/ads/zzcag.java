package com.google.android.gms.internal.ads;

final class zzcag implements Runnable {
    final int zza;
    final int zzb;
    final zzcak zzc;

    public zzcag(zzcak zzcakVar, int i, int i2) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = zzcakVar;
    }

    @Override
    public final void run() {
        zzcak zzcakVar = this.zzc;
        if (zzcakVar.r != null) {
            zzcakVar.r.zzj(this.zza, this.zzb);
        }
    }
}
