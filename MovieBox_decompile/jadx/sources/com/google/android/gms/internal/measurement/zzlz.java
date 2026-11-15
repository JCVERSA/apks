package com.google.android.gms.internal.measurement;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.Map;

final class zzlz implements Comparable, Map.Entry {
    private final Comparable zza;
    private Object zzb;
    private final zzlv zzc;

    zzlz(zzlv zzlvVar, Map.Entry entry) {
        this(zzlvVar, (Comparable) entry.getKey(), entry.getValue());
    }

    private static boolean zza(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    @Override
    public final int compareTo(Object obj) {
        return ((Comparable) getKey()).compareTo((Comparable) ((zzlz) obj).getKey());
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
        return zza(this.zza, entry.getKey()) && zza(this.zzb, entry.getValue());
    }

    @Override
    public final Object getKey() {
        return this.zza;
    }

    @Override
    public final Object getValue() {
        return this.zzb;
    }

    @Override
    public final int hashCode() {
        Comparable comparable = this.zza;
        int iHashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.zzb;
        return iHashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override
    public final Object setValue(Object obj) {
        this.zzc.zzg();
        Object obj2 = this.zzb;
        this.zzb = obj;
        return obj2;
    }

    public final String toString() {
        return String.valueOf(this.zza) + UrlUtils.EQUAL_MARK + String.valueOf(this.zzb);
    }

    zzlz(zzlv zzlvVar, Comparable comparable, Object obj) {
        this.zzc = zzlvVar;
        this.zza = comparable;
        this.zzb = obj;
    }
}
