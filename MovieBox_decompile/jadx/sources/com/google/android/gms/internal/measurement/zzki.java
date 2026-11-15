package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

final class zzki<K> implements Iterator<Map.Entry<K, Object>> {
    private Iterator<Map.Entry<K, Object>> zza;

    public zzki(Iterator<Map.Entry<K, Object>> it) {
        this.zza = it;
    }

    @Override
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override
    public final Object next() {
        Map.Entry<K, Object> next = this.zza.next();
        return next.getValue() instanceof zzkg ? new zzkf(next) : next;
    }

    @Override
    public final void remove() {
        this.zza.remove();
    }
}
