package com.google.common.primitives;

import com.google.common.base.m;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;

public abstract class Longs {

    private enum LexicographicalComparator implements Comparator<long[]> {
        INSTANCE;

        @Override
        public String toString() {
            return "Longs.lexicographicalComparator()";
        }

        @Override
        public int compare(long[] jArr, long[] jArr2) {
            int iMin = Math.min(jArr.length, jArr2.length);
            for (int i10 = 0; i10 < iMin; i10++) {
                int iCompare = Long.compare(jArr[i10], jArr2[i10]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return jArr.length - jArr2.length;
        }
    }

    private static class LongArrayAsList extends AbstractList<Long> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;
        final long[] array;
        final int end;
        final int start;

        LongArrayAsList(long[] jArr) {
            this(jArr, 0, jArr.length);
        }

        @Override
        public boolean contains(Object obj) {
            return (obj instanceof Long) && Longs.f(this.array, ((Long) obj).longValue(), this.start, this.end) != -1;
        }

        @Override
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof LongArrayAsList)) {
                return super.equals(obj);
            }
            LongArrayAsList longArrayAsList = (LongArrayAsList) obj;
            int size = size();
            if (longArrayAsList.size() != size) {
                return false;
            }
            for (int i10 = 0; i10 < size; i10++) {
                if (this.array[this.start + i10] != longArrayAsList.array[longArrayAsList.start + i10]) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int hashCode() {
            int iE = 1;
            for (int i10 = this.start; i10 < this.end; i10++) {
                iE = (iE * 31) + Longs.e(this.array[i10]);
            }
            return iE;
        }

        @Override
        public int indexOf(Object obj) {
            int iF;
            if (!(obj instanceof Long) || (iF = Longs.f(this.array, ((Long) obj).longValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iF - this.start;
        }

        @Override
        public boolean isEmpty() {
            return false;
        }

        @Override
        public int lastIndexOf(Object obj) {
            int iG;
            if (!(obj instanceof Long) || (iG = Longs.g(this.array, ((Long) obj).longValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iG - this.start;
        }

        @Override
        public int size() {
            return this.end - this.start;
        }

        @Override
        public List<Long> subList(int i10, int i11) {
            m.t(i10, i11, size());
            if (i10 == i11) {
                return Collections.emptyList();
            }
            long[] jArr = this.array;
            int i12 = this.start;
            return new LongArrayAsList(jArr, i10 + i12, i12 + i11);
        }

        long[] toLongArray() {
            return Arrays.copyOfRange(this.array, this.start, this.end);
        }

        @Override
        public String toString() {
            StringBuilder sb2 = new StringBuilder(size() * 10);
            sb2.append('[');
            sb2.append(this.array[this.start]);
            int i10 = this.start;
            while (true) {
                i10++;
                if (i10 >= this.end) {
                    sb2.append(']');
                    return sb2.toString();
                }
                sb2.append(", ");
                sb2.append(this.array[i10]);
            }
        }

        LongArrayAsList(long[] jArr, int i10, int i11) {
            this.array = jArr;
            this.start = i10;
            this.end = i11;
        }

        @Override
        public Long get(int i10) {
            m.m(i10, size());
            return Long.valueOf(this.array[this.start + i10]);
        }

        @Override
        public Long set(int i10, Long l10) {
            m.m(i10, size());
            long[] jArr = this.array;
            int i11 = this.start;
            long j10 = jArr[i11 + i10];
            jArr[i11 + i10] = ((Long) m.o(l10)).longValue();
            return Long.valueOf(j10);
        }
    }

    static final class a {

        private static final byte[] f30097a;

        static {
            byte[] bArr = new byte[128];
            Arrays.fill(bArr, (byte) -1);
            for (int i10 = 0; i10 < 10; i10++) {
                bArr[i10 + 48] = (byte) i10;
            }
            for (int i11 = 0; i11 < 26; i11++) {
                byte b10 = (byte) (i11 + 10);
                bArr[i11 + 65] = b10;
                bArr[i11 + 97] = b10;
            }
            f30097a = bArr;
        }

        static int a(char c10) {
            if (c10 < 128) {
                return f30097a[c10];
            }
            return -1;
        }
    }

    public static int c(long j10, long j11) {
        return Long.compare(j10, j11);
    }

    public static long d(byte b10, byte b11, byte b12, byte b13, byte b14, byte b15, byte b16, byte b17) {
        return ((((long) b11) & 255) << 48) | ((((long) b10) & 255) << 56) | ((((long) b12) & 255) << 40) | ((((long) b13) & 255) << 32) | ((((long) b14) & 255) << 24) | ((((long) b15) & 255) << 16) | ((((long) b16) & 255) << 8) | (((long) b17) & 255);
    }

    public static int e(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    public static int f(long[] jArr, long j10, int i10, int i11) {
        while (i10 < i11) {
            if (jArr[i10] == j10) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static int g(long[] jArr, long j10, int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            if (jArr[i12] == j10) {
                return i12;
            }
        }
        return -1;
    }

    public static long h(long... jArr) {
        m.d(jArr.length > 0);
        long j10 = jArr[0];
        for (int i10 = 1; i10 < jArr.length; i10++) {
            long j11 = jArr[i10];
            if (j11 > j10) {
                j10 = j11;
            }
        }
        return j10;
    }

    public static long i(long... jArr) {
        m.d(jArr.length > 0);
        long j10 = jArr[0];
        for (int i10 = 1; i10 < jArr.length; i10++) {
            long j11 = jArr[i10];
            if (j11 < j10) {
                j10 = j11;
            }
        }
        return j10;
    }

    public static long[] j(Collection collection) {
        if (collection instanceof LongArrayAsList) {
            return ((LongArrayAsList) collection).toLongArray();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        long[] jArr = new long[length];
        for (int i10 = 0; i10 < length; i10++) {
            jArr[i10] = ((Number) m.o(array[i10])).longValue();
        }
        return jArr;
    }

    public static Long k(String str, int i10) {
        if (((String) m.o(str)).isEmpty()) {
            return null;
        }
        if (i10 < 2 || i10 > 36) {
            throw new IllegalArgumentException("radix must be between MIN_RADIX and MAX_RADIX but was " + i10);
        }
        int i11 = str.charAt(0) == '-' ? 1 : 0;
        if (i11 == str.length()) {
            return null;
        }
        int i12 = i11 + 1;
        int iA = a.a(str.charAt(i11));
        if (iA < 0 || iA >= i10) {
            return null;
        }
        long j10 = -iA;
        long j11 = i10;
        long j12 = Long.MIN_VALUE / j11;
        while (i12 < str.length()) {
            int i13 = i12 + 1;
            int iA2 = a.a(str.charAt(i12));
            if (iA2 < 0 || iA2 >= i10 || j10 < j12) {
                return null;
            }
            long j13 = j10 * j11;
            long j14 = iA2;
            if (j13 < j14 - Long.MIN_VALUE) {
                return null;
            }
            j10 = j13 - j14;
            i12 = i13;
        }
        if (i11 != 0) {
            return Long.valueOf(j10);
        }
        if (j10 == Long.MIN_VALUE) {
            return null;
        }
        return Long.valueOf(-j10);
    }
}
