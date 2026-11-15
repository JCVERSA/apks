package com.google.android.gms.internal.ads;

import defpackage.x5i;
import java.util.Iterator;
import java.util.Map;

final class zzfyk extends zzfxb {
    public final transient zzfwz b;
    public final transient Object[] c;
    public final transient int d;

    public zzfyk(zzfwz zzfwzVar, Object[] objArr, int i, int i2) {
        this.b = zzfwzVar;
        this.c = objArr;
        this.d = i2;
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.b.get(key))) {
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
        return this.d;
    }

    @Override
    public final int zza(Object[] objArr, int i) {
        return zzd().zza(objArr, i);
    }

    @Override
    public final x5i iterator() {
        return zzd().listIterator(0);
    }

    @Override
    public final boolean zzf() {
        return true;
    }

    @Override
    public final zzfww zzi() {
        return new zzfyj(this);
    }
}
