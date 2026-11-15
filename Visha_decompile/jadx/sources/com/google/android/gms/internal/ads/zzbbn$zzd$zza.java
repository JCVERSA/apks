package com.google.android.gms.internal.ads;

import defpackage.psi;
import defpackage.tsi;
import defpackage.usi;

public enum zzbbn$zzd$zza implements psi {
    AD_FORMAT_TYPE_UNSPECIFIED(0),
    BANNER(1),
    INTERSTITIAL(2),
    NATIVE_EXPRESS(3),
    NATIVE_CONTENT(4),
    NATIVE_APP_INSTALL(5),
    NATIVE_CUSTOM_TEMPLATE(6),
    DFP_BANNER(7),
    DFP_INTERSTITIAL(8),
    REWARD_BASED_VIDEO_AD(9),
    BANNER_SEARCH_ADS(10);

    public static final int zzl = 0;
    public static final int zzm = 1;
    public static final int zzn = 2;
    public static final int zzo = 3;
    public static final int zzp = 4;
    public static final int zzq = 5;
    public static final int zzr = 6;
    public static final int zzs = 7;
    public static final int zzt = 8;
    public static final int zzu = 9;
    public static final int zzv = 10;
    private static final tsi zzw = new tsi() {
    };
    private final int zzy;

    zzbbn$zzd$zza(int i) {
        this.zzy = i;
    }

    public static zzbbn$zzd$zza zzb(int i) {
        switch (i) {
            case 0:
                return AD_FORMAT_TYPE_UNSPECIFIED;
            case 1:
                return BANNER;
            case 2:
                return INTERSTITIAL;
            case 3:
                return NATIVE_EXPRESS;
            case 4:
                return NATIVE_CONTENT;
            case 5:
                return NATIVE_APP_INSTALL;
            case 6:
                return NATIVE_CUSTOM_TEMPLATE;
            case 7:
                return DFP_BANNER;
            case 8:
                return DFP_INTERSTITIAL;
            case 9:
                return REWARD_BASED_VIDEO_AD;
            case 10:
                return BANNER_SEARCH_ADS;
            default:
                return null;
        }
    }

    public static tsi zzd() {
        return zzw;
    }

    public static usi zze() {
        return t2.a;
    }

    @Override
    public final String toString() {
        return Integer.toString(zza());
    }

    public final int zza() {
        return this.zzy;
    }
}
