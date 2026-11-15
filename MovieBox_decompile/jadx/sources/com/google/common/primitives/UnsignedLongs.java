package com.google.common.primitives;

import com.google.common.base.m;
import java.math.BigInteger;
import java.util.Comparator;

public abstract class UnsignedLongs {

    enum LexicographicalComparator implements Comparator<long[]> {
        INSTANCE;

        @Override
        public String toString() {
            return "UnsignedLongs.lexicographicalComparator()";
        }

        @Override
        public int compare(long[] jArr, long[] jArr2) {
            int iMin = Math.min(jArr.length, jArr2.length);
            for (int i10 = 0; i10 < iMin; i10++) {
                long j10 = jArr[i10];
                long j11 = jArr2[i10];
                if (j10 != j11) {
                    return UnsignedLongs.a(j10, j11);
                }
            }
            return jArr.length - jArr2.length;
        }
    }

    private static final class a {

        static final long[] f30098a = new long[37];

        static final int[] f30099b = new int[37];

        static final int[] f30100c = new int[37];

        static {
            BigInteger bigInteger = new BigInteger("10000000000000000", 16);
            for (int i10 = 2; i10 <= 36; i10++) {
                long j10 = i10;
                f30098a[i10] = UnsignedLongs.b(-1L, j10);
                f30099b[i10] = (int) UnsignedLongs.e(-1L, j10);
                f30100c[i10] = bigInteger.toString(i10).length() - 1;
            }
        }

        static boolean a(long j10, int i10, int i11) {
            if (j10 < 0) {
                return true;
            }
            long j11 = f30098a[i11];
            if (j10 < j11) {
                return false;
            }
            return j10 > j11 || i10 > f30099b[i11];
        }
    }

    public static int a(long j10, long j11) {
        return Longs.c(c(j10), c(j11));
    }

    public static long b(long j10, long j11) {
        if (j11 < 0) {
            return a(j10, j11) < 0 ? 0L : 1L;
        }
        if (j10 >= 0) {
            return j10 / j11;
        }
        long j12 = ((j10 >>> 1) / j11) << 1;
        return j12 + ((long) (a(j10 - (j12 * j11), j11) < 0 ? 0 : 1));
    }

    private static long c(long j10) {
        return j10 ^ Long.MIN_VALUE;
    }

    public static long d(String str, int i10) {
        m.o(str);
        if (str.length() == 0) {
            throw new NumberFormatException("empty string");
        }
        if (i10 < 2 || i10 > 36) {
            throw new NumberFormatException("illegal radix: " + i10);
        }
        int i11 = a.f30100c[i10] - 1;
        long j10 = 0;
        for (int i12 = 0; i12 < str.length(); i12++) {
            int iDigit = Character.digit(str.charAt(i12), i10);
            if (iDigit == -1) {
                throw new NumberFormatException(str);
            }
            if (i12 > i11 && a.a(j10, iDigit, i10)) {
                throw new NumberFormatException("Too large for unsigned long: " + str);
            }
            j10 = (j10 * ((long) i10)) + ((long) iDigit);
        }
        return j10;
    }

    public static long e(long j10, long j11) {
        if (j11 < 0) {
            return a(j10, j11) < 0 ? j10 : j10 - j11;
        }
        if (j10 >= 0) {
            return j10 % j11;
        }
        long j12 = j10 - ((((j10 >>> 1) / j11) << 1) * j11);
        if (a(j12, j11) < 0) {
            j11 = 0;
        }
        return j12 - j11;
    }

    public static String f(long j10) {
        return g(j10, 10);
    }

    public static String g(long j10, int i10) {
        m.f(i10 >= 2 && i10 <= 36, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX", i10);
        if (j10 == 0) {
            return "0";
        }
        if (j10 > 0) {
            return Long.toString(j10, i10);
        }
        int i11 = 64;
        char[] cArr = new char[64];
        int i12 = i10 - 1;
        if ((i10 & i12) == 0) {
            int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(i10);
            do {
                i11--;
                cArr[i11] = Character.forDigit(((int) j10) & i12, i10);
                j10 >>>= iNumberOfTrailingZeros;
            } while (j10 != 0);
        } else {
            long jB = (i10 & 1) == 0 ? (j10 >>> 1) / ((long) (i10 >>> 1)) : b(j10, i10);
            long j11 = i10;
            int i13 = 63;
            cArr[63] = Character.forDigit((int) (j10 - (jB * j11)), i10);
            while (jB > 0) {
                i13--;
                cArr[i13] = Character.forDigit((int) (jB % j11), i10);
                jB /= j11;
            }
            i11 = i13;
        }
        return new String(cArr, i11, 64 - i11);
    }
}
