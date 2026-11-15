package com.google.android.gms.internal.ads;

import java.io.Serializable;

final class zzfyp extends zzfyh implements Serializable {
    static final zzfyp zza = new zzfyp();

    private zzfyp() {
    }

    @Override
    public final int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    public final String toString() {
        return "Ordering.natural().reverse()";
    }
}
