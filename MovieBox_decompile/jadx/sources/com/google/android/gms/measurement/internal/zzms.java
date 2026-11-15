package com.google.android.gms.measurement.internal;

import android.content.ComponentName;

final class zzms implements Runnable {
    private final ComponentName zza;
    private final zzmq zzb;

    zzms(zzmq zzmqVar, ComponentName componentName) {
        this.zza = componentName;
        this.zzb = zzmqVar;
    }

    @Override
    public final void run() {
        zzls.zza(this.zzb.zza, this.zza);
    }
}
