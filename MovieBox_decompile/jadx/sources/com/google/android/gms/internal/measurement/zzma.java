package com.google.android.gms.internal.measurement;

import java.util.Iterator;

final class zzma extends zzmb {
    private final zzlv zza;

    @Override
    public final Iterator iterator() {
        return new zzlx(this.zza);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private zzma(zzlv zzlvVar) {
        super(zzlvVar);
        this.zza = zzlvVar;
    }
}
