package com.google.android.libraries.places.internal;

import java.util.Iterator;
import java.util.Map;

final class zzoo extends zzob {
    private final transient zzoa zza;
    private final transient Object[] zzb;
    private final transient int zzc;

    zzoo(zzoa zzoaVar, Object[] objArr, int i10, int i11) {
        this.zza = zzoaVar;
        this.zzb = objArr;
        this.zzc = i11;
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.zza.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final Iterator iterator() {
        return zzd().listIterator(0);
    }

    @Override
    public final int size() {
        return this.zzc;
    }

    @Override
    final int zza(Object[] objArr, int i10) {
        return zzd().zza(objArr, i10);
    }

    @Override
    public final zzox iterator() {
        return zzd().listIterator(0);
    }

    @Override
    final boolean zzf() {
        return true;
    }

    @Override
    final zznx zzi() {
        return new zzon(this);
    }
}
