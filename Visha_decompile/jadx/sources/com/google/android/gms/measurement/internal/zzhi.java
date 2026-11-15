package com.google.android.gms.measurement.internal;

import android.os.Bundle;

final class zzhi implements Runnable {
    final String zza;
    final String zzb;
    final long zzc;
    final Bundle zzd;
    final boolean zze;
    final boolean zzf;
    final boolean zzg;
    final String zzh;
    final g zzi;

    public zzhi(g gVar, String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        this.zzi = gVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = j;
        this.zzd = bundle;
        this.zze = z;
        this.zzf = z2;
        this.zzg = z3;
        this.zzh = str3;
    }

    @Override
    public final void run() {
        this.zzi.v(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh);
    }
}
