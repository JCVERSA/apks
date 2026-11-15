package com.google.common.primitives;

import com.google.common.base.m;
import java.util.Comparator;

public abstract class UnsignedInts {

    enum LexicographicalComparator implements Comparator<int[]> {
        INSTANCE;

        @Override
        public String toString() {
            return "UnsignedInts.lexicographicalComparator()";
        }

        @Override
        public int compare(int[] iArr, int[] iArr2) {
            int iMin = Math.min(iArr.length, iArr2.length);
            for (int i10 = 0; i10 < iMin; i10++) {
                int i11 = iArr[i10];
                int i12 = iArr2[i10];
                if (i11 != i12) {
                    return UnsignedInts.a(i11, i12);
                }
            }
            return iArr.length - iArr2.length;
        }
    }

    public static int a(int i10, int i11) {
        return Ints.e(c(i10), c(i11));
    }

    public static int b(int i10, int i11) {
        return (int) (f(i10) / f(i11));
    }

    static int c(int i10) {
        return i10 ^ Integer.MIN_VALUE;
    }

    public static int d(String str, int i10) {
        m.o(str);
        long j10 = Long.parseLong(str, i10);
        if ((4294967295L & j10) == j10) {
            return (int) j10;
        }
        throw new NumberFormatException("Input " + str + " in base " + i10 + " is not in the range of an unsigned integer");
    }

    public static int e(int i10, int i11) {
        return (int) (f(i10) % f(i11));
    }

    public static long f(int i10) {
        return ((long) i10) & 4294967295L;
    }

    public static String g(int i10, int i11) {
        return Long.toString(((long) i10) & 4294967295L, i11);
    }
}
