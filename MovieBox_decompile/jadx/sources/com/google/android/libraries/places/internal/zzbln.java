package com.google.android.libraries.places.internal;

import java.util.LinkedHashSet;

final class zzbln implements Runnable {
    final zzblq zza;
    final zzbls zzb;

    zzbln(zzbls zzblsVar, zzblq zzblqVar) {
        this.zza = zzblqVar;
        this.zzb = zzblsVar;
    }

    @Override
    public final void run() {
        if (this.zzb.zzb.get() != zzbma.zzi) {
            this.zza.zzl();
            return;
        }
        zzbls zzblsVar = this.zzb;
        if (zzblsVar.zza.zzK == null) {
            zzblsVar.zza.zzK = new LinkedHashSet();
            zzbma zzbmaVar = this.zzb.zza;
            zzbmaVar.zzg.zzc(zzbmaVar.zzL, true);
        }
        zzbls zzblsVar2 = this.zzb;
        zzblsVar2.zza.zzK.add(this.zza);
    }
}
