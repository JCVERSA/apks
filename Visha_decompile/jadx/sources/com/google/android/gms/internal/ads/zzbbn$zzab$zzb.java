package com.google.android.gms.internal.ads;

import defpackage.psi;
import defpackage.tsi;
import defpackage.usi;

public enum zzbbn$zzab$zzb implements psi {
    CELLULAR_NETWORK_TYPE_UNSPECIFIED(0),
    TWO_G(1),
    THREE_G(2),
    LTE(4);

    public static final int zze = 0;
    public static final int zzf = 1;
    public static final int zzg = 2;
    public static final int zzh = 4;
    private static final tsi zzi = new tsi() {
    };
    private final int zzk;

    zzbbn$zzab$zzb(int i) {
        this.zzk = i;
    }

    public static zzbbn$zzab$zzb zzb(int i) {
        if (i == 0) {
            return CELLULAR_NETWORK_TYPE_UNSPECIFIED;
        }
        if (i == 1) {
            return TWO_G;
        }
        if (i == 2) {
            return THREE_G;
        }
        if (i != 4) {
            return null;
        }
        return LTE;
    }

    public static tsi zzd() {
        return zzi;
    }

    public static usi zze() {
        return t0.a;
    }

    @Override
    public final String toString() {
        return Integer.toString(zza());
    }

    public final int zza() {
        return this.zzk;
    }
}
