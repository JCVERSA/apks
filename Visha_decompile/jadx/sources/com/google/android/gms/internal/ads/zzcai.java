package com.google.android.gms.internal.ads;

final class zzcai implements Runnable {
    final zzcak zza;

    public zzcai(zzcak zzcakVar) {
        this.zza = zzcakVar;
    }

    @Override
    public final void run() {
        zzcak zzcakVar = this.zza;
        if (zzcakVar.r != null) {
            if (!zzcakVar.s) {
                zzcakVar.r.zzg();
                zzcakVar.s = true;
            }
            zzcakVar.r.zze();
        }
    }
}
