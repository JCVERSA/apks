package com.google.android.gms.measurement.internal;

import android.os.Bundle;

final class zzll implements Runnable {
    private final zzlk zza;
    private final zzlk zzb;
    private final long zzc;
    private final boolean zzd;
    private final zzlj zze;

    zzll(zzlj zzljVar, zzlk zzlkVar, zzlk zzlkVar2, long j10, boolean z10) {
        this.zza = zzlkVar;
        this.zzb = zzlkVar2;
        this.zzc = j10;
        this.zzd = z10;
        this.zze = zzljVar;
    }

    @Override
    public final void run() {
        this.zze.zza(this.zza, this.zzb, this.zzc, this.zzd, (Bundle) null);
    }
}
