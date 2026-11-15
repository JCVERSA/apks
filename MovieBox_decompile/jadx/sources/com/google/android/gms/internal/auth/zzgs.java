package com.google.android.gms.internal.auth;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

final class zzgs extends AbstractSet {
    final zzgu zza;

    zzgs(zzgu zzguVar, zzgr zzgrVar) {
        this.zza = zzguVar;
    }

    @Override
    public final boolean add(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (contains(entry)) {
            return false;
        }
        this.zza.put((Comparable) entry.getKey(), entry.getValue());
        return true;
    }

    @Override
    public final void clear() {
        this.zza.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.zza.get(entry.getKey());
        Object value = entry.getValue();
        if (obj2 != value) {
            return obj2 != null && obj2.equals(value);
        }
        return true;
    }

    @Override
    public final Iterator iterator() {
        return new zzgq(this.zza, null);
    }

    @Override
    public final boolean remove(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (!contains(entry)) {
            return false;
        }
        this.zza.remove(entry.getKey());
        return true;
    }

    @Override
    public final int size() {
        return this.zza.size();
    }
}
