package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

final class zzlw {
    private static final zzmk<?, ?> zza = new zzmm();

    static int zza(int i10, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzjc.zzb(i10, true);
    }

    static int zzb(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzb(list) + (size * zzjc.zzi(i10));
    }

    static int zzc(int i10, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzjc.zzf(i10, 0);
    }

    static int zzd(int i10, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzjc.zzc(i10, 0L);
    }

    static int zze(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zze(list) + (size * zzjc.zzi(i10));
    }

    static int zzf(int i10, List<Long> list, boolean z10) {
        if (list.size() == 0) {
            return 0;
        }
        return zzf(list) + (list.size() * zzjc.zzi(i10));
    }

    static int zzg(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzg(list) + (size * zzjc.zzi(i10));
    }

    static int zzh(int i10, List<Long> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzh(list) + (size * zzjc.zzi(i10));
    }

    static int zzi(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzi(list) + (size * zzjc.zzi(i10));
    }

    static int zzj(int i10, List<Long> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzj(list) + (size * zzjc.zzi(i10));
    }

    public static void zzk(int i10, List<Integer> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzk(i10, list, z10);
    }

    public static void zzl(int i10, List<Long> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzl(i10, list, z10);
    }

    public static void zzm(int i10, List<Integer> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzm(i10, list, z10);
    }

    public static void zzn(int i10, List<Long> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzn(i10, list, z10);
    }

    static int zza(List<?> list) {
        return list.size();
    }

    static int zzc(List<?> list) {
        return list.size() << 2;
    }

    static int zzd(List<?> list) {
        return list.size() << 3;
    }

    static int zza(int i10, List<zzik> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzi = size * zzjc.zzi(i10);
        for (int i11 = 0; i11 < list.size(); i11++) {
            iZzi += zzjc.zzb(list.get(i11));
        }
        return iZzi;
    }

    static int zzb(List<Integer> list) {
        int iZzd;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzjw) {
            zzjw zzjwVar = (zzjw) list;
            iZzd = 0;
            while (i10 < size) {
                iZzd += zzjc.zzd(zzjwVar.zzb(i10));
                i10++;
            }
        } else {
            iZzd = 0;
            while (i10 < size) {
                iZzd += zzjc.zzd(list.get(i10).intValue());
                i10++;
            }
        }
        return iZzd;
    }

    public static void zzc(int i10, List<Integer> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzc(i10, list, z10);
    }

    public static void zzd(int i10, List<Integer> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzd(i10, list, z10);
    }

    static int zze(List<Integer> list) {
        int iZzf;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzjw) {
            zzjw zzjwVar = (zzjw) list;
            iZzf = 0;
            while (i10 < size) {
                iZzf += zzjc.zzf(zzjwVar.zzb(i10));
                i10++;
            }
        } else {
            iZzf = 0;
            while (i10 < size) {
                iZzf += zzjc.zzf(list.get(i10).intValue());
                i10++;
            }
        }
        return iZzf;
    }

    static int zzf(List<Long> list) {
        int iZzd;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkn) {
            zzkn zzknVar = (zzkn) list;
            iZzd = 0;
            while (i10 < size) {
                iZzd += zzjc.zzd(zzknVar.zzb(i10));
                i10++;
            }
        } else {
            iZzd = 0;
            while (i10 < size) {
                iZzd += zzjc.zzd(list.get(i10).longValue());
                i10++;
            }
        }
        return iZzd;
    }

    static int zzg(List<Integer> list) {
        int iZzh;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzjw) {
            zzjw zzjwVar = (zzjw) list;
            iZzh = 0;
            while (i10 < size) {
                iZzh += zzjc.zzh(zzjwVar.zzb(i10));
                i10++;
            }
        } else {
            iZzh = 0;
            while (i10 < size) {
                iZzh += zzjc.zzh(list.get(i10).intValue());
                i10++;
            }
        }
        return iZzh;
    }

    static int zzh(List<Long> list) {
        int iZzf;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkn) {
            zzkn zzknVar = (zzkn) list;
            iZzf = 0;
            while (i10 < size) {
                iZzf += zzjc.zzf(zzknVar.zzb(i10));
                i10++;
            }
        } else {
            iZzf = 0;
            while (i10 < size) {
                iZzf += zzjc.zzf(list.get(i10).longValue());
                i10++;
            }
        }
        return iZzf;
    }

    static int zzi(List<Integer> list) {
        int iZzj;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzjw) {
            zzjw zzjwVar = (zzjw) list;
            iZzj = 0;
            while (i10 < size) {
                iZzj += zzjc.zzj(zzjwVar.zzb(i10));
                i10++;
            }
        } else {
            iZzj = 0;
            while (i10 < size) {
                iZzj += zzjc.zzj(list.get(i10).intValue());
                i10++;
            }
        }
        return iZzj;
    }

    static int zzj(List<Long> list) {
        int iZzg;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkn) {
            zzkn zzknVar = (zzkn) list;
            iZzg = 0;
            while (i10 < size) {
                iZzg += zzjc.zzg(zzknVar.zzb(i10));
                i10++;
            }
        } else {
            iZzg = 0;
            while (i10 < size) {
                iZzg += zzjc.zzg(list.get(i10).longValue());
                i10++;
            }
        }
        return iZzg;
    }

    static int zza(int i10, List<zzlc> list, zzlu<?> zzluVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzb = 0;
        for (int i11 = 0; i11 < size; i11++) {
            iZzb += zzjc.zzb(i10, list.get(i11), zzluVar);
        }
        return iZzb;
    }

    static int zzb(int i10, List<?> list, zzlu<?> zzluVar) {
        int iZza;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzi = zzjc.zzi(i10) * size;
        for (int i11 = 0; i11 < size; i11++) {
            Object obj = list.get(i11);
            if (obj instanceof zzkk) {
                iZza = zzjc.zza((zzkk) obj);
            } else {
                iZza = zzjc.zza((zzlc) obj, zzluVar);
            }
            iZzi += iZza;
        }
        return iZzi;
    }

    public static void zze(int i10, List<Long> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zze(i10, list, z10);
    }

    public static void zzf(int i10, List<Float> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzf(i10, list, z10);
    }

    public static void zzg(int i10, List<Integer> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzg(i10, list, z10);
    }

    public static void zzh(int i10, List<Long> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzh(i10, list, z10);
    }

    public static void zzi(int i10, List<Integer> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzi(i10, list, z10);
    }

    public static void zzj(int i10, List<Long> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzj(i10, list, z10);
    }

    static int zza(int i10, Object obj, zzlu<?> zzluVar) {
        if (obj instanceof zzkk) {
            return zzjc.zzb(i10, (zzkk) obj);
        }
        return zzjc.zzc(i10, (zzlc) obj, zzluVar);
    }

    public static zzmk<?, ?> zza() {
        return zza;
    }

    static <UT, UB> UB zza(Object obj, int i10, List<Integer> list, zzjx zzjxVar, UB ub2, zzmk<UT, UB> zzmkVar) {
        if (zzjxVar == null) {
            return ub2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                Integer num = list.get(i12);
                int iIntValue = num.intValue();
                if (zzjxVar.zza(iIntValue)) {
                    if (i12 != i11) {
                        list.set(i11, num);
                    }
                    i11++;
                } else {
                    ub2 = (UB) zza(obj, i10, iIntValue, ub2, zzmkVar);
                }
            }
            if (i11 != size) {
                list.subList(i11, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = it.next().intValue();
                if (!zzjxVar.zza(iIntValue2)) {
                    ub2 = (UB) zza(obj, i10, iIntValue2, ub2, zzmkVar);
                    it.remove();
                }
            }
        }
        return ub2;
    }

    static int zzb(int i10, List<?> list) {
        int iZzb;
        int iZzb2;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        int iZzi = zzjc.zzi(i10) * size;
        if (list instanceof zzkj) {
            zzkj zzkjVar = (zzkj) list;
            while (i11 < size) {
                Object objZza = zzkjVar.zza(i11);
                if (objZza instanceof zzik) {
                    iZzb2 = zzjc.zzb((zzik) objZza);
                } else {
                    iZzb2 = zzjc.zzb((String) objZza);
                }
                iZzi += iZzb2;
                i11++;
            }
        } else {
            while (i11 < size) {
                Object obj = list.get(i11);
                if (obj instanceof zzik) {
                    iZzb = zzjc.zzb((zzik) obj);
                } else {
                    iZzb = zzjc.zzb((String) obj);
                }
                iZzi += iZzb;
                i11++;
            }
        }
        return iZzi;
    }

    static <UT, UB> UB zza(Object obj, int i10, int i11, UB ub2, zzmk<UT, UB> zzmkVar) {
        if (ub2 == null) {
            ub2 = zzmkVar.zzc(obj);
        }
        zzmkVar.zzb(ub2, i10, i11);
        return ub2;
    }

    public static void zzb(int i10, List<Double> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzb(i10, list, z10);
    }

    static <T, FT extends zzjo<FT>> void zza(zzji<FT> zzjiVar, T t10, T t11) {
        zzjm<T> zzjmVarZza = zzjiVar.zza(t11);
        if (zzjmVarZza.zza.isEmpty()) {
            return;
        }
        zzjiVar.zzb(t10).zza((zzjm) zzjmVarZza);
    }

    public static void zzb(int i10, List<?> list, zznb zznbVar, zzlu<?> zzluVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzb(i10, list, (zzlu) zzluVar);
    }

    public static void zzb(int i10, List<String> list, zznb zznbVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzb(i10, list);
    }

    static <T> void zza(zzkv zzkvVar, T t10, T t11, long j10) {
        zzml.zza(t10, j10, zzkvVar.zza(zzml.zze(t10, j10), zzml.zze(t11, j10)));
    }

    static <T, UT, UB> void zza(zzmk<UT, UB> zzmkVar, T t10, T t11) {
        zzmkVar.zzc(t10, zzmkVar.zza(zzmkVar.zzd(t10), zzmkVar.zzd(t11)));
    }

    public static void zza(Class<?> cls) {
        zzjt.class.isAssignableFrom(cls);
    }

    public static void zza(int i10, List<Boolean> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zza(i10, list, z10);
    }

    public static void zza(int i10, List<zzik> list, zznb zznbVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zza(i10, list);
    }

    public static void zza(int i10, List<?> list, zznb zznbVar, zzlu<?> zzluVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zza(i10, list, (zzlu) zzluVar);
    }

    static boolean zza(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }
}
