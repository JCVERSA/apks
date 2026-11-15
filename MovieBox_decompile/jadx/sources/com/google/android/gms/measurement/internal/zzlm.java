package com.google.android.gms.measurement.internal;

import android.os.Bundle;

final class zzlm implements Runnable {
    private final Bundle zza;
    private final zzlk zzb;
    private final zzlk zzc;
    private final long zzd;
    private final zzlj zze;

    zzlm(zzlj zzljVar, Bundle bundle, zzlk zzlkVar, zzlk zzlkVar2, long j10) {
        this.zza = bundle;
        this.zzb = zzlkVar;
        this.zzc = zzlkVar2;
        this.zzd = j10;
        this.zze = zzljVar;
    }

    @Override
    public final void run() {
        zzlj.zza(this.zze, this.zza, this.zzb, this.zzc, this.zzd);
    }
}
