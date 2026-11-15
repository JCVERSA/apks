package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;

final class zziw implements Callable<byte[]> {
    private final zzbf zza;
    private final String zzb;
    private final zzic zzc;

    zziw(zzic zzicVar, zzbf zzbfVar, String str) {
        this.zza = zzbfVar;
        this.zzb = str;
        this.zzc = zzicVar;
    }

    @Override
    public final byte[] call() throws Exception {
        this.zzc.zza.zzr();
        return this.zzc.zza.zzm().zza(this.zza, this.zzb);
    }
}
