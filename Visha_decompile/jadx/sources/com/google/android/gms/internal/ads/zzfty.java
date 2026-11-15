package com.google.android.gms.internal.ads;

import defpackage.w2i;
import java.io.Serializable;
import java.util.List;

final class zzfty implements Serializable, w2i {
    private final List zza;

    public final boolean equals(Object obj) {
        if (obj instanceof zzfty) {
            return this.zza.equals(((zzfty) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() + 306654252;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Predicates.");
        sb.append("and(");
        boolean z = true;
        for (Object obj : this.zza) {
            if (!z) {
                sb.append(',');
            }
            sb.append(obj);
            z = false;
        }
        sb.append(')');
        return sb.toString();
    }

    @Override
    public final boolean zza(Object obj) {
        int i = 0;
        while (true) {
            List list = this.zza;
            if (i >= list.size()) {
                return true;
            }
            if (!((w2i) list.get(i)).zza(obj)) {
                return false;
            }
            i++;
        }
    }
}
