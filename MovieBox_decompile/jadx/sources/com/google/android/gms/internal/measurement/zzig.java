package com.google.android.gms.internal.measurement;

import java.io.IOException;

final class zzig {
    private static volatile int zza = 100;

    static double zza(byte[] bArr, int i10) {
        return Double.longBitsToDouble(zzd(bArr, i10));
    }

    static float zzb(byte[] bArr, int i10) {
        return Float.intBitsToFloat(zzc(bArr, i10));
    }

    static int zzc(byte[] bArr, int i10) {
        return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    static int zzd(byte[] bArr, int i10, zzij zzijVar) {
        int i11 = i10 + 1;
        long j10 = bArr[i10];
        if (j10 >= 0) {
            zzijVar.zzb = j10;
            return i11;
        }
        int i12 = i10 + 2;
        byte b10 = bArr[i11];
        long j11 = (j10 & 127) | (((long) (b10 & 127)) << 7);
        int i13 = 7;
        while (b10 < 0) {
            int i14 = i12 + 1;
            byte b11 = bArr[i12];
            i13 += 7;
            j11 |= ((long) (b11 & 127)) << i13;
            b10 = b11;
            i12 = i14;
        }
        zzijVar.zzb = j11;
        return i12;
    }

    static int zza(byte[] bArr, int i10, zzij zzijVar) throws zzkb {
        int iZzc = zzc(bArr, i10, zzijVar);
        int i11 = zzijVar.zza;
        if (i11 < 0) {
            throw zzkb.zzf();
        }
        if (i11 > bArr.length - iZzc) {
            throw zzkb.zzi();
        }
        if (i11 == 0) {
            zzijVar.zzc = zzik.zza;
            return iZzc;
        }
        zzijVar.zzc = zzik.zza(bArr, iZzc, i11);
        return iZzc + i11;
    }

    static int zzb(zzlu<?> zzluVar, int i10, byte[] bArr, int i11, int i12, zzkc<?> zzkcVar, zzij zzijVar) throws IOException {
        int iZza = zza(zzluVar, bArr, i11, i12, zzijVar);
        zzkcVar.add(zzijVar.zzc);
        while (iZza < i12) {
            int iZzc = zzc(bArr, iZza, zzijVar);
            if (i10 != zzijVar.zza) {
                break;
            }
            iZza = zza(zzluVar, bArr, iZzc, i12, zzijVar);
            zzkcVar.add(zzijVar.zzc);
        }
        return iZza;
    }

    static int zzc(byte[] bArr, int i10, zzij zzijVar) {
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        if (b10 < 0) {
            return zza(b10, bArr, i11, zzijVar);
        }
        zzijVar.zza = b10;
        return i11;
    }

    static long zzd(byte[] bArr, int i10) {
        return ((((long) bArr[i10 + 7]) & 255) << 56) | (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48);
    }

    static int zzb(byte[] bArr, int i10, zzij zzijVar) throws zzkb {
        int iZzc = zzc(bArr, i10, zzijVar);
        int i11 = zzijVar.zza;
        if (i11 < 0) {
            throw zzkb.zzf();
        }
        if (i11 == 0) {
            zzijVar.zzc = "";
            return iZzc;
        }
        zzijVar.zzc = zzmp.zzb(bArr, iZzc, i11);
        return iZzc + i11;
    }

    static int zza(int i10, byte[] bArr, int i11, int i12, Object obj, zzlc zzlcVar, zzmk<zzmj, zzmj> zzmkVar, zzij zzijVar) throws IOException {
        if (zzijVar.zzd.zza(zzlcVar, i10 >>> 3) == null) {
            return zza(i10, bArr, i11, i12, zzlg.zzc(obj), zzijVar);
        }
        zzjt.zzd zzdVar = (zzjt.zzd) obj;
        zzdVar.zza();
        zzjm<zzjt.zzc> zzjmVar = zzdVar.zzc;
        throw new NoSuchMethodError();
    }

    private static int zza(zzlu zzluVar, byte[] bArr, int i10, int i11, int i12, zzij zzijVar) throws IOException {
        Object objZza = zzluVar.zza();
        int iZza = zza(objZza, zzluVar, bArr, i10, i11, i12, zzijVar);
        zzluVar.zzd(objZza);
        zzijVar.zzc = objZza;
        return iZza;
    }

    static int zza(zzlu zzluVar, int i10, byte[] bArr, int i11, int i12, zzkc<?> zzkcVar, zzij zzijVar) throws IOException {
        int i13 = (i10 & (-8)) | 4;
        int iZza = zza(zzluVar, bArr, i11, i12, i13, zzijVar);
        zzkcVar.add(zzijVar.zzc);
        while (iZza < i12) {
            int iZzc = zzc(bArr, iZza, zzijVar);
            if (i10 != zzijVar.zza) {
                break;
            }
            iZza = zza(zzluVar, bArr, iZzc, i12, i13, zzijVar);
            zzkcVar.add(zzijVar.zzc);
        }
        return iZza;
    }

    static int zza(zzlu zzluVar, byte[] bArr, int i10, int i11, zzij zzijVar) throws IOException {
        Object objZza = zzluVar.zza();
        int iZza = zza(objZza, zzluVar, bArr, i10, i11, zzijVar);
        zzluVar.zzd(objZza);
        zzijVar.zzc = objZza;
        return iZza;
    }

    static int zza(byte[] bArr, int i10, zzkc<?> zzkcVar, zzij zzijVar) throws IOException {
        zzjw zzjwVar = (zzjw) zzkcVar;
        int iZzc = zzc(bArr, i10, zzijVar);
        int i11 = zzijVar.zza + iZzc;
        while (iZzc < i11) {
            iZzc = zzc(bArr, iZzc, zzijVar);
            zzjwVar.zzd(zzijVar.zza);
        }
        if (iZzc == i11) {
            return iZzc;
        }
        throw zzkb.zzi();
    }

    static int zza(int i10, byte[] bArr, int i11, int i12, zzmj zzmjVar, zzij zzijVar) throws zzkb {
        if ((i10 >>> 3) == 0) {
            throw zzkb.zzc();
        }
        int i13 = i10 & 7;
        if (i13 == 0) {
            int iZzd = zzd(bArr, i11, zzijVar);
            zzmjVar.zza(i10, Long.valueOf(zzijVar.zzb));
            return iZzd;
        }
        if (i13 == 1) {
            zzmjVar.zza(i10, Long.valueOf(zzd(bArr, i11)));
            return i11 + 8;
        }
        if (i13 == 2) {
            int iZzc = zzc(bArr, i11, zzijVar);
            int i14 = zzijVar.zza;
            if (i14 >= 0) {
                if (i14 > bArr.length - iZzc) {
                    throw zzkb.zzi();
                }
                if (i14 == 0) {
                    zzmjVar.zza(i10, zzik.zza);
                } else {
                    zzmjVar.zza(i10, zzik.zza(bArr, iZzc, i14));
                }
                return iZzc + i14;
            }
            throw zzkb.zzf();
        }
        if (i13 != 3) {
            if (i13 == 5) {
                zzmjVar.zza(i10, Integer.valueOf(zzc(bArr, i11)));
                return i11 + 4;
            }
            throw zzkb.zzc();
        }
        zzmj zzmjVarZzd = zzmj.zzd();
        int i15 = (i10 & (-8)) | 4;
        int i16 = zzijVar.zze + 1;
        zzijVar.zze = i16;
        zza(i16);
        int i17 = 0;
        while (i11 < i12) {
            int iZzc2 = zzc(bArr, i11, zzijVar);
            int i18 = zzijVar.zza;
            i17 = i18;
            if (i18 == i15) {
                i11 = iZzc2;
                break;
            }
            int iZza = zza(i17, bArr, iZzc2, i12, zzmjVarZzd, zzijVar);
            i17 = i18;
            i11 = iZza;
        }
        zzijVar.zze--;
        if (i11 <= i12 && i17 == i15) {
            zzmjVar.zza(i10, zzmjVarZzd);
            return i11;
        }
        throw zzkb.zzg();
    }

    static int zza(int i10, byte[] bArr, int i11, zzij zzijVar) {
        int i12 = i10 & 127;
        int i13 = i11 + 1;
        byte b10 = bArr[i11];
        if (b10 >= 0) {
            zzijVar.zza = i12 | (b10 << 7);
            return i13;
        }
        int i14 = i12 | ((b10 & 127) << 7);
        int i15 = i11 + 2;
        byte b11 = bArr[i13];
        if (b11 >= 0) {
            zzijVar.zza = i14 | (b11 << 14);
            return i15;
        }
        int i16 = i14 | ((b11 & 127) << 14);
        int i17 = i11 + 3;
        byte b12 = bArr[i15];
        if (b12 >= 0) {
            zzijVar.zza = i16 | (b12 << 21);
            return i17;
        }
        int i18 = i16 | ((b12 & 127) << 21);
        int i19 = i11 + 4;
        byte b13 = bArr[i17];
        if (b13 >= 0) {
            zzijVar.zza = i18 | (b13 << 28);
            return i19;
        }
        int i20 = i18 | ((b13 & 127) << 28);
        while (true) {
            int i21 = i19 + 1;
            if (bArr[i19] >= 0) {
                zzijVar.zza = i20;
                return i21;
            }
            i19 = i21;
        }
    }

    static int zza(int i10, byte[] bArr, int i11, int i12, zzkc<?> zzkcVar, zzij zzijVar) {
        zzjw zzjwVar = (zzjw) zzkcVar;
        int iZzc = zzc(bArr, i11, zzijVar);
        zzjwVar.zzd(zzijVar.zza);
        while (iZzc < i12) {
            int iZzc2 = zzc(bArr, iZzc, zzijVar);
            if (i10 != zzijVar.zza) {
                break;
            }
            iZzc = zzc(bArr, iZzc2, zzijVar);
            zzjwVar.zzd(zzijVar.zza);
        }
        return iZzc;
    }

    static int zza(Object obj, zzlu zzluVar, byte[] bArr, int i10, int i11, int i12, zzij zzijVar) throws IOException {
        zzlg zzlgVar = (zzlg) zzluVar;
        int i13 = zzijVar.zze + 1;
        zzijVar.zze = i13;
        zza(i13);
        int iZza = zzlgVar.zza(obj, bArr, i10, i11, i12, zzijVar);
        zzijVar.zze--;
        zzijVar.zzc = obj;
        return iZza;
    }

    static int zza(Object obj, zzlu zzluVar, byte[] bArr, int i10, int i11, zzij zzijVar) throws IOException {
        int iZza = i10 + 1;
        int i12 = bArr[i10];
        if (i12 < 0) {
            iZza = zza(i12, bArr, iZza, zzijVar);
            i12 = zzijVar.zza;
        }
        int i13 = iZza;
        if (i12 >= 0 && i12 <= i11 - i13) {
            int i14 = zzijVar.zze + 1;
            zzijVar.zze = i14;
            zza(i14);
            int i15 = i12 + i13;
            zzluVar.zza(obj, bArr, i13, i15, zzijVar);
            zzijVar.zze--;
            zzijVar.zzc = obj;
            return i15;
        }
        throw zzkb.zzi();
    }

    static int zza(int i10, byte[] bArr, int i11, int i12, zzij zzijVar) throws zzkb {
        if ((i10 >>> 3) == 0) {
            throw zzkb.zzc();
        }
        int i13 = i10 & 7;
        if (i13 == 0) {
            return zzd(bArr, i11, zzijVar);
        }
        if (i13 == 1) {
            return i11 + 8;
        }
        if (i13 == 2) {
            return zzc(bArr, i11, zzijVar) + zzijVar.zza;
        }
        if (i13 != 3) {
            if (i13 == 5) {
                return i11 + 4;
            }
            throw zzkb.zzc();
        }
        int i14 = (i10 & (-8)) | 4;
        int i15 = 0;
        while (i11 < i12) {
            i11 = zzc(bArr, i11, zzijVar);
            i15 = zzijVar.zza;
            if (i15 == i14) {
                break;
            }
            i11 = zza(i15, bArr, i11, i12, zzijVar);
        }
        if (i11 > i12 || i15 != i14) {
            throw zzkb.zzg();
        }
        return i11;
    }

    private static void zza(int i10) throws zzkb {
        if (i10 >= zza) {
            throw zzkb.zzh();
        }
    }
}
