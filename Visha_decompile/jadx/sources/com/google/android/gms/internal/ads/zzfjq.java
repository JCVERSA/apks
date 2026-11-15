package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.ads.internal.util.client.zzo;
import defpackage.yth;

final class zzfjq extends zzbwj {
    final n8 zza;
    final zzbwd zzb;
    final a6 zzc;

    public zzfjq(a6 a6Var, n8 n8Var, zzbwd zzbwdVar) {
        this.zza = n8Var;
        this.zzb = zzbwdVar;
        this.zzc = a6Var;
    }

    @Override
    public final void zze(int i) {
    }

    @Override
    public final void zzf(zze zzeVar) {
        String string = zzeVar.zzb().toString();
        a6 a6Var = this.zzc;
        zzo.zzj("Failed to load rewarded ad with error: " + string + ", adUnitId: " + a6Var.e.zza);
        a6Var.e(zzeVar);
    }

    @Override
    public final void zzg() {
        yth.a(this.zzb, this.zza);
    }
}
