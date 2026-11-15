package com.google.android.gms.measurement.internal;

import java.util.Map;

final class zzhq implements com.google.android.gms.internal.measurement.zzo {
    private final String zza;
    private final zzhl zzb;

    zzhq(zzhl zzhlVar, String str) {
        this.zza = str;
        this.zzb = zzhlVar;
    }

    @Override
    public final String zza(String str) {
        Map map = (Map) this.zzb.zzc.get(this.zza);
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        return (String) map.get(str);
    }
}
