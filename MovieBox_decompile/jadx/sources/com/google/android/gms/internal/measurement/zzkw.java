package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public final class zzkw<K, V> extends LinkedHashMap<K, V> {
    private static final zzkw<?, ?> zza;
    private boolean zzb;

    static {
        zzkw<?, ?> zzkwVar = new zzkw<>();
        zza = zzkwVar;
        ((zzkw) zzkwVar).zzb = false;
    }

    private zzkw() {
        this.zzb = true;
    }

    private static int zza(Object obj) {
        if (obj instanceof byte[]) {
            return zzjv.zza((byte[]) obj);
        }
        if (obj instanceof zzjy) {
            throw new UnsupportedOperationException();
        }
        return obj.hashCode();
    }

    private final void zze() {
        if (!this.zzb) {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public final void clear() {
        zze();
        super.clear();
    }

    @Override
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    @Override
    public final boolean equals(Object obj) {
        boolean z10;
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this == map) {
                z10 = true;
            } else {
                if (size() == map.size()) {
                    Iterator<Map.Entry<K, V>> it = entrySet().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            Map.Entry<K, V> next = it.next();
                            if (map.containsKey(next.getKey())) {
                                V value = next.getValue();
                                Object obj2 = map.get(next.getKey());
                                if (!(((value instanceof byte[]) && (obj2 instanceof byte[])) ? Arrays.equals((byte[]) value, (byte[]) obj2) : value.equals(obj2))) {
                                }
                            }
                        } else {
                            z10 = true;
                        }
                    }
                }
                z10 = false;
            }
            if (z10) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final int hashCode() {
        int iZza = 0;
        for (Map.Entry<K, V> entry : entrySet()) {
            iZza += zza(entry.getValue()) ^ zza(entry.getKey());
        }
        return iZza;
    }

    @Override
    public final V put(K k10, V v10) {
        zze();
        zzjv.zza(k10);
        zzjv.zza(v10);
        return (V) super.put(k10, v10);
    }

    @Override
    public final void putAll(Map<? extends K, ? extends V> map) {
        zze();
        for (K k10 : map.keySet()) {
            zzjv.zza(k10);
            zzjv.zza(map.get(k10));
        }
        super.putAll(map);
    }

    @Override
    public final V remove(Object obj) {
        zze();
        return (V) super.remove(obj);
    }

    public final zzkw<K, V> zzb() {
        return isEmpty() ? new zzkw<>() : new zzkw<>(this);
    }

    public final void zzc() {
        this.zzb = false;
    }

    public final boolean zzd() {
        return this.zzb;
    }

    private zzkw(Map<K, V> map) {
        super(map);
        this.zzb = true;
    }

    public static <K, V> zzkw<K, V> zza() {
        return (zzkw<K, V>) zza;
    }

    public final void zza(zzkw<K, V> zzkwVar) {
        zze();
        if (zzkwVar.isEmpty()) {
            return;
        }
        putAll(zzkwVar);
    }
}
