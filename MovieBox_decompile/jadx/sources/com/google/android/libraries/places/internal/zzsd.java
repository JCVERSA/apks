package com.google.android.libraries.places.internal;

import java.math.RoundingMode;
import java.util.Arrays;

final class zzsd {
    final int zza;
    final int zzb;
    final int zzc;
    final int zzd;
    private final String zze;
    private final char[] zzf;
    private final byte[] zzg;
    private final boolean[] zzh;
    private final boolean zzi;

    /* JADX WARN: Illegal instructions before constructor call */
    zzsd(String str, char[] cArr) {
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        for (int i10 = 0; i10 < cArr.length; i10++) {
            char c10 = cArr[i10];
            boolean z10 = true;
            zzmt.zzg(c10 < 128, "Non-ASCII character: %s", c10);
            if (bArr[c10] != -1) {
                z10 = false;
            }
            zzmt.zzg(z10, "Duplicate character: %s", c10);
            bArr[c10] = (byte) i10;
        }
        this(str, cArr, bArr, false);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzsd) {
            zzsd zzsdVar = (zzsd) obj;
            boolean z10 = zzsdVar.zzi;
            if (Arrays.equals(this.zzf, zzsdVar.zzf)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zzf) + 1237;
    }

    public final String toString() {
        return this.zze;
    }

    final char zza(int i10) {
        return this.zzf[i10];
    }

    final int zzb(char c10) throws zzsg {
        if (c10 > 127) {
            throw new zzsg("Unrecognized character: 0x".concat(String.valueOf(Integer.toHexString(c10))));
        }
        byte b10 = this.zzg[c10];
        if (b10 != -1) {
            return b10;
        }
        if (c10 <= ' ' || c10 == 127) {
            throw new zzsg("Unrecognized character: 0x".concat(String.valueOf(Integer.toHexString(c10))));
        }
        throw new zzsg("Unrecognized character: " + c10);
    }

    final boolean zzc(int i10) {
        return this.zzh[i10 % this.zzc];
    }

    public final boolean zzd(char c10) {
        return this.zzg[61] != -1;
    }

    private zzsd(String str, char[] cArr, byte[] bArr, boolean z10) {
        this.zze = str;
        cArr.getClass();
        this.zzf = cArr;
        try {
            int length = cArr.length;
            int iZzb = zzajl.zzb(length, RoundingMode.UNNECESSARY);
            this.zzb = iZzb;
            int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(iZzb);
            int i10 = 1 << (3 - iNumberOfTrailingZeros);
            this.zzc = i10;
            this.zzd = iZzb >> iNumberOfTrailingZeros;
            this.zza = length - 1;
            this.zzg = bArr;
            boolean[] zArr = new boolean[i10];
            for (int i11 = 0; i11 < this.zzd; i11++) {
                zArr[zzajl.zza(i11 * 8, this.zzb, RoundingMode.CEILING)] = true;
            }
            this.zzh = zArr;
            this.zzi = false;
        } catch (ArithmeticException e10) {
            throw new IllegalArgumentException("Illegal alphabet length " + cArr.length, e10);
        }
    }
}
