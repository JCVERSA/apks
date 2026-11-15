package com.google.android.libraries.places.internal;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class zzatf {
    static final zzatf zza = new zzatf(true);
    private static volatile boolean zzb = false;
    private final Map zzc;

    zzatf() {
        this.zzc = new HashMap();
    }

    public static zzatf zza() {
        return zza;
    }

    public final zzats zzb(zzavf zzavfVar, int i10) {
        return (zzats) this.zzc.get(new zzate(zzavfVar, i10));
    }

    zzatf(boolean z10) {
        this.zzc = Collections.emptyMap();
    }
}
