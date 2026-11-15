package defpackage;

import androidx.media3.muxer.MuxerUtil;
import java.math.BigInteger;

public abstract class py6 {
    public static int A(int i, long j, int[] iArr, int i2) {
        long j2 = ((long) i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j3 = j & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j4 = (j2 * j3) + (((long) iArr[i2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr[i2] = (int) j4;
        long j5 = j >>> 32;
        long j6 = (j2 * j5) + j3;
        int i3 = i2 + 1;
        long j7 = (j4 >>> 32) + j6 + (((long) iArr[i3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr[i3] = (int) j7;
        int i4 = i2 + 2;
        long j8 = (j7 >>> 32) + j5 + (((long) iArr[i4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr[i4] = (int) j8;
        long j9 = j8 >>> 32;
        int i5 = i2 + 3;
        long j10 = j9 + (((long) iArr[i5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr[i5] = (int) j10;
        if ((j10 >>> 32) == 0) {
            return 0;
        }
        return vy6.y(8, iArr, i2, 4);
    }

    public static int B(int i, int i2, int[] iArr, int i3) {
        long j = ((long) i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j2 = ((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j3 = (j * j2) + (((long) iArr[i3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr[i3] = (int) j3;
        int i4 = i3 + 1;
        long j4 = (j3 >>> 32) + j2 + (((long) iArr[i4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr[i4] = (int) j4;
        long j5 = j4 >>> 32;
        int i5 = i3 + 2;
        long j6 = j5 + (((long) iArr[i5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr[i5] = (int) j6;
        if ((j6 >>> 32) == 0) {
            return 0;
        }
        return vy6.y(8, iArr, i3, 3);
    }

    public static int C(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = ((long) iArr2[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j2 = ((long) iArr2[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j3 = ((long) iArr2[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j4 = ((long) iArr2[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j5 = ((long) iArr2[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j6 = ((long) iArr2[5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j7 = ((long) iArr2[6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j8 = ((long) iArr2[7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j9 = 0;
        int i = 0;
        while (i < 8) {
            long j10 = j8;
            long j11 = ((long) iArr[i]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
            long j12 = j6;
            long j13 = (((long) iArr3[i]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j11 * j);
            iArr3[i] = (int) j13;
            int i2 = i + 1;
            long j14 = j2;
            long j15 = (j13 >>> 32) + (j11 * j2) + (((long) iArr3[i2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i2] = (int) j15;
            int i3 = i + 2;
            long j16 = (j15 >>> 32) + (j11 * j3) + (((long) iArr3[i3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i3] = (int) j16;
            int i4 = i + 3;
            long j17 = (j16 >>> 32) + (j11 * j4) + (((long) iArr3[i4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i4] = (int) j17;
            int i5 = i + 4;
            long j18 = (j17 >>> 32) + (j11 * j5) + (((long) iArr3[i5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i5] = (int) j18;
            int i6 = i + 5;
            long j19 = (j18 >>> 32) + (j11 * j12) + (((long) iArr3[i6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i6] = (int) j19;
            int i7 = i + 6;
            long j20 = (j19 >>> 32) + (j11 * j7) + (((long) iArr3[i7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i7] = (int) j20;
            int i8 = i + 7;
            long j21 = (j20 >>> 32) + (j11 * j10) + (((long) iArr3[i8]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i8] = (int) j21;
            int i9 = i + 8;
            long j22 = (j21 >>> 32) + (((long) iArr3[i9]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j9;
            iArr3[i9] = (int) j22;
            j9 = j22 >>> 32;
            i = i2;
            j8 = j10;
            j6 = j12;
            j2 = j14;
        }
        return (int) j9;
    }

    public static int D(int i, int[] iArr, int[] iArr2) {
        long j = ((long) i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j2 = ((((long) iArr2[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) * j) + (((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr2[0] = (int) j2;
        long j3 = (j2 >>> 32) + ((((long) iArr2[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) * j) + (((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr2[1] = (int) j3;
        long j4 = (j3 >>> 32) + ((((long) iArr2[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) * j) + (((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr2[2] = (int) j4;
        long j5 = (j4 >>> 32) + ((((long) iArr2[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) * j) + (((long) iArr[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr2[3] = (int) j5;
        long j6 = (j5 >>> 32) + ((((long) iArr2[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) * j) + (((long) iArr[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr2[4] = (int) j6;
        long j7 = (j6 >>> 32) + ((((long) iArr2[5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) * j) + (((long) iArr[5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr2[5] = (int) j7;
        long j8 = (j7 >>> 32) + ((((long) iArr2[6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) * j) + (((long) iArr[6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr2[6] = (int) j8;
        long j9 = (j8 >>> 32) + (j * (((long) iArr2[7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr[7]));
        iArr2[7] = (int) j9;
        return (int) (j9 >>> 32);
    }

    public static void E(int[] iArr, int i, int[] iArr2, int i2) {
        long j = ((long) iArr[i]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        int i3 = 0;
        int i4 = 16;
        int i5 = 7;
        while (true) {
            int i6 = i5 - 1;
            long j2 = ((long) iArr[i + i5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
            long j3 = j2 * j2;
            iArr2[i2 + (i4 - 1)] = (i3 << 31) | ((int) (j3 >>> 33));
            i4 -= 2;
            iArr2[i2 + i4] = (int) (j3 >>> 1);
            i3 = (int) j3;
            if (i6 <= 0) {
                long j4 = j * j;
                long j5 = (j4 >>> 33) | (((long) (i3 << 31)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                iArr2[i2] = (int) j4;
                int i7 = ((int) (j4 >>> 32)) & 1;
                long j6 = ((long) iArr[i + 1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                int i8 = i2 + 2;
                long j7 = ((long) iArr2[i8]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j8 = j5 + (j6 * j);
                int i9 = (int) j8;
                iArr2[i2 + 1] = (i9 << 1) | i7;
                int i10 = i9 >>> 31;
                long j9 = j7 + (j8 >>> 32);
                long j10 = ((long) iArr[i + 2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                int i11 = i2 + 3;
                long j11 = ((long) iArr2[i11]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                int i12 = i2 + 4;
                long j12 = ((long) iArr2[i12]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j13 = j9 + (j10 * j);
                int i13 = (int) j13;
                iArr2[i8] = (i13 << 1) | i10;
                long j14 = j11 + (j13 >>> 32) + (j10 * j6);
                long j15 = j12 + (j14 >>> 32);
                long j16 = j14 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j17 = ((long) iArr[i + 3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                int i14 = i2 + 5;
                long j18 = (((long) iArr2[i14]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j15 >>> 32);
                long j19 = j15 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                int i15 = i2 + 6;
                long j20 = (((long) iArr2[i15]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j18 >>> 32);
                long j21 = j18 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j22 = j16 + (j17 * j);
                int i16 = (int) j22;
                iArr2[i11] = (i16 << 1) | (i13 >>> 31);
                long j23 = j19 + (j22 >>> 32) + (j17 * j6);
                long j24 = j21 + (j23 >>> 32) + (j17 * j10);
                long j25 = j23 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j26 = j20 + (j24 >>> 32);
                long j27 = j24 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j28 = ((long) iArr[i + 4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                int i17 = i2 + 7;
                long j29 = (((long) iArr2[i17]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j26 >>> 32);
                long j30 = j26 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                int i18 = i2 + 8;
                long j31 = (((long) iArr2[i18]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j29 >>> 32);
                long j32 = j29 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j33 = j25 + (j28 * j);
                int i19 = (int) j33;
                iArr2[i12] = (i19 << 1) | (i16 >>> 31);
                int i20 = i19 >>> 31;
                long j34 = j27 + (j33 >>> 32) + (j28 * j6);
                long j35 = j30 + (j34 >>> 32) + (j28 * j10);
                long j36 = j34 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j37 = j32 + (j35 >>> 32) + (j28 * j17);
                long j38 = j35 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j39 = j31 + (j37 >>> 32);
                long j40 = j37 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j41 = ((long) iArr[i + 5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                int i21 = i2 + 9;
                long j42 = (((long) iArr2[i21]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j39 >>> 32);
                long j43 = j39 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                int i22 = i2 + 10;
                long j44 = (((long) iArr2[i22]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j42 >>> 32);
                long j45 = j42 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j46 = j36 + (j41 * j);
                int i23 = (int) j46;
                iArr2[i14] = (i23 << 1) | i20;
                int i24 = i23 >>> 31;
                long j47 = j38 + (j46 >>> 32) + (j41 * j6);
                long j48 = j40 + (j47 >>> 32) + (j41 * j10);
                long j49 = j47 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j50 = j43 + (j48 >>> 32) + (j41 * j17);
                long j51 = j48 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j52 = j45 + (j50 >>> 32) + (j41 * j28);
                long j53 = j50 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j54 = j44 + (j52 >>> 32);
                long j55 = j52 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j56 = ((long) iArr[i + 6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                int i25 = i2 + 11;
                long j57 = (((long) iArr2[i25]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j54 >>> 32);
                long j58 = j54 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                int i26 = i2 + 12;
                long j59 = (((long) iArr2[i26]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j57 >>> 32);
                long j60 = j57 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j61 = j49 + (j56 * j);
                int i27 = (int) j61;
                iArr2[i15] = (i27 << 1) | i24;
                int i28 = i27 >>> 31;
                long j62 = j51 + (j61 >>> 32) + (j56 * j6);
                long j63 = j53 + (j62 >>> 32) + (j56 * j10);
                long j64 = j62 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j65 = j55 + (j63 >>> 32) + (j56 * j17);
                long j66 = j63 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j67 = j58 + (j65 >>> 32) + (j56 * j28);
                long j68 = j65 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j69 = j60 + (j67 >>> 32) + (j56 * j41);
                long j70 = j67 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j71 = j59 + (j69 >>> 32);
                long j72 = j69 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j73 = ((long) iArr[i + 7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                int i29 = i2 + 13;
                long j74 = (((long) iArr2[i29]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j71 >>> 32);
                long j75 = j71 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                int i30 = i2 + 14;
                long j76 = (((long) iArr2[i30]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j74 >>> 32);
                long j77 = MuxerUtil.UNSIGNED_INT_MAX_VALUE & j74;
                long j78 = j64 + (j * j73);
                int i31 = (int) j78;
                iArr2[i17] = (i31 << 1) | i28;
                long j79 = j66 + (j78 >>> 32) + (j6 * j73);
                long j80 = j68 + (j79 >>> 32) + (j73 * j10);
                long j81 = j70 + (j80 >>> 32) + (j73 * j17);
                long j82 = j72 + (j81 >>> 32) + (j73 * j28);
                long j83 = j75 + (j82 >>> 32) + (j73 * j41);
                long j84 = j77 + (j83 >>> 32) + (j73 * j56);
                long j85 = j76 + (j84 >>> 32);
                int i32 = (int) j79;
                iArr2[i18] = (i31 >>> 31) | (i32 << 1);
                int i33 = i32 >>> 31;
                int i34 = (int) j80;
                iArr2[i21] = i33 | (i34 << 1);
                int i35 = i34 >>> 31;
                int i36 = (int) j81;
                iArr2[i22] = i35 | (i36 << 1);
                int i37 = i36 >>> 31;
                int i38 = (int) j82;
                iArr2[i25] = i37 | (i38 << 1);
                int i39 = i38 >>> 31;
                int i40 = (int) j83;
                iArr2[i26] = i39 | (i40 << 1);
                int i41 = i40 >>> 31;
                int i42 = (int) j84;
                iArr2[i29] = i41 | (i42 << 1);
                int i43 = i42 >>> 31;
                int i44 = (int) j85;
                iArr2[i30] = i43 | (i44 << 1);
                int i45 = i44 >>> 31;
                int i46 = i2 + 15;
                iArr2[i46] = i45 | ((iArr2[i46] + ((int) (j85 >>> 32))) << 1);
                return;
            }
            i5 = i6;
        }
    }

    public static void F(int[] iArr, int[] iArr2) {
        long j = ((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        int i = 16;
        int i2 = 0;
        int i3 = 7;
        while (true) {
            int i4 = i3 - 1;
            long j2 = ((long) iArr[i3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
            long j3 = j2 * j2;
            iArr2[i - 1] = (i2 << 31) | ((int) (j3 >>> 33));
            i -= 2;
            iArr2[i] = (int) (j3 >>> 1);
            i2 = (int) j3;
            if (i4 <= 0) {
                long j4 = j * j;
                long j5 = (j4 >>> 33) | (((long) (i2 << 31)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                iArr2[0] = (int) j4;
                long j6 = ((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j7 = ((long) iArr2[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j8 = j5 + (j6 * j);
                int i5 = (int) j8;
                iArr2[1] = (i5 << 1) | (((int) (j4 >>> 32)) & 1);
                int i6 = i5 >>> 31;
                long j9 = j7 + (j8 >>> 32);
                long j10 = ((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j11 = ((long) iArr2[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j12 = ((long) iArr2[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j13 = j9 + (j10 * j);
                int i7 = (int) j13;
                iArr2[2] = (i7 << 1) | i6;
                long j14 = j11 + (j13 >>> 32) + (j10 * j6);
                long j15 = j12 + (j14 >>> 32);
                long j16 = j14 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j17 = ((long) iArr[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j18 = (((long) iArr2[5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j15 >>> 32);
                long j19 = j15 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j20 = (((long) iArr2[6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j18 >>> 32);
                long j21 = j18 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j22 = j16 + (j17 * j);
                int i8 = (int) j22;
                iArr2[3] = (i8 << 1) | (i7 >>> 31);
                int i9 = i8 >>> 31;
                long j23 = j19 + (j22 >>> 32) + (j17 * j6);
                long j24 = j21 + (j23 >>> 32) + (j17 * j10);
                long j25 = j23 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j26 = j20 + (j24 >>> 32);
                long j27 = j24 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j28 = ((long) iArr[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j29 = (((long) iArr2[7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j26 >>> 32);
                long j30 = j26 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j31 = (((long) iArr2[8]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j29 >>> 32);
                long j32 = j29 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j33 = j25 + (j28 * j);
                int i10 = (int) j33;
                iArr2[4] = (i10 << 1) | i9;
                long j34 = j27 + (j33 >>> 32) + (j28 * j6);
                long j35 = j30 + (j34 >>> 32) + (j28 * j10);
                long j36 = j34 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j37 = j32 + (j35 >>> 32) + (j28 * j17);
                long j38 = j35 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j39 = j31 + (j37 >>> 32);
                long j40 = j37 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j41 = ((long) iArr[5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j42 = (((long) iArr2[9]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j39 >>> 32);
                long j43 = j39 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j44 = (((long) iArr2[10]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j42 >>> 32);
                long j45 = j42 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j46 = j36 + (j41 * j);
                int i11 = (int) j46;
                iArr2[5] = (i11 << 1) | (i10 >>> 31);
                long j47 = j38 + (j46 >>> 32) + (j41 * j6);
                long j48 = j40 + (j47 >>> 32) + (j41 * j10);
                long j49 = j47 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j50 = j43 + (j48 >>> 32) + (j41 * j17);
                long j51 = j48 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j52 = j45 + (j50 >>> 32) + (j41 * j28);
                long j53 = j50 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j54 = j44 + (j52 >>> 32);
                long j55 = j52 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j56 = ((long) iArr[6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j57 = (((long) iArr2[11]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j54 >>> 32);
                long j58 = j54 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j59 = (((long) iArr2[12]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j57 >>> 32);
                long j60 = j57 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j61 = j49 + (j56 * j);
                int i12 = (int) j61;
                iArr2[6] = (i12 << 1) | (i11 >>> 31);
                long j62 = j51 + (j61 >>> 32) + (j56 * j6);
                long j63 = j53 + (j62 >>> 32) + (j56 * j10);
                long j64 = j62 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j65 = j55 + (j63 >>> 32) + (j56 * j17);
                long j66 = j63 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j67 = j58 + (j65 >>> 32) + (j56 * j28);
                long j68 = j65 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j69 = j60 + (j67 >>> 32) + (j56 * j41);
                long j70 = j67 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j71 = j59 + (j69 >>> 32);
                long j72 = j69 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j73 = ((long) iArr[7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j74 = (((long) iArr2[13]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j71 >>> 32);
                long j75 = j71 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j76 = (((long) iArr2[14]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j74 >>> 32);
                long j77 = MuxerUtil.UNSIGNED_INT_MAX_VALUE & j74;
                long j78 = j64 + (j * j73);
                int i13 = (int) j78;
                iArr2[7] = (i12 >>> 31) | (i13 << 1);
                int i14 = i13 >>> 31;
                long j79 = j66 + (j78 >>> 32) + (j73 * j6);
                long j80 = j68 + (j79 >>> 32) + (j73 * j10);
                long j81 = j70 + (j80 >>> 32) + (j73 * j17);
                long j82 = j72 + (j81 >>> 32) + (j73 * j28);
                long j83 = j75 + (j82 >>> 32) + (j73 * j41);
                long j84 = j77 + (j83 >>> 32) + (j73 * j56);
                long j85 = j76 + (j84 >>> 32);
                int i15 = (int) j79;
                iArr2[8] = i14 | (i15 << 1);
                int i16 = i15 >>> 31;
                int i17 = (int) j80;
                iArr2[9] = i16 | (i17 << 1);
                int i18 = i17 >>> 31;
                int i19 = (int) j81;
                iArr2[10] = i18 | (i19 << 1);
                int i20 = i19 >>> 31;
                int i21 = (int) j82;
                iArr2[11] = i20 | (i21 << 1);
                int i22 = i21 >>> 31;
                int i23 = (int) j83;
                iArr2[12] = i22 | (i23 << 1);
                int i24 = i23 >>> 31;
                int i25 = (int) j84;
                iArr2[13] = i24 | (i25 << 1);
                int i26 = i25 >>> 31;
                int i27 = (int) j85;
                iArr2[14] = i26 | (i27 << 1);
                iArr2[15] = (i27 >>> 31) | ((iArr2[15] + ((int) (j85 >>> 32))) << 1);
                return;
            }
            i3 = i4;
        }
    }

    public static int G(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = (((long) iArr[i]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr2[i2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[i3] = (int) j;
        long j2 = (j >> 32) + ((((long) iArr[i + 1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr2[i2 + 1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        iArr3[i3 + 1] = (int) j2;
        long j3 = (j2 >> 32) + ((((long) iArr[i + 2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr2[i2 + 2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        iArr3[i3 + 2] = (int) j3;
        long j4 = (j3 >> 32) + ((((long) iArr[i + 3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr2[i2 + 3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        iArr3[i3 + 3] = (int) j4;
        long j5 = (j4 >> 32) + ((((long) iArr[i + 4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr2[i2 + 4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        iArr3[i3 + 4] = (int) j5;
        long j6 = (j5 >> 32) + ((((long) iArr[i + 5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr2[i2 + 5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        iArr3[i3 + 5] = (int) j6;
        long j7 = (j6 >> 32) + ((((long) iArr[i + 6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr2[i2 + 6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        iArr3[i3 + 6] = (int) j7;
        long j8 = (j7 >> 32) + ((((long) iArr[i + 7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr2[i2 + 7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        iArr3[i3 + 7] = (int) j8;
        return (int) (j8 >> 32);
    }

    public static int H(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr2[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[0] = (int) j;
        long j2 = (j >> 32) + ((((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr2[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        iArr3[1] = (int) j2;
        long j3 = (j2 >> 32) + ((((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr2[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        iArr3[2] = (int) j3;
        long j4 = (j3 >> 32) + ((((long) iArr[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr2[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        iArr3[3] = (int) j4;
        long j5 = (j4 >> 32) + ((((long) iArr[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr2[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        iArr3[4] = (int) j5;
        long j6 = (j5 >> 32) + ((((long) iArr[5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr2[5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        iArr3[5] = (int) j6;
        long j7 = (j6 >> 32) + ((((long) iArr[6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr2[6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        iArr3[6] = (int) j7;
        long j8 = (j7 >> 32) + ((((long) iArr[7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr2[7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        iArr3[7] = (int) j8;
        return (int) (j8 >> 32);
    }

    public static int I(int[] iArr, int[] iArr2) {
        long j = (((long) iArr2[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr2[0] = (int) j;
        long j2 = (j >> 32) + ((((long) iArr2[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        iArr2[1] = (int) j2;
        long j3 = (j2 >> 32) + ((((long) iArr2[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        iArr2[2] = (int) j3;
        long j4 = (j3 >> 32) + ((((long) iArr2[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        iArr2[3] = (int) j4;
        long j5 = (j4 >> 32) + ((((long) iArr2[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        iArr2[4] = (int) j5;
        long j6 = (j5 >> 32) + ((((long) iArr2[5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr[5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        iArr2[5] = (int) j6;
        long j7 = (j6 >> 32) + ((((long) iArr2[6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr[6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        iArr2[6] = (int) j7;
        long j8 = (j7 >> 32) + ((((long) iArr2[7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr[7])));
        iArr2[7] = (int) j8;
        return (int) (j8 >> 32);
    }

    public static BigInteger J(int[] iArr) {
        byte[] bArr = new byte[32];
        for (int i = 0; i < 8; i++) {
            int i2 = iArr[i];
            if (i2 != 0) {
                cv7.c(i2, bArr, (7 - i) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static BigInteger K(long[] jArr) {
        byte[] bArr = new byte[32];
        for (int i = 0; i < 4; i++) {
            long j = jArr[i];
            if (j != 0) {
                cv7.i(j, bArr, (3 - i) << 3);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static int a(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[0] = (int) j;
        long j2 = (j >>> 32) + (((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[1] = (int) j2;
        long j3 = (j2 >>> 32) + (((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[2] = (int) j3;
        long j4 = (j3 >>> 32) + (((long) iArr[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[3] = (int) j4;
        long j5 = (j4 >>> 32) + (((long) iArr[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[4] = (int) j5;
        long j6 = (j5 >>> 32) + (((long) iArr[5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[5] = (int) j6;
        long j7 = (j6 >>> 32) + (((long) iArr[6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[6] = (int) j7;
        long j8 = (j7 >>> 32) + (((long) iArr[7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[7] = (int) j8;
        return (int) (j8 >>> 32);
    }

    public static int b(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr3[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[0] = (int) j;
        long j2 = (j >>> 32) + (((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr3[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[1] = (int) j2;
        long j3 = (j2 >>> 32) + (((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr3[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[2] = (int) j3;
        long j4 = (j3 >>> 32) + (((long) iArr[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr3[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[3] = (int) j4;
        long j5 = (j4 >>> 32) + (((long) iArr[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr3[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[4] = (int) j5;
        long j6 = (j5 >>> 32) + (((long) iArr[5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr3[5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[5] = (int) j6;
        long j7 = (j6 >>> 32) + (((long) iArr[6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr3[6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[6] = (int) j7;
        long j8 = (j7 >>> 32) + (((long) iArr[7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr3[7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[7] = (int) j8;
        return (int) (j8 >>> 32);
    }

    public static int c(int[] iArr, int i, int[] iArr2, int i2, int i3) {
        long j = (((long) i3) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr[i]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[i2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr2[i2] = (int) j;
        int i4 = i2 + 1;
        long j2 = (j >>> 32) + (((long) iArr[i + 1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[i4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr2[i4] = (int) j2;
        int i5 = i2 + 2;
        long j3 = (j2 >>> 32) + (((long) iArr[i + 2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[i5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr2[i5] = (int) j3;
        int i6 = i2 + 3;
        long j4 = (j3 >>> 32) + (((long) iArr[i + 3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[i6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr2[i6] = (int) j4;
        int i7 = i2 + 4;
        long j5 = (j4 >>> 32) + (((long) iArr[i + 4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[i7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr2[i7] = (int) j5;
        int i8 = i2 + 5;
        long j6 = (j5 >>> 32) + (((long) iArr[i + 5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[i8]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr2[i8] = (int) j6;
        int i9 = i2 + 6;
        long j7 = (j6 >>> 32) + (((long) iArr[i + 6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[i9]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr2[i9] = (int) j7;
        int i10 = i2 + 7;
        long j8 = (j7 >>> 32) + (((long) iArr[i + 7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr2[i10]));
        iArr2[i10] = (int) j8;
        return (int) (j8 >>> 32);
    }

    public static int d(int[] iArr, int[] iArr2) {
        long j = (((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr2[0] = (int) j;
        long j2 = (j >>> 32) + (((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr2[1] = (int) j2;
        long j3 = (j2 >>> 32) + (((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr2[2] = (int) j3;
        long j4 = (j3 >>> 32) + (((long) iArr[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr2[3] = (int) j4;
        long j5 = (j4 >>> 32) + (((long) iArr[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr2[4] = (int) j5;
        long j6 = (j5 >>> 32) + (((long) iArr[5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr2[5] = (int) j6;
        long j7 = (j6 >>> 32) + (((long) iArr[6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr2[6] = (int) j7;
        long j8 = (j7 >>> 32) + (((long) iArr[7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr2[7]));
        iArr2[7] = (int) j8;
        return (int) (j8 >>> 32);
    }

    public static int e(int[] iArr, int i, int[] iArr2, int i2) {
        long j = (((long) iArr[i]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[i2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        int i3 = (int) j;
        iArr[i] = i3;
        iArr2[i2] = i3;
        int i4 = i + 1;
        int i5 = i2 + 1;
        long j2 = (j >>> 32) + (((long) iArr[i4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[i5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        int i6 = (int) j2;
        iArr[i4] = i6;
        iArr2[i5] = i6;
        int i7 = i + 2;
        int i8 = i2 + 2;
        long j3 = (j2 >>> 32) + (((long) iArr[i7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[i8]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        int i9 = (int) j3;
        iArr[i7] = i9;
        iArr2[i8] = i9;
        int i10 = i + 3;
        int i11 = i2 + 3;
        long j4 = (j3 >>> 32) + (((long) iArr[i10]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[i11]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        int i12 = (int) j4;
        iArr[i10] = i12;
        iArr2[i11] = i12;
        int i13 = i + 4;
        int i14 = i2 + 4;
        long j5 = (j4 >>> 32) + (((long) iArr[i13]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[i14]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        int i15 = (int) j5;
        iArr[i13] = i15;
        iArr2[i14] = i15;
        int i16 = i + 5;
        int i17 = i2 + 5;
        long j6 = (j5 >>> 32) + (((long) iArr[i16]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[i17]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        int i18 = (int) j6;
        iArr[i16] = i18;
        iArr2[i17] = i18;
        int i19 = i + 6;
        int i20 = i2 + 6;
        long j7 = (j6 >>> 32) + (((long) iArr[i19]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[i20]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        int i21 = (int) j7;
        iArr[i19] = i21;
        iArr2[i20] = i21;
        int i22 = i + 7;
        int i23 = i2 + 7;
        long j8 = (j7 >>> 32) + (((long) iArr[i22]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr2[i23]));
        int i24 = (int) j8;
        iArr[i22] = i24;
        iArr2[i23] = i24;
        return (int) (j8 >>> 32);
    }

    public static void f(int[] iArr, int i, int[] iArr2, int i2) {
        iArr2[i2] = iArr[i];
        iArr2[i2 + 1] = iArr[i + 1];
        iArr2[i2 + 2] = iArr[i + 2];
        iArr2[i2 + 3] = iArr[i + 3];
        iArr2[i2 + 4] = iArr[i + 4];
        iArr2[i2 + 5] = iArr[i + 5];
        iArr2[i2 + 6] = iArr[i + 6];
        iArr2[i2 + 7] = iArr[i + 7];
    }

    public static void g(long[] jArr, int i, long[] jArr2, int i2) {
        jArr2[i2] = jArr[i];
        jArr2[i2 + 1] = jArr[i + 1];
        jArr2[i2 + 2] = jArr[i + 2];
        jArr2[i2 + 3] = jArr[i + 3];
    }

    public static void h(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
    }

    public static int[] i() {
        return new int[8];
    }

    public static long[] j() {
        return new long[4];
    }

    public static int[] k() {
        return new int[16];
    }

    public static long[] l() {
        return new long[8];
    }

    public static boolean m(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        boolean zR = r(iArr, i, iArr2, i2);
        if (zR) {
            G(iArr, i, iArr2, i2, iArr3, i3);
        } else {
            G(iArr2, i2, iArr, i, iArr3, i3);
        }
        return zR;
    }

    public static boolean n(int[] iArr, int[] iArr2) {
        for (int i = 7; i >= 0; i--) {
            if (iArr[i] != iArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static boolean o(long[] jArr, long[] jArr2) {
        for (int i = 3; i >= 0; i--) {
            if (jArr[i] != jArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static int[] p(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 256) {
            throw new IllegalArgumentException();
        }
        int[] iArrI = i();
        for (int i = 0; i < 8; i++) {
            iArrI[i] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
        }
        return iArrI;
    }

    public static int q(int[] iArr, int i) {
        int i2;
        if (i == 0) {
            i2 = iArr[0];
        } else {
            if ((i & 255) != i) {
                return 0;
            }
            i2 = iArr[i >>> 5] >>> (i & 31);
        }
        return i2 & 1;
    }

    public static boolean r(int[] iArr, int i, int[] iArr2, int i2) {
        for (int i3 = 7; i3 >= 0; i3--) {
            int i4 = iArr[i + i3] ^ Integer.MIN_VALUE;
            int i5 = Integer.MIN_VALUE ^ iArr2[i2 + i3];
            if (i4 < i5) {
                return false;
            }
            if (i4 > i5) {
                return true;
            }
        }
        return true;
    }

    public static boolean s(int[] iArr, int[] iArr2) {
        for (int i = 7; i >= 0; i--) {
            int i2 = iArr[i] ^ Integer.MIN_VALUE;
            int i3 = Integer.MIN_VALUE ^ iArr2[i];
            if (i2 < i3) {
                return false;
            }
            if (i2 > i3) {
                return true;
            }
        }
        return true;
    }

    public static boolean t(int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i = 1; i < 8; i++) {
            if (iArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean u(long[] jArr) {
        if (jArr[0] != 1) {
            return false;
        }
        for (int i = 1; i < 4; i++) {
            if (jArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean v(int[] iArr) {
        for (int i = 0; i < 8; i++) {
            if (iArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean w(long[] jArr) {
        for (int i = 0; i < 4; i++) {
            if (jArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void x(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = ((long) iArr2[i2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j2 = ((long) iArr2[i2 + 1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j3 = ((long) iArr2[i2 + 2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j4 = ((long) iArr2[i2 + 3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j5 = ((long) iArr2[i2 + 4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j6 = ((long) iArr2[i2 + 5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j7 = ((long) iArr2[i2 + 6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j8 = ((long) iArr2[i2 + 7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j9 = ((long) iArr[i]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j10 = j9 * j;
        iArr3[i3] = (int) j10;
        long j11 = (j10 >>> 32) + (j9 * j2);
        iArr3[i3 + 1] = (int) j11;
        long j12 = (j11 >>> 32) + (j9 * j3);
        iArr3[i3 + 2] = (int) j12;
        long j13 = (j12 >>> 32) + (j9 * j4);
        iArr3[i3 + 3] = (int) j13;
        long j14 = (j13 >>> 32) + (j9 * j5);
        iArr3[i3 + 4] = (int) j14;
        long j15 = (j14 >>> 32) + (j9 * j6);
        iArr3[i3 + 5] = (int) j15;
        long j16 = (j15 >>> 32) + (j9 * j7);
        iArr3[i3 + 6] = (int) j16;
        long j17 = j8;
        long j18 = (j16 >>> 32) + (j9 * j17);
        iArr3[i3 + 7] = (int) j18;
        iArr3[i3 + 8] = (int) (j18 >>> 32);
        int i4 = 1;
        int i5 = i3;
        while (i4 < 8) {
            int i6 = i5 + 1;
            long j19 = ((long) iArr[i + i4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
            long j20 = j17;
            int i7 = i4;
            long j21 = (j19 * j) + (((long) iArr3[i6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i6] = (int) j21;
            int i8 = i5 + 2;
            long j22 = (j21 >>> 32) + (j19 * j2) + (((long) iArr3[i8]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i8] = (int) j22;
            int i9 = i5 + 3;
            long j23 = j3;
            long j24 = (j22 >>> 32) + (j19 * j3) + (((long) iArr3[i9]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i9] = (int) j24;
            int i10 = i5 + 4;
            int i11 = i5;
            long j25 = (j24 >>> 32) + (j19 * j4) + (((long) iArr3[i10]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i10] = (int) j25;
            int i12 = i11 + 5;
            long j26 = (j25 >>> 32) + (j19 * j5) + (((long) iArr3[i12]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i12] = (int) j26;
            int i13 = i11 + 6;
            long j27 = (j26 >>> 32) + (j19 * j6) + (((long) iArr3[i13]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i13] = (int) j27;
            int i14 = i11 + 7;
            long j28 = (j27 >>> 32) + (j19 * j7) + (((long) iArr3[i14]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i14] = (int) j28;
            int i15 = i11 + 8;
            long j29 = (j28 >>> 32) + (j19 * j20) + (((long) iArr3[i15]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i15] = (int) j29;
            iArr3[i11 + 9] = (int) (j29 >>> 32);
            i4 = i7 + 1;
            i5 = i6;
            j3 = j23;
            j17 = j20;
        }
    }

    public static void y(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = ((long) iArr2[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j2 = ((long) iArr2[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j3 = ((long) iArr2[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j4 = ((long) iArr2[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j5 = ((long) iArr2[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j6 = ((long) iArr2[5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j7 = ((long) iArr2[6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j8 = ((long) iArr2[7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j9 = ((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j10 = j9 * j;
        iArr3[0] = (int) j10;
        long j11 = (j10 >>> 32) + (j9 * j2);
        iArr3[1] = (int) j11;
        long j12 = (j11 >>> 32) + (j9 * j3);
        iArr3[2] = (int) j12;
        long j13 = (j12 >>> 32) + (j9 * j4);
        iArr3[3] = (int) j13;
        long j14 = (j13 >>> 32) + (j9 * j5);
        iArr3[4] = (int) j14;
        long j15 = (j14 >>> 32) + (j9 * j6);
        iArr3[5] = (int) j15;
        long j16 = (j15 >>> 32) + (j9 * j7);
        iArr3[6] = (int) j16;
        long j17 = (j16 >>> 32) + (j9 * j8);
        iArr3[7] = (int) j17;
        iArr3[8] = (int) (j17 >>> 32);
        int i = 1;
        for (int i2 = 8; i < i2; i2 = 8) {
            long j18 = ((long) iArr[i]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
            long j19 = (j18 * j) + (((long) iArr3[i]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i] = (int) j19;
            int i3 = i + 1;
            long j20 = (j19 >>> 32) + (j18 * j2) + (((long) iArr3[i3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i3] = (int) j20;
            int i4 = i + 2;
            long j21 = j2;
            long j22 = (j20 >>> 32) + (j18 * j3) + (((long) iArr3[i4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i4] = (int) j22;
            int i5 = i + 3;
            long j23 = (j22 >>> 32) + (j18 * j4) + (((long) iArr3[i5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i5] = (int) j23;
            int i6 = i + 4;
            long j24 = (j23 >>> 32) + (j18 * j5) + (((long) iArr3[i6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i6] = (int) j24;
            int i7 = i + 5;
            long j25 = (j24 >>> 32) + (j18 * j6) + (((long) iArr3[i7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i7] = (int) j25;
            int i8 = i + 6;
            long j26 = (j25 >>> 32) + (j18 * j7) + (((long) iArr3[i8]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i8] = (int) j26;
            int i9 = i + 7;
            long j27 = (j26 >>> 32) + (j18 * j8) + (((long) iArr3[i9]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i9] = (int) j27;
            iArr3[i + 8] = (int) (j27 >>> 32);
            j4 = j4;
            j = j;
            i = i3;
            j2 = j21;
        }
    }

    public static long z(int i, int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        long j = ((long) i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j2 = ((long) iArr[i2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j3 = (j * j2) + (((long) iArr2[i3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[i4] = (int) j3;
        long j4 = ((long) iArr[i2 + 1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j5 = (j3 >>> 32) + (j * j4) + j2 + (((long) iArr2[i3 + 1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[i4 + 1] = (int) j5;
        long j6 = j5 >>> 32;
        long j7 = ((long) iArr[i2 + 2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j8 = j6 + (j * j7) + j4 + (((long) iArr2[i3 + 2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[i4 + 2] = (int) j8;
        long j9 = ((long) iArr[i2 + 3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j10 = (j8 >>> 32) + (j * j9) + j7 + (((long) iArr2[i3 + 3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[i4 + 3] = (int) j10;
        long j11 = ((long) iArr[i2 + 4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j12 = (j10 >>> 32) + (j * j11) + j9 + (((long) iArr2[i3 + 4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[i4 + 4] = (int) j12;
        long j13 = ((long) iArr[i2 + 5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j14 = (j12 >>> 32) + (j * j13) + j11 + (((long) iArr2[i3 + 5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[i4 + 5] = (int) j14;
        long j15 = ((long) iArr[i2 + 6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j16 = (j14 >>> 32) + (j * j15) + j13 + (((long) iArr2[i3 + 6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[i4 + 6] = (int) j16;
        long j17 = ((long) iArr[i2 + 7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j18 = (j16 >>> 32) + (j * j17) + j15 + (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr2[i3 + 7]));
        iArr3[i4 + 7] = (int) j18;
        return (j18 >>> 32) + j17;
    }
}
