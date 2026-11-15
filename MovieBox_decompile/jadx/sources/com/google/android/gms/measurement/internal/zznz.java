package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.Map;

final class zznz implements zzgu {
    private final String zza;
    private final List zzb;
    private final zznv zzc;

    zznz(zznv zznvVar, String str, List list) {
        this.zza = str;
        this.zzb = list;
        this.zzc = zznvVar;
    }

    @Override
    public final void zza(String str, int i10, Throwable th2, byte[] bArr, Map<String, List<String>> map) {
        this.zzc.zza(true, i10, th2, bArr, this.zza, this.zzb);
    }
}
