package com.google.android.gms.internal.ads;

import defpackage.v2i;
import java.util.AbstractMap;
import java.util.Objects;

final class zzfyj extends zzfww {
    final zzfyk zza;

    public zzfyj(zzfyk zzfykVar) {
        this.zza = zzfykVar;
    }

    @Override
    public final Object get(int i) {
        zzfyk zzfykVar = this.zza;
        v2i.a(i, zzfykVar.d, "index");
        int i2 = i + i;
        Object obj = zzfykVar.c[i2];
        Objects.requireNonNull(obj);
        Object obj2 = zzfykVar.c[i2 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override
    public final int size() {
        return this.zza.d;
    }

    @Override
    public final boolean zzf() {
        return true;
    }
}
