package com.bytedance.sdk.component.HiB.EjP.TKC.Sj;

import java.lang.ref.SoftReference;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

public class TKC<K, V> {
    private final LinkedHashMap<K, SoftReference<V>> Sj = new LinkedHashMap<>(0, 0.75f, true);
    private int sP;

    public TKC(int i10) {
        this.sP = i10;
    }

    public synchronized V Sj(K k10) {
        V v10 = null;
        if (k10 == null) {
            return null;
        }
        if (this.sP <= 0) {
            return null;
        }
        SoftReference<V> softReference = this.Sj.get(k10);
        if (softReference != null) {
            v10 = softReference.get();
            if (v10 != null) {
                return v10;
            }
            this.Sj.remove(k10);
        }
        return v10;
    }

    public final synchronized String toString() {
        return String.format("LruCache[maxCount=%d,size=%d]", Integer.valueOf(this.sP), Integer.valueOf(this.Sj.size()));
    }

    public synchronized void Sj(K k10, V v10) {
        if (this.sP <= 0) {
            return;
        }
        if (k10 == null || v10 == null) {
            return;
        }
        this.Sj.put(k10, new SoftReference<>(v10));
        int size = this.Sj.size();
        int i10 = this.sP;
        if (size > i10) {
            Sj((int) (((double) i10) * 0.7d));
        }
    }

    public synchronized void Sj(int i10) {
        int size = this.Sj.size() - i10;
        if (size > 0) {
            Iterator<Map.Entry<K, SoftReference<V>>> it = this.Sj.entrySet().iterator();
            for (int i11 = 0; i11 < size; i11++) {
                it.next();
                it.remove();
            }
        }
        if (i10 == 0) {
            return;
        }
        Iterator<Map.Entry<K, SoftReference<V>>> it2 = this.Sj.entrySet().iterator();
        while (it2.hasNext()) {
            if (it2.next().getValue().get() == null) {
                it2.remove();
            }
        }
    }
}
