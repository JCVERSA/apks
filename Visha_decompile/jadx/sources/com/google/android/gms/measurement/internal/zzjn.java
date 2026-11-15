package com.google.android.gms.measurement.internal;

import android.content.ComponentName;

final class zzjn implements Runnable {
    final ComponentName zza;
    final i zzb;

    public zzjn(i iVar, ComponentName componentName) {
        this.zzb = iVar;
        this.zza = componentName;
    }

    @Override
    public final void run() {
        j.L(this.zzb.d, this.zza);
    }
}
