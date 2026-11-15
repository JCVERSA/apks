package com.google.android.gms.measurement.internal;

final class zza implements Runnable {
    final String zza;
    final long zzb;
    final b zzc;

    public zza(b bVar, String str, long j) {
        this.zzc = bVar;
        this.zza = str;
        this.zzb = j;
    }

    @Override
    public final void run() {
        b.h(this.zzc, this.zza, this.zzb);
    }
}
