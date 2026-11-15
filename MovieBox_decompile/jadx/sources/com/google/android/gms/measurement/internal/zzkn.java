package com.google.android.gms.measurement.internal;

import android.os.Bundle;

final class zzkn implements Runnable {
    private final Bundle zza;
    private final zzjq zzb;

    zzkn(zzjq zzjqVar, Bundle bundle) {
        this.zza = bundle;
        this.zzb = zzjqVar;
    }

    @Override
    public final void run() {
        zzjq.zza(this.zzb, this.zza);
    }
}
