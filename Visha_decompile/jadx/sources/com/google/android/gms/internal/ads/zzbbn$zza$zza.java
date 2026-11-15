package com.google.android.gms.internal.ads;

import defpackage.psi;
import defpackage.tsi;
import defpackage.usi;

public enum zzbbn$zza$zza implements psi {
    AD_INITIATER_UNSPECIFIED(0),
    BANNER(1),
    DFP_BANNER(2),
    INTERSTITIAL(3),
    DFP_INTERSTITIAL(4),
    NATIVE_EXPRESS(5),
    AD_LOADER(6),
    REWARD_BASED_VIDEO_AD(7),
    BANNER_SEARCH_ADS(8),
    GOOGLE_MOBILE_ADS_SDK_ADAPTER(9),
    APP_OPEN(10),
    REWARDED_INTERSTITIAL(11);

    public static final int zzm = 0;
    public static final int zzn = 1;
    public static final int zzo = 2;
    public static final int zzp = 3;
    public static final int zzq = 4;
    public static final int zzr = 5;
    public static final int zzs = 6;
    public static final int zzt = 7;
    public static final int zzu = 8;
    public static final int zzv = 9;
    public static final int zzw = 10;
    public static final int zzx = 11;
    private static final tsi zzy = new tsi() {
    };
    private final int zzA;

    zzbbn$zza$zza(int i) {
        this.zzA = i;
    }

    public static zzbbn$zza$zza zzb(int i) {
        switch (i) {
            case 0:
                return AD_INITIATER_UNSPECIFIED;
            case 1:
                return BANNER;
            case 2:
                return DFP_BANNER;
            case 3:
                return INTERSTITIAL;
            case 4:
                return DFP_INTERSTITIAL;
            case 5:
                return NATIVE_EXPRESS;
            case 6:
                return AD_LOADER;
            case 7:
                return REWARD_BASED_VIDEO_AD;
            case 8:
                return BANNER_SEARCH_ADS;
            case 9:
                return GOOGLE_MOBILE_ADS_SDK_ADAPTER;
            case 10:
                return APP_OPEN;
            case 11:
                return REWARDED_INTERSTITIAL;
            default:
                return null;
        }
    }

    public static tsi zzd() {
        return zzy;
    }

    public static usi zze() {
        return p0.a;
    }

    @Override
    public final String toString() {
        return Integer.toString(zza());
    }

    public final int zza() {
        return this.zzA;
    }
}
