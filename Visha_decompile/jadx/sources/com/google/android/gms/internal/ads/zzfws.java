package com.google.android.gms.internal.ads;

import defpackage.q3i;
import java.io.Serializable;

final class zzfws extends q3i implements Serializable {
    final Object zza;
    final Object zzb;

    public zzfws(Object obj, Object obj2) {
        this.zza = obj;
        this.zzb = obj2;
    }

    @Override
    public final Object getKey() {
        return this.zza;
    }

    @Override
    public final Object getValue() {
        return this.zzb;
    }

    @Override
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }
}
