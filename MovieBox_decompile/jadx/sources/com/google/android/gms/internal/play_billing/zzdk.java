package com.google.android.gms.internal.play_billing;

import java.io.IOException;

final class zzdk {
    static int zza(byte[] bArr, int i10, zzdj zzdjVar) throws zzff {
        int iZzh = zzh(bArr, i10, zzdjVar);
        int i11 = zzdjVar.zza;
        if (i11 < 0) {
            throw zzff.zzd();
        }
        if (i11 > bArr.length - iZzh) {
            throw zzff.zzg();
        }
        if (i11 == 0) {
            zzdjVar.zzc = zzdw.zzb;
            return iZzh;
        }
        zzdjVar.zzc = zzdw.zzl(bArr, iZzh, i11);
        return iZzh + i11;
    }

    static int zzb(byte[] bArr, int i10) {
        int i11 = bArr[i10] & 255;
        int i12 = bArr[i10 + 1] & 255;
        int i13 = bArr[i10 + 2] & 255;
        return ((bArr[i10 + 3] & 255) << 24) | (i12 << 8) | i11 | (i13 << 16);
    }

    static int zzc(zzgm zzgmVar, byte[] bArr, int i10, int i11, int i12, zzdj zzdjVar) throws IOException {
        Object objZze = zzgmVar.zze();
        int iZzl = zzl(objZze, zzgmVar, bArr, i10, i11, i12, zzdjVar);
        zzgmVar.zzf(objZze);
        zzdjVar.zzc = objZze;
        return iZzl;
    }

    static int zzd(zzgm zzgmVar, byte[] bArr, int i10, int i11, zzdj zzdjVar) throws IOException {
        Object objZze = zzgmVar.zze();
        int iZzm = zzm(objZze, zzgmVar, bArr, i10, i11, zzdjVar);
        zzgmVar.zzf(objZze);
        zzdjVar.zzc = objZze;
        return iZzm;
    }

    static int zze(zzgm zzgmVar, int i10, byte[] bArr, int i11, int i12, zzfc zzfcVar, zzdj zzdjVar) throws IOException {
        int iZzd = zzd(zzgmVar, bArr, i11, i12, zzdjVar);
        zzfcVar.add(zzdjVar.zzc);
        while (iZzd < i12) {
            int iZzh = zzh(bArr, iZzd, zzdjVar);
            if (i10 != zzdjVar.zza) {
                break;
            }
            iZzd = zzd(zzgmVar, bArr, iZzh, i12, zzdjVar);
            zzfcVar.add(zzdjVar.zzc);
        }
        return iZzd;
    }

    static int zzf(byte[] bArr, int i10, zzfc zzfcVar, zzdj zzdjVar) throws IOException {
        zzey zzeyVar = (zzey) zzfcVar;
        int iZzh = zzh(bArr, i10, zzdjVar);
        int i11 = zzdjVar.zza + iZzh;
        while (iZzh < i11) {
            iZzh = zzh(bArr, iZzh, zzdjVar);
            zzeyVar.zzf(zzdjVar.zza);
        }
        if (iZzh == i11) {
            return iZzh;
        }
        throw zzff.zzg();
    }

    static int zzg(int i10, byte[] bArr, int i11, int i12, zzhe zzheVar, zzdj zzdjVar) throws zzff {
        if ((i10 >>> 3) == 0) {
            throw zzff.zzb();
        }
        int i13 = i10 & 7;
        if (i13 == 0) {
            int iZzk = zzk(bArr, i11, zzdjVar);
            zzheVar.zzj(i10, Long.valueOf(zzdjVar.zzb));
            return iZzk;
        }
        if (i13 == 1) {
            zzheVar.zzj(i10, Long.valueOf(zzn(bArr, i11)));
            return i11 + 8;
        }
        if (i13 == 2) {
            int iZzh = zzh(bArr, i11, zzdjVar);
            int i14 = zzdjVar.zza;
            if (i14 < 0) {
                throw zzff.zzd();
            }
            if (i14 > bArr.length - iZzh) {
                throw zzff.zzg();
            }
            if (i14 == 0) {
                zzheVar.zzj(i10, zzdw.zzb);
            } else {
                zzheVar.zzj(i10, zzdw.zzl(bArr, iZzh, i14));
            }
            return iZzh + i14;
        }
        if (i13 != 3) {
            if (i13 != 5) {
                throw zzff.zzb();
            }
            zzheVar.zzj(i10, Integer.valueOf(zzb(bArr, i11)));
            return i11 + 4;
        }
        int i15 = (i10 & (-8)) | 4;
        zzhe zzheVarZzf = zzhe.zzf();
        int i16 = 0;
        while (i11 < i12) {
            int iZzh2 = zzh(bArr, i11, zzdjVar);
            int i17 = zzdjVar.zza;
            i16 = i17;
            if (i17 == i15) {
                i11 = iZzh2;
                break;
            }
            int iZzg = zzg(i16, bArr, iZzh2, i12, zzheVarZzf, zzdjVar);
            i16 = i17;
            i11 = iZzg;
        }
        if (i11 > i12 || i16 != i15) {
            throw zzff.zze();
        }
        zzheVar.zzj(i10, zzheVarZzf);
        return i11;
    }

    static int zzh(byte[] bArr, int i10, zzdj zzdjVar) {
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        if (b10 < 0) {
            return zzi(b10, bArr, i11, zzdjVar);
        }
        zzdjVar.zza = b10;
        return i11;
    }

    static int zzi(int i10, byte[] bArr, int i11, zzdj zzdjVar) {
        byte b10 = bArr[i11];
        int i12 = i11 + 1;
        int i13 = i10 & 127;
        if (b10 >= 0) {
            zzdjVar.zza = i13 | (b10 << 7);
            return i12;
        }
        int i14 = i13 | ((b10 & 127) << 7);
        int i15 = i11 + 2;
        byte b11 = bArr[i12];
        if (b11 >= 0) {
            zzdjVar.zza = i14 | (b11 << 14);
            return i15;
        }
        int i16 = i14 | ((b11 & 127) << 14);
        int i17 = i11 + 3;
        byte b12 = bArr[i15];
        if (b12 >= 0) {
            zzdjVar.zza = i16 | (b12 << 21);
            return i17;
        }
        int i18 = i16 | ((b12 & 127) << 21);
        int i19 = i11 + 4;
        byte b13 = bArr[i17];
        if (b13 >= 0) {
            zzdjVar.zza = i18 | (b13 << 28);
            return i19;
        }
        int i20 = i18 | ((b13 & 127) << 28);
        while (true) {
            int i21 = i19 + 1;
            if (bArr[i19] >= 0) {
                zzdjVar.zza = i20;
                return i21;
            }
            i19 = i21;
        }
    }

    static int zzj(int i10, byte[] bArr, int i11, int i12, zzfc zzfcVar, zzdj zzdjVar) {
        zzey zzeyVar = (zzey) zzfcVar;
        int iZzh = zzh(bArr, i11, zzdjVar);
        zzeyVar.zzf(zzdjVar.zza);
        while (iZzh < i12) {
            int iZzh2 = zzh(bArr, iZzh, zzdjVar);
            if (i10 != zzdjVar.zza) {
                break;
            }
            iZzh = zzh(bArr, iZzh2, zzdjVar);
            zzeyVar.zzf(zzdjVar.zza);
        }
        return iZzh;
    }

    static int zzk(byte[] bArr, int i10, zzdj zzdjVar) {
        long j10 = bArr[i10];
        int i11 = i10 + 1;
        if (j10 >= 0) {
            zzdjVar.zzb = j10;
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
        zzdjVar.zzb = j11;
        return i12;
    }

    static int zzl(Object obj, zzgm zzgmVar, byte[] bArr, int i10, int i11, int i12, zzdj zzdjVar) throws IOException {
        int iZzc = ((zzgf) zzgmVar).zzc(obj, bArr, i10, i11, i12, zzdjVar);
        zzdjVar.zzc = obj;
        return iZzc;
    }

    static int zzm(Object obj, zzgm zzgmVar, byte[] bArr, int i10, int i11, zzdj zzdjVar) throws IOException {
        int iZzi = i10 + 1;
        int i12 = bArr[i10];
        if (i12 < 0) {
            iZzi = zzi(i12, bArr, iZzi, zzdjVar);
            i12 = zzdjVar.zza;
        }
        int i13 = iZzi;
        if (i12 < 0 || i12 > i11 - i13) {
            throw zzff.zzg();
        }
        int i14 = i12 + i13;
        zzgmVar.zzh(obj, bArr, i13, i14, zzdjVar);
        zzdjVar.zzc = obj;
        return i14;
    }

    static long zzn(byte[] bArr, int i10) {
        return (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48) | ((((long) bArr[i10 + 7]) & 255) << 56);
    }
}
