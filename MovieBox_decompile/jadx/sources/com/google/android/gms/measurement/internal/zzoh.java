package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;

final class zzoh implements Runnable {
    private final String zza;
    private final String zzb;
    private final Bundle zzc;
    private final zzof zzd;

    zzoh(zzof zzofVar, String str, String str2, Bundle bundle) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = bundle;
        this.zzd = zzofVar;
    }

    @Override
    public final void run() {
        this.zzd.zza.zza((zzbf) Preconditions.checkNotNull(this.zzd.zza.zzq().zza(this.zza, this.zzb, this.zzc, "auto", this.zzd.zza.zzb().currentTimeMillis(), false, true)), this.zza);
    }
}
