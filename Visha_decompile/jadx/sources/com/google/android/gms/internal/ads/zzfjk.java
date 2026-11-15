package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.client.zzdx;

final class zzfjk implements Runnable {
    final long zza;
    final zzdx zzb;
    final z5 zzc;

    public zzfjk(z5 z5Var, long j, zzdx zzdxVar) {
        this.zza = j;
        this.zzb = zzdxVar;
        this.zzc = z5Var;
    }

    @Override
    public final void run() {
        z5 z5Var = this.zzc;
        if (z5Var.n != null) {
            z5Var.n.c(AdFormat.getAdFormat(z5Var.e.zzb), this.zza, z5.h(this.zzb));
        }
    }
}
