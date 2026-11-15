package com.google.android.gms.measurement.internal;

final class zzne implements Runnable {
    private final long zza;
    private final zznb zzb;

    zzne(zznb zznbVar, long j10) {
        this.zza = j10;
        this.zzb = zznbVar;
    }

    @Override
    public final void run() {
        zznb.zzb(this.zzb, this.zza);
    }
}
