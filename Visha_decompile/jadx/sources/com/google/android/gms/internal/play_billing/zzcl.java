package com.google.android.gms.internal.play_billing;

import defpackage.xvf;
import java.util.Iterator;
import java.util.Map;

final class zzcl extends zzcf {
    public final transient zzcd b;
    public final transient Object[] c;
    public final transient int d;

    public zzcl(zzcd zzcdVar, Object[] objArr, int i, int i2) {
        this.b = zzcdVar;
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
        return zzd().zza(objArr, 0);
    }

    @Override
    public final xvf iterator() {
        return zzd().listIterator(0);
    }

    @Override
    public final boolean zzf() {
        throw null;
    }

    @Override
    public final zzca zzi() {
        return new zzck(this);
    }
}
