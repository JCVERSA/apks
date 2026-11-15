package com.google.android.gms.internal.ads;

import defpackage.pzh;

final class zzcbi implements Runnable {
    private final zzcau zza;
    private boolean zzb = false;

    public zzcbi(zzcau zzcauVar) {
        this.zza = zzcauVar;
    }

    private final void zzc() {
        pzh pzhVar = com.google.android.gms.ads.internal.util.zzs.zza;
        pzhVar.removeCallbacks(this);
        pzhVar.postDelayed(this, 250L);
    }

    @Override
    public final void run() {
        if (this.zzb) {
            return;
        }
        this.zza.e();
        zzc();
    }

    public final void zza() {
        this.zzb = true;
        this.zza.e();
    }

    public final void zzb() {
        this.zzb = false;
        zzc();
    }
}
