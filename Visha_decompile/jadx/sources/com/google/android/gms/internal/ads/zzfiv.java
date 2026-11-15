package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.client.zzbm;
import com.google.android.gms.ads.internal.client.zzbx;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.ads.internal.util.client.zzo;
import defpackage.yth;

final class zzfiv extends zzbm {
    final n8 zza;
    final zzbx zzb;
    final y5 zzc;

    public zzfiv(y5 y5Var, n8 n8Var, zzbx zzbxVar) {
        this.zza = n8Var;
        this.zzb = zzbxVar;
        this.zzc = y5Var;
    }

    @Override
    public final void zzb(zze zzeVar) {
        String string = zzeVar.zzb().toString();
        y5 y5Var = this.zzc;
        zzo.zzj("Failed to load interstitial ad with error: " + string + " for ad unit: " + y5Var.e.zza);
        y5Var.e(zzeVar);
    }

    @Override
    public final void zzc() {
        yth.a(this.zzb, this.zza);
    }
}
