package com.yandex.mobile.ads.impl;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

abstract class eu0<K, V> extends wx1.c<Map.Entry<K, V>> {
    @Override
    public final void clear() {
        o.a.this.clear();
    }

    @Override
    public final boolean isEmpty() {
        return o.a.this.isEmpty();
    }

    @Override
    public final boolean removeAll(Collection<?> collection) {
        try {
            collection.getClass();
            return super.removeAll(collection);
        } catch (UnsupportedOperationException unused) {
            Iterator<?> it = collection.iterator();
            boolean zRemove = false;
            while (it.hasNext()) {
                zRemove |= ((o.a.C0325a) this).remove(it.next());
            }
            return zRemove;
        }
    }

    @Override
    public final boolean retainAll(Collection<?> collection) {
        int i;
        try {
            collection.getClass();
            return super.retainAll(collection);
        } catch (UnsupportedOperationException unused) {
            int size = collection.size();
            if (size < 3) {
                pq.a(size, "expectedSize");
                i = size + 1;
            } else {
                i = size < 1073741824 ? (int) ((size / 0.75f) + 1.0f) : Integer.MAX_VALUE;
            }
            HashSet hashSet = new HashSet(i);
            for (Object obj : collection) {
                Set<Map.Entry<K, Collection<V>>> setEntrySet = o.a.this.d.entrySet();
                setEntrySet.getClass();
                try {
                    if (setEntrySet.contains(obj) && (obj instanceof Map.Entry)) {
                        hashSet.add(((Map.Entry) obj).getKey());
                    }
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return o.a.this.keySet().retainAll(hashSet);
        }
    }

    @Override
    public final int size() {
        return o.a.this.d.size();
    }
}
