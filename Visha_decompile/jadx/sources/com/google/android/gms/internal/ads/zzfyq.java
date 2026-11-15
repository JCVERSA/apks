package com.google.android.gms.internal.ads;

import java.io.Serializable;

final class zzfyq extends zzfyh implements Serializable {
    final zzfyh zza;

    public zzfyq(zzfyh zzfyhVar) {
        this.zza = zzfyhVar;
    }

    @Override
    public final int compare(Object obj, Object obj2) {
        return this.zza.compare(obj2, obj);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfyq) {
            return this.zza.equals(((zzfyq) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return -this.zza.hashCode();
    }

    public final String toString() {
        return this.zza.toString().concat(".reverse()");
    }
}
