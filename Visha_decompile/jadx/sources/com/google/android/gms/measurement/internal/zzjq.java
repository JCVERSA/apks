package com.google.android.gms.measurement.internal;

final class zzjq implements Runnable {
    final i zza;

    public zzjq(i iVar) {
        this.zza = iVar;
    }

    @Override
    public final void run() {
        this.zza.d.d = null;
        this.zza.d.C();
    }
}
