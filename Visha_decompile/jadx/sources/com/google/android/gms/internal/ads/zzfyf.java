package com.google.android.gms.internal.ads;

import java.io.Serializable;

final class zzfyf extends zzfyh implements Serializable {
    static final zzfyf zza = new zzfyf();

    private zzfyf() {
    }

    @Override
    public final int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        comparable2.getClass();
        return comparable.compareTo(comparable2);
    }

    public final String toString() {
        return "Ordering.natural()";
    }

    @Override
    public final zzfyh zza() {
        return zzfyp.zza;
    }
}
