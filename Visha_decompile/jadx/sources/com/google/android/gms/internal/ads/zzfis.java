package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.ads.internal.client.zzfp;
import com.google.android.gms.ads.internal.util.client.zzo;
import defpackage.yth;

final class zzfis extends zzbac {
    final n8 zza;
    final zzfp zzb;
    final x5 zzc;

    public zzfis(x5 x5Var, n8 n8Var, zzfp zzfpVar) {
        this.zza = n8Var;
        this.zzb = zzfpVar;
        this.zzc = x5Var;
    }

    @Override
    public final void zzb(int i) {
    }

    @Override
    public final void zzc(zze zzeVar) {
        zzo.zzj("Failed to load app open ad with error parcel: " + zzeVar.zzb().toString() + " for ad unit: " + this.zzb.zza);
        this.zzc.e(zzeVar);
    }

    @Override
    public final void zzd(zzbaa zzbaaVar) {
        yth.a(zzbaaVar, this.zza);
    }
}
