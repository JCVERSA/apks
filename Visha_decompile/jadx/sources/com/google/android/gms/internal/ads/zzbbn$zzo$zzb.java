package com.google.android.gms.internal.ads;

import defpackage.psi;
import defpackage.tsi;
import defpackage.usi;

public enum zzbbn$zzo$zzb implements psi {
    PLATFORM_UNSPECIFIED(0),
    IOS(1),
    ANDROID(2);

    public static final int zzd = 0;
    public static final int zze = 1;
    public static final int zzf = 2;
    private static final tsi zzg = new tsi() {
    };
    private final int zzi;

    zzbbn$zzo$zzb(int i) {
        this.zzi = i;
    }

    public static zzbbn$zzo$zzb zzb(int i) {
        if (i == 0) {
            return PLATFORM_UNSPECIFIED;
        }
        if (i == 1) {
            return IOS;
        }
        if (i != 2) {
            return null;
        }
        return ANDROID;
    }

    public static tsi zzd() {
        return zzg;
    }

    public static usi zze() {
        return f3.a;
    }

    @Override
    public final String toString() {
        return Integer.toString(zza());
    }

    public final int zza() {
        return this.zzi;
    }
}
