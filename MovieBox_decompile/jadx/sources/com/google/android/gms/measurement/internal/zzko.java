package com.google.android.gms.measurement.internal;

import android.os.Bundle;

final class zzko implements Runnable {
    private final Bundle zza;
    private final zzjq zzb;

    zzko(zzjq zzjqVar, Bundle bundle) {
        this.zza = bundle;
        this.zzb = zzjqVar;
    }

    @Override
    public final void run() {
        zzjq.zzb(this.zzb, this.zza);
    }
}
