package com.google.android.gms.internal.measurement;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

class zzmb extends AbstractSet {
    private final zzlv zza;

    @Override
    public boolean add(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (contains(entry)) {
            return false;
        }
        this.zza.put((Comparable) entry.getKey(), entry.getValue());
        return true;
    }

    @Override
    public void clear() {
        this.zza.clear();
    }

    @Override
    public boolean contains(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.zza.get(entry.getKey());
        Object value = entry.getValue();
        if (obj2 != value) {
            return obj2 != null && obj2.equals(value);
        }
        return true;
    }

    @Override
    public Iterator iterator() {
        return new zzmc(this.zza);
    }

    @Override
    public boolean remove(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (!contains(entry)) {
            return false;
        }
        this.zza.remove(entry.getKey());
        return true;
    }

    @Override
    public int size() {
        return this.zza.size();
    }

    private zzmb(zzlv zzlvVar) {
        this.zza = zzlvVar;
    }
}
