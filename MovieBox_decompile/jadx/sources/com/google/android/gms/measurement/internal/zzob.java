package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.Map;

final class zzob implements zzgu {
    private final String zza;
    private final zzoj zzb;
    private final zznv zzc;

    zzob(zznv zznvVar, String str, zzoj zzojVar) {
        this.zza = str;
        this.zzb = zzojVar;
        this.zzc = zznvVar;
    }

    @Override
    public final void zza(String str, int i10, Throwable th2, byte[] bArr, Map<String, List<String>> map) {
        this.zzc.zza(this.zza, i10, th2, bArr, this.zzb);
    }
}
