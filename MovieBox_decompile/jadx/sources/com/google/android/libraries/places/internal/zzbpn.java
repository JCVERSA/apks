package com.google.android.libraries.places.internal;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;

final class zzbpn {
    final int zza;
    final int zzb;
    final int zzc;
    final AtomicInteger zzd;

    zzbpn(float f10, float f11) {
        AtomicInteger atomicInteger = new AtomicInteger();
        this.zzd = atomicInteger;
        this.zzc = (int) (f11 * 1000.0f);
        int i10 = (int) (f10 * 1000.0f);
        this.zza = i10;
        this.zzb = i10 / 2;
        atomicInteger.set(i10);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbpn)) {
            return false;
        }
        zzbpn zzbpnVar = (zzbpn) obj;
        return this.zza == zzbpnVar.zza && this.zzc == zzbpnVar.zzc;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zza), Integer.valueOf(this.zzc)});
    }

    final boolean zza() {
        return this.zzd.get() > this.zzb;
    }

    final boolean zzb() {
        int i10;
        int i11;
        do {
            i10 = this.zzd.get();
            if (i10 == 0) {
                return false;
            }
            i11 = i10 - 1000;
        } while (!this.zzd.compareAndSet(i10, Math.max(i11, 0)));
        return i11 > this.zzb;
    }
}
