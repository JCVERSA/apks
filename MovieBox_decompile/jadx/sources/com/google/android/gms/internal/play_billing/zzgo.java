package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import java.util.List;

final class zzgo {
    public static final int zza = 0;
    private static final Class zzb;
    private static final zzhd zzc;
    private static final zzhd zzd;

    static {
        Class<?> cls;
        Class<?> cls2;
        zzhd zzhdVar = null;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        zzb = cls;
        try {
            cls2 = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused2) {
            cls2 = null;
        }
        if (cls2 != null) {
            try {
                zzhdVar = (zzhd) cls2.getConstructor(null).newInstance(null);
            } catch (Throwable unused3) {
            }
        }
        zzc = zzhdVar;
        zzd = new zzhf();
    }

    public static void zzA(int i10, List list, zzhv zzhvVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhvVar.zzz(i10, list, z10);
    }

    public static void zzB(int i10, List list, zzhv zzhvVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhvVar.zzB(i10, list, z10);
    }

    public static void zzC(int i10, List list, zzhv zzhvVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhvVar.zzD(i10, list, z10);
    }

    public static void zzD(int i10, List list, zzhv zzhvVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhvVar.zzI(i10, list, z10);
    }

    public static void zzE(int i10, List list, zzhv zzhvVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhvVar.zzK(i10, list, z10);
    }

    static boolean zzF(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    static int zza(List list) {
        int iZzu;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzey) {
            zzey zzeyVar = (zzey) list;
            iZzu = 0;
            while (i10 < size) {
                iZzu += zzee.zzu(zzeyVar.zze(i10));
                i10++;
            }
        } else {
            iZzu = 0;
            while (i10 < size) {
                iZzu += zzee.zzu(((Integer) list.get(i10)).intValue());
                i10++;
            }
        }
        return iZzu;
    }

    static int zzb(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzee.zzx(i10 << 3) + 4);
    }

    static int zzc(List list) {
        return list.size() * 4;
    }

    static int zzd(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzee.zzx(i10 << 3) + 8);
    }

    static int zze(List list) {
        return list.size() * 8;
    }

    static int zzf(List list) {
        int iZzu;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzey) {
            zzey zzeyVar = (zzey) list;
            iZzu = 0;
            while (i10 < size) {
                iZzu += zzee.zzu(zzeyVar.zze(i10));
                i10++;
            }
        } else {
            iZzu = 0;
            while (i10 < size) {
                iZzu += zzee.zzu(((Integer) list.get(i10)).intValue());
                i10++;
            }
        }
        return iZzu;
    }

    static int zzg(List list) {
        int iZzy;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzfr) {
            zzfr zzfrVar = (zzfr) list;
            iZzy = 0;
            while (i10 < size) {
                iZzy += zzee.zzy(zzfrVar.zze(i10));
                i10++;
            }
        } else {
            iZzy = 0;
            while (i10 < size) {
                iZzy += zzee.zzy(((Long) list.get(i10)).longValue());
                i10++;
            }
        }
        return iZzy;
    }

    static int zzh(int i10, Object obj, zzgm zzgmVar) {
        int i11 = i10 << 3;
        if (!(obj instanceof zzfi)) {
            return zzee.zzx(i11) + zzee.zzv((zzgc) obj, zzgmVar);
        }
        int i12 = zzee.zzb;
        int iZza = ((zzfi) obj).zza();
        return zzee.zzx(i11) + zzee.zzx(iZza) + iZza;
    }

    static int zzi(List list) {
        int iZzx;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzey) {
            zzey zzeyVar = (zzey) list;
            iZzx = 0;
            while (i10 < size) {
                int iZze = zzeyVar.zze(i10);
                iZzx += zzee.zzx((iZze >> 31) ^ (iZze + iZze));
                i10++;
            }
        } else {
            iZzx = 0;
            while (i10 < size) {
                int iIntValue = ((Integer) list.get(i10)).intValue();
                iZzx += zzee.zzx((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i10++;
            }
        }
        return iZzx;
    }

    static int zzj(List list) {
        int iZzy;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzfr) {
            zzfr zzfrVar = (zzfr) list;
            iZzy = 0;
            while (i10 < size) {
                long jZze = zzfrVar.zze(i10);
                iZzy += zzee.zzy((jZze >> 63) ^ (jZze + jZze));
                i10++;
            }
        } else {
            iZzy = 0;
            while (i10 < size) {
                long jLongValue = ((Long) list.get(i10)).longValue();
                iZzy += zzee.zzy((jLongValue >> 63) ^ (jLongValue + jLongValue));
                i10++;
            }
        }
        return iZzy;
    }

    static int zzk(List list) {
        int iZzx;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzey) {
            zzey zzeyVar = (zzey) list;
            iZzx = 0;
            while (i10 < size) {
                iZzx += zzee.zzx(zzeyVar.zze(i10));
                i10++;
            }
        } else {
            iZzx = 0;
            while (i10 < size) {
                iZzx += zzee.zzx(((Integer) list.get(i10)).intValue());
                i10++;
            }
        }
        return iZzx;
    }

    static int zzl(List list) {
        int iZzy;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzfr) {
            zzfr zzfrVar = (zzfr) list;
            iZzy = 0;
            while (i10 < size) {
                iZzy += zzee.zzy(zzfrVar.zze(i10));
                i10++;
            }
        } else {
            iZzy = 0;
            while (i10 < size) {
                iZzy += zzee.zzy(((Long) list.get(i10)).longValue());
                i10++;
            }
        }
        return iZzy;
    }

    public static zzhd zzm() {
        return zzc;
    }

    public static zzhd zzn() {
        return zzd;
    }

    static Object zzo(Object obj, int i10, int i11, Object obj2, zzhd zzhdVar) {
        if (obj2 == null) {
            obj2 = zzhdVar.zzc(obj);
        }
        zzhdVar.zzf(obj2, i10, i11);
        return obj2;
    }

    static void zzp(zzhd zzhdVar, Object obj, Object obj2) {
        zzhdVar.zzh(obj, zzhdVar.zze(zzhdVar.zzd(obj), zzhdVar.zzd(obj2)));
    }

    public static void zzq(Class cls) {
        Class cls2;
        if (!zzex.class.isAssignableFrom(cls) && (cls2 = zzb) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void zzr(int i10, List list, zzhv zzhvVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhvVar.zzc(i10, list, z10);
    }

    public static void zzs(int i10, List list, zzhv zzhvVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhvVar.zzg(i10, list, z10);
    }

    public static void zzt(int i10, List list, zzhv zzhvVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhvVar.zzj(i10, list, z10);
    }

    public static void zzu(int i10, List list, zzhv zzhvVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhvVar.zzl(i10, list, z10);
    }

    public static void zzv(int i10, List list, zzhv zzhvVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhvVar.zzn(i10, list, z10);
    }

    public static void zzw(int i10, List list, zzhv zzhvVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhvVar.zzp(i10, list, z10);
    }

    public static void zzx(int i10, List list, zzhv zzhvVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhvVar.zzs(i10, list, z10);
    }

    public static void zzy(int i10, List list, zzhv zzhvVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhvVar.zzu(i10, list, z10);
    }

    public static void zzz(int i10, List list, zzhv zzhvVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhvVar.zzx(i10, list, z10);
    }
}
