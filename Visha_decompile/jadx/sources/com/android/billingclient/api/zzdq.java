package com.android.billingclient.api;

final class zzdq {
    private static boolean zza = false;
    private static long zzb = 3000;
    private static long zzc = 30000;
    private static int zzd = 3;
    private static volatile boolean zze = true;

    public static int zza() {
        return zzd;
    }

    public static long zzb() {
        return zzc;
    }

    public static long zzc() {
        return zzb;
    }

    public static void zzd(long j) {
        zzc = j;
    }

    public static void zze(int i) {
        zzd = i;
    }

    public static void zzf(long j) {
        zzb = j;
    }

    public static void zzg(boolean z) {
        zza = z;
    }

    public static void zzh(boolean z) {
        zze = z;
    }

    public static boolean zzi() {
        return zze;
    }

    public static boolean zzj() {
        return zza;
    }
}
