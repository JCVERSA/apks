package com.google.android.gms.internal.ads;

import defpackage.v2i;
import java.io.Serializable;
import java.util.Arrays;
import okhttp3.HttpUrl;

public final class zzfzx implements Serializable {
    private final int[] zza;
    private final int zzb;

    private zzfzx(int[] iArr, int i, int i2) {
        this.zza = iArr;
        this.zzb = i2;
    }

    public static zzfzx zzb(int[] iArr) {
        int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
        return new zzfzx(iArrCopyOf, 0, iArrCopyOf.length);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfzx)) {
            return false;
        }
        zzfzx zzfzxVar = (zzfzx) obj;
        int i = this.zzb;
        if (i != zzfzxVar.zzb) {
            return false;
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (zza(i2) != zzfzxVar.zza(i2)) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.zzb; i2++) {
            i = (i * 31) + this.zza[i2];
        }
        return i;
    }

    public final String toString() {
        int i = this.zzb;
        if (i == 0) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb = new StringBuilder(i * 5);
        sb.append('[');
        int[] iArr = this.zza;
        sb.append(iArr[0]);
        for (int i2 = 1; i2 < i; i2++) {
            sb.append(", ");
            sb.append(iArr[i2]);
        }
        sb.append(']');
        return sb.toString();
    }

    public final int zza(int i) {
        v2i.a(i, this.zzb, "index");
        return this.zza[i];
    }
}
