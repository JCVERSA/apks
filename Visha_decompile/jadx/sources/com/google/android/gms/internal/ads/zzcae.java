package com.google.android.gms.internal.ads;

final class zzcae implements Runnable {
    final String zza;
    final String zzb;
    final zzcak zzc;

    public zzcae(zzcak zzcakVar, String str, String str2) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzcakVar;
    }

    @Override
    public final void run() {
        zzcak zzcakVar = this.zzc;
        if (zzcakVar.r != null) {
            zzcakVar.r.zzb(this.zza, this.zzb);
        }
    }
}
