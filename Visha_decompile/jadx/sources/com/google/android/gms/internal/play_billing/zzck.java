package com.google.android.gms.internal.play_billing;

import defpackage.y4f;
import java.util.AbstractMap;
import java.util.Objects;

final class zzck extends zzca {
    final zzcl zza;

    public zzck(zzcl zzclVar) {
        Objects.requireNonNull(zzclVar);
        this.zza = zzclVar;
    }

    @Override
    public final Object get(int i) {
        zzcl zzclVar = this.zza;
        y4f.a(i, zzclVar.d, "index");
        int i2 = i + i;
        Object obj = zzclVar.c[i2];
        Objects.requireNonNull(obj);
        Object obj2 = zzclVar.c[i2 + 1];
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
