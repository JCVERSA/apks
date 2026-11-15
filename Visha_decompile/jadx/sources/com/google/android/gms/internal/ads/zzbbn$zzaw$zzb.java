package com.google.android.gms.internal.ads;

import defpackage.psi;
import defpackage.tsi;
import defpackage.usi;

public enum zzbbn$zzaw$zzb implements psi {
    VIDEO_ERROR_CODE_UNSPECIFIED(0),
    OPENGL_RENDERING_FAILED(1),
    CACHE_LOAD_FAILED(2),
    ANDROID_TARGET_API_TOO_LOW(3);

    public static final int zze = 0;
    public static final int zzf = 1;
    public static final int zzg = 2;
    public static final int zzh = 3;
    private static final tsi zzi = new tsi() {
    };
    private final int zzk;

    zzbbn$zzaw$zzb(int i) {
        this.zzk = i;
    }

    public static zzbbn$zzaw$zzb zzb(int i) {
        if (i == 0) {
            return VIDEO_ERROR_CODE_UNSPECIFIED;
        }
        if (i == 1) {
            return OPENGL_RENDERING_FAILED;
        }
        if (i == 2) {
            return CACHE_LOAD_FAILED;
        }
        if (i != 3) {
            return null;
        }
        return ANDROID_TARGET_API_TOO_LOW;
    }

    public static tsi zzd() {
        return zzi;
    }

    public static usi zze() {
        return u1.a;
    }

    @Override
    public final String toString() {
        return Integer.toString(zza());
    }

    public final int zza() {
        return this.zzk;
    }
}
