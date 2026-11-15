package com.google.android.libraries.places.internal;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.Map;

final class zzawa implements Map.Entry, Comparable {
    final zzawg zza;
    private final Comparable zzb;
    private Object zzc;

    zzawa(zzawg zzawgVar, Comparable comparable, Object obj) {
        this.zza = zzawgVar;
        this.zzb = comparable;
        this.zzc = obj;
    }

    private static final boolean zzb(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    @Override
    public final int compareTo(Object obj) {
        return this.zzb.compareTo(((zzawa) obj).zzb);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return zzb(this.zzb, entry.getKey()) && zzb(this.zzc, entry.getValue());
    }

    @Override
    public final Object getKey() {
        return this.zzb;
    }

    @Override
    public final Object getValue() {
        return this.zzc;
    }

    @Override
    public final int hashCode() {
        Comparable comparable = this.zzb;
        int iHashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.zzc;
        return iHashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override
    public final Object setValue(Object obj) {
        this.zza.zzn();
        Object obj2 = this.zzc;
        this.zzc = obj;
        return obj2;
    }

    public final String toString() {
        return String.valueOf(this.zzb) + UrlUtils.EQUAL_MARK + String.valueOf(this.zzc);
    }

    public final Comparable zza() {
        return this.zzb;
    }
}
