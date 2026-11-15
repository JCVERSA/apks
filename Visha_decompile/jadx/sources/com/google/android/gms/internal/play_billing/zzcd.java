package com.google.android.gms.internal.play_billing;

import defpackage.laf;
import defpackage.stf;
import java.io.Serializable;
import java.util.Map;
import java.util.Set;

public abstract class zzcd implements Map, Serializable {
    private transient zzcf zza;
    private transient zzcf zzb;
    private transient zzbx zzc;

    public static zzcd zzc(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        laf.a("com.android.vending.billing.PURCHASES_UPDATED", obj2);
        laf.a("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED", obj4);
        laf.a("com.android.vending.billing.ALTERNATIVE_BILLING", obj6);
        return zzco.zzg(3, new Object[]{"com.android.vending.billing.PURCHASES_UPDATED", obj2, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED", obj4, "com.android.vending.billing.ALTERNATIVE_BILLING", obj6}, null);
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
        return stf.a(entrySet());
    }

    @Override
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public final Set keySet() {
        zzcf zzcfVar = this.zzb;
        if (zzcfVar != null) {
            return zzcfVar;
        }
        zzcf zzcfVarZze = zze();
        this.zzb = zzcfVarZze;
        return zzcfVarZze;
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
        StringBuilder sb = new StringBuilder((int) Math.min(((long) size) * 8, 1073741824L));
        sb.append('{');
        boolean z = true;
        for (Map.Entry entry : entrySet()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
            z = false;
        }
        sb.append('}');
        return sb.toString();
    }

    public abstract zzbx zza();

    @Override
    public final zzbx values() {
        zzbx zzbxVar = this.zzc;
        if (zzbxVar != null) {
            return zzbxVar;
        }
        zzbx zzbxVarZza = zza();
        this.zzc = zzbxVarZza;
        return zzbxVarZza;
    }

    public abstract zzcf zzd();

    public abstract zzcf zze();

    @Override
    public final zzcf entrySet() {
        zzcf zzcfVar = this.zza;
        if (zzcfVar != null) {
            return zzcfVar;
        }
        zzcf zzcfVarZzd = zzd();
        this.zza = zzcfVarZzd;
        return zzcfVarZzd;
    }
}
