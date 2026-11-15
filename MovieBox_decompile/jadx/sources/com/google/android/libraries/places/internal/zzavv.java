package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

final class zzavv {
    public static final int zza = 0;
    private static final Class zzb;
    private static final zzawn zzc;
    private static final zzawn zzd;

    static {
        Class<?> cls;
        Class<?> cls2;
        zzawn zzawnVar = null;
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
                zzawnVar = (zzawn) cls2.getConstructor(null).newInstance(null);
            } catch (Throwable unused3) {
            }
        }
        zzc = zzawnVar;
        zzd = new zzawp();
    }

    public static void zzA(int i10, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzs(i10, list, z10);
    }

    public static void zzB(int i10, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzu(i10, list, z10);
    }

    public static void zzC(int i10, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzy(i10, list, z10);
    }

    public static void zzD(int i10, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzA(i10, list, z10);
    }

    public static void zzE(int i10, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzC(i10, list, z10);
    }

    public static void zzF(int i10, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzE(i10, list, z10);
    }

    public static void zzG(int i10, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzJ(i10, list, z10);
    }

    public static void zzH(int i10, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzL(i10, list, z10);
    }

    static int zza(List list) {
        int iZzC;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzatv) {
            zzatv zzatvVar = (zzatv) list;
            iZzC = 0;
            while (i10 < size) {
                iZzC += zzasx.zzC(zzatvVar.zze(i10));
                i10++;
            }
        } else {
            iZzC = 0;
            while (i10 < size) {
                iZzC += zzasx.zzC(((Integer) list.get(i10)).intValue());
                i10++;
            }
        }
        return iZzC;
    }

    static int zzb(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzasx.zzB(i10 << 3) + 4);
    }

    static int zzc(List list) {
        return list.size() * 4;
    }

    static int zzd(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzasx.zzB(i10 << 3) + 8);
    }

    static int zze(List list) {
        return list.size() * 8;
    }

    static int zzf(List list) {
        int iZzC;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzatv) {
            zzatv zzatvVar = (zzatv) list;
            iZzC = 0;
            while (i10 < size) {
                iZzC += zzasx.zzC(zzatvVar.zze(i10));
                i10++;
            }
        } else {
            iZzC = 0;
            while (i10 < size) {
                iZzC += zzasx.zzC(((Integer) list.get(i10)).intValue());
                i10++;
            }
        }
        return iZzC;
    }

    static int zzg(List list) {
        int iZzC;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzauu) {
            zzauu zzauuVar = (zzauu) list;
            iZzC = 0;
            while (i10 < size) {
                iZzC += zzasx.zzC(zzauuVar.zze(i10));
                i10++;
            }
        } else {
            iZzC = 0;
            while (i10 < size) {
                iZzC += zzasx.zzC(((Long) list.get(i10)).longValue());
                i10++;
            }
        }
        return iZzC;
    }

    static int zzh(int i10, Object obj, zzavt zzavtVar) {
        int i11 = i10 << 3;
        if (!(obj instanceof zzaul)) {
            return zzasx.zzB(i11) + zzasx.zzz((zzavf) obj, zzavtVar);
        }
        int iZzB = zzasx.zzB(i11);
        int iZza = ((zzaul) obj).zza();
        return iZzB + zzasx.zzB(iZza) + iZza;
    }

    static int zzi(List list) {
        int iZzB;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzatv) {
            zzatv zzatvVar = (zzatv) list;
            iZzB = 0;
            while (i10 < size) {
                int iZze = zzatvVar.zze(i10);
                iZzB += zzasx.zzB((iZze >> 31) ^ (iZze + iZze));
                i10++;
            }
        } else {
            iZzB = 0;
            while (i10 < size) {
                int iIntValue = ((Integer) list.get(i10)).intValue();
                iZzB += zzasx.zzB((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i10++;
            }
        }
        return iZzB;
    }

    static int zzj(List list) {
        int iZzC;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzauu) {
            zzauu zzauuVar = (zzauu) list;
            iZzC = 0;
            while (i10 < size) {
                long jZze = zzauuVar.zze(i10);
                iZzC += zzasx.zzC((jZze >> 63) ^ (jZze + jZze));
                i10++;
            }
        } else {
            iZzC = 0;
            while (i10 < size) {
                long jLongValue = ((Long) list.get(i10)).longValue();
                iZzC += zzasx.zzC((jLongValue >> 63) ^ (jLongValue + jLongValue));
                i10++;
            }
        }
        return iZzC;
    }

    static int zzk(List list) {
        int iZzB;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzatv) {
            zzatv zzatvVar = (zzatv) list;
            iZzB = 0;
            while (i10 < size) {
                iZzB += zzasx.zzB(zzatvVar.zze(i10));
                i10++;
            }
        } else {
            iZzB = 0;
            while (i10 < size) {
                iZzB += zzasx.zzB(((Integer) list.get(i10)).intValue());
                i10++;
            }
        }
        return iZzB;
    }

    static int zzl(List list) {
        int iZzC;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzauu) {
            zzauu zzauuVar = (zzauu) list;
            iZzC = 0;
            while (i10 < size) {
                iZzC += zzasx.zzC(zzauuVar.zze(i10));
                i10++;
            }
        } else {
            iZzC = 0;
            while (i10 < size) {
                iZzC += zzasx.zzC(((Long) list.get(i10)).longValue());
                i10++;
            }
        }
        return iZzC;
    }

    public static zzawn zzm() {
        return zzc;
    }

    public static zzawn zzn() {
        return zzd;
    }

    static Object zzo(Object obj, int i10, List list, zzaty zzatyVar, Object obj2, zzawn zzawnVar) {
        if (zzatyVar == null) {
            return obj2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                Integer num = (Integer) list.get(i12);
                int iIntValue = num.intValue();
                if (zzatyVar.zza(iIntValue)) {
                    if (i12 != i11) {
                        list.set(i11, num);
                    }
                    i11++;
                } else {
                    obj2 = zzp(obj, i10, iIntValue, obj2, zzawnVar);
                }
            }
            if (i11 != size) {
                list.subList(i11, size).clear();
                return obj2;
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = ((Integer) it.next()).intValue();
                if (!zzatyVar.zza(iIntValue2)) {
                    obj2 = zzp(obj, i10, iIntValue2, obj2, zzawnVar);
                    it.remove();
                }
            }
        }
        return obj2;
    }

    static Object zzp(Object obj, int i10, int i11, Object obj2, zzawn zzawnVar) {
        if (obj2 == null) {
            obj2 = zzawnVar.zzc(obj);
        }
        zzawnVar.zzl(obj2, i10, i11);
        return obj2;
    }

    static void zzq(zzatg zzatgVar, Object obj, Object obj2) {
        zzatk zzatkVarZzb = zzatgVar.zzb(obj2);
        if (zzatkVarZzb.zza.isEmpty()) {
            return;
        }
        zzatgVar.zzc(obj).zzh(zzatkVarZzb);
    }

    static void zzr(zzawn zzawnVar, Object obj, Object obj2) {
        zzawnVar.zzo(obj, zzawnVar.zze(zzawnVar.zzd(obj), zzawnVar.zzd(obj2)));
    }

    public static void zzs(Class cls) {
        Class cls2;
        if (!zzatu.class.isAssignableFrom(cls) && (cls2 = zzb) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    static boolean zzt(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static void zzu(int i10, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzc(i10, list, z10);
    }

    public static void zzv(int i10, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzg(i10, list, z10);
    }

    public static void zzw(int i10, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzj(i10, list, z10);
    }

    public static void zzx(int i10, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzl(i10, list, z10);
    }

    public static void zzy(int i10, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzn(i10, list, z10);
    }

    public static void zzz(int i10, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzp(i10, list, z10);
    }
}
