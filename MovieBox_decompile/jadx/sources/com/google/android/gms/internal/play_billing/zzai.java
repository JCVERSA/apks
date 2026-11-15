package com.google.android.gms.internal.play_billing;

import java.io.Serializable;
import java.util.Map;
import java.util.Set;

public abstract class zzai implements Map, Serializable {
    private transient zzaj zza;
    private transient zzaj zzb;
    private transient zzac zzc;

    zzai() {
    }

    @Override
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override
    public final boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    @Override
    public abstract Object get(Object obj);

    @Override
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override
    public final int hashCode() {
        return zzar.zza(entrySet());
    }

    @Override
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public final Set keySet() {
        zzaj zzajVar = this.zzb;
        if (zzajVar != null) {
            return zzajVar;
        }
        zzaj zzajVarZzd = zzd();
        this.zzb = zzajVarZzd;
        return zzajVarZzd;
    }

    @Override
    @Deprecated
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        int size = size();
        if (size < 0) {
            throw new IllegalArgumentException("size cannot be negative but was: " + size);
        }
        StringBuilder sb2 = new StringBuilder((int) Math.min(((long) size) * 8, 1073741824L));
        sb2.append('{');
        boolean z10 = true;
        for (Map.Entry entry : entrySet()) {
            if (!z10) {
                sb2.append(", ");
            }
            sb2.append(entry.getKey());
            sb2.append('=');
            sb2.append(entry.getValue());
            z10 = false;
        }
        sb2.append('}');
        return sb2.toString();
    }

    abstract zzac zza();

    @Override
    public final zzac values() {
        zzac zzacVar = this.zzc;
        if (zzacVar != null) {
            return zzacVar;
        }
        zzac zzacVarZza = zza();
        this.zzc = zzacVarZza;
        return zzacVarZza;
    }

    abstract zzaj zzc();

    abstract zzaj zzd();

    @Override
    public final zzaj entrySet() {
        zzaj zzajVar = this.zza;
        if (zzajVar != null) {
            return zzajVar;
        }
        zzaj zzajVarZzc = zzc();
        this.zza = zzajVarZzc;
        return zzajVarZzc;
    }
}
