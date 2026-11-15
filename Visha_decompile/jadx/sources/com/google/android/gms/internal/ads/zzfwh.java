package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Comparator;

final class zzfwh extends zzfyh implements Serializable {
    final Comparator zza;

    public zzfwh(Comparator comparator) {
        this.zza = comparator;
    }

    @Override
    public final int compare(Object obj, Object obj2) {
        return this.zza.compare(obj, obj2);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfwh) {
            return this.zza.equals(((zzfwh) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final String toString() {
        return this.zza.toString();
    }
}
