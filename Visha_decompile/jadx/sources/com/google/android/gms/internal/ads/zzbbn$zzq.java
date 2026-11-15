package com.google.android.gms.internal.ads;

import defpackage.psi;
import defpackage.tsi;
import defpackage.usi;

public enum zzbbn$zzq implements psi {
    ENUM_FALSE(0),
    ENUM_TRUE(1),
    ENUM_UNKNOWN(1000);

    public static final int zzd = 0;
    public static final int zze = 1;
    public static final int zzf = 1000;
    private static final tsi zzg = new tsi() {
    };
    private final int zzi;

    zzbbn$zzq(int i) {
        this.zzi = i;
    }

    public static zzbbn$zzq zzb(int i) {
        if (i == 0) {
            return ENUM_FALSE;
        }
        if (i == 1) {
            return ENUM_TRUE;
        }
        if (i != 1000) {
            return null;
        }
        return ENUM_UNKNOWN;
    }

    public static tsi zzd() {
        return zzg;
    }

    public static usi zze() {
        return h3.a;
    }

    @Override
    public final String toString() {
        return Integer.toString(zza());
    }

    public final int zza() {
        return this.zzi;
    }
}
