package com.google.common.primitives;

import androidx.media3.muxer.MuxerUtil;
import defpackage.xd8;
import java.util.Comparator;

public abstract class UnsignedInts {

    public enum LexicographicalComparator implements Comparator<int[]> {
        INSTANCE;

        @Override
        public String toString() {
            return "UnsignedInts.lexicographicalComparator()";
        }

        @Override
        public int compare(int[] iArr, int[] iArr2) {
            int iMin = Math.min(iArr.length, iArr2.length);
            for (int i = 0; i < iMin; i++) {
                int i2 = iArr[i];
                int i3 = iArr2[i];
                if (i2 != i3) {
                    return UnsignedInts.a(i2, i3);
                }
            }
            return iArr.length - iArr2.length;
        }
    }

    public static int a(int i, int i2) {
        return Ints.e(c(i), c(i2));
    }

    public static int b(int i, int i2) {
        return (int) (f(i) / f(i2));
    }

    public static int c(int i) {
        return i ^ Integer.MIN_VALUE;
    }

    public static int d(String str, int i) {
        xd8.o(str);
        long j = Long.parseLong(str, i);
        if ((MuxerUtil.UNSIGNED_INT_MAX_VALUE & j) == j) {
            return (int) j;
        }
        throw new NumberFormatException("Input " + str + " in base " + i + " is not in the range of an unsigned integer");
    }

    public static int e(int i, int i2) {
        return (int) (f(i) % f(i2));
    }

    public static long f(int i) {
        return ((long) i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
    }

    public static String g(int i, int i2) {
        return Long.toString(((long) i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE, i2);
    }
}
