package com.google.android.gms.internal.fido;

import java.math.RoundingMode;

public final class zzbh {
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003e, code lost:
    
        if (((r0 & 1) & (r7 != java.math.RoundingMode.HALF_EVEN ? 0 : 1)) != 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0041, code lost:
    
        if (r1 > 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0044, code lost:
    
        if (r5 > 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0047, code lost:
    
        if (r5 < 0) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int zza(int i10, int i11, RoundingMode roundingMode) {
        roundingMode.getClass();
        if (i11 == 0) {
            throw new ArithmeticException("/ by zero");
        }
        int i12 = i10 / i11;
        int i13 = i10 - (i11 * i12);
        if (i13 == 0) {
            return i12;
        }
        int i14 = ((i10 ^ i11) >> 31) | 1;
        switch (zzbg.zza[roundingMode.ordinal()]) {
            case 1:
                zzbi.zza(false);
            case 2:
                return i12;
            case 3:
                break;
            case 4:
                return i12 + i14;
            case 5:
                break;
            case 6:
            case 7:
            case 8:
                int iAbs = Math.abs(i13);
                int iAbs2 = iAbs - (Math.abs(i11) - iAbs);
                if (iAbs2 == 0) {
                    if (roundingMode != RoundingMode.HALF_UP) {
                        break;
                    }
                    return i12 + i14;
                }
                break;
            default:
                throw new AssertionError();
        }
    }

    public static int zzb(int i10, RoundingMode roundingMode) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("x (0) must be > 0");
        }
        switch (zzbg.zza[roundingMode.ordinal()]) {
            case 1:
                zzbi.zza(((i10 + (-1)) & i10) == 0);
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return 32 - Integer.numberOfLeadingZeros(i10 - 1);
            case 6:
            case 7:
            case 8:
                int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(i10);
                return (31 - iNumberOfLeadingZeros) + ((((-1257966797) >>> iNumberOfLeadingZeros) - i10) >>> 31);
            default:
                throw new AssertionError();
        }
        return 31 - Integer.numberOfLeadingZeros(i10);
    }
}
