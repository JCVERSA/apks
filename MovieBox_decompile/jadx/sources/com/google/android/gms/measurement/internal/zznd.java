package com.google.android.gms.measurement.internal;

final class zznd implements Runnable {
    private final long zza;
    private final zznb zzb;

    zznd(zznb zznbVar, long j10) {
        this.zza = j10;
        this.zzb = zznbVar;
    }

    @Override
    public final void run() {
        zznb.zza(this.zzb, this.zza);
    }
}
