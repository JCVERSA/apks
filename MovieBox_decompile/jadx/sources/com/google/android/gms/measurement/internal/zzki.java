package com.google.android.gms.measurement.internal;

import android.os.Bundle;

final class zzki implements Runnable {
    private final String zza;
    private final String zzb;
    private final long zzc;
    private final Bundle zzd;
    private final boolean zze;
    private final boolean zzf;
    private final boolean zzg;
    private final String zzh;
    private final zzjq zzi;

    zzki(zzjq zzjqVar, String str, String str2, long j10, Bundle bundle, boolean z10, boolean z11, boolean z12, String str3) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = j10;
        this.zzd = bundle;
        this.zze = z10;
        this.zzf = z11;
        this.zzg = z12;
        this.zzh = str3;
        this.zzi = zzjqVar;
    }

    @Override
    public final void run() {
        this.zzi.zza(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh);
    }
}
