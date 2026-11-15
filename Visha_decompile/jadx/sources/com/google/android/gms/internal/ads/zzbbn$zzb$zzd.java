package com.google.android.gms.internal.ads;

import defpackage.psi;
import defpackage.tsi;
import defpackage.usi;

public enum zzbbn$zzb$zzd implements psi {
    UNSPECIFIED(0),
    IN_MEMORY(1);

    public static final int zzc = 0;
    public static final int zzd = 1;
    private static final tsi zze = new tsi() {
    };
    private final int zzg;

    zzbbn$zzb$zzd(int i) {
        this.zzg = i;
    }

    public static zzbbn$zzb$zzd zzb(int i) {
        if (i == 0) {
            return UNSPECIFIED;
        }
        if (i != 1) {
            return null;
        }
        return IN_MEMORY;
    }

    public static tsi zzd() {
        return zze;
    }

    public static usi zze() {
        return b2.a;
    }

    @Override
    public final String toString() {
        return Integer.toString(zza());
    }

    public final int zza() {
        return this.zzg;
    }
}
