package com.google.android.gms.internal.ads;

import defpackage.psi;
import defpackage.tsi;
import defpackage.usi;

public enum zzbbn$zzab$zzc implements psi {
    NETWORKTYPE_UNSPECIFIED(0),
    CELL(1),
    WIFI(2);

    public static final int zzd = 0;
    public static final int zze = 1;
    public static final int zzf = 2;
    private static final tsi zzg = new tsi() {
    };
    private final int zzi;

    zzbbn$zzab$zzc(int i) {
        this.zzi = i;
    }

    public static zzbbn$zzab$zzc zzb(int i) {
        if (i == 0) {
            return NETWORKTYPE_UNSPECIFIED;
        }
        if (i == 1) {
            return CELL;
        }
        if (i != 2) {
            return null;
        }
        return WIFI;
    }

    public static tsi zzd() {
        return zzg;
    }

    public static usi zze() {
        return u0.a;
    }

    @Override
    public final String toString() {
        return Integer.toString(zza());
    }

    public final int zza() {
        return this.zzi;
    }
}
