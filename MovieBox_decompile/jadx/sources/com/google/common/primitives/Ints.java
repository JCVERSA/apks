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

public abstract class Ints extends d {

    private static class IntArrayAsList extends AbstractList<Integer> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;
        final int[] array;
        final int end;
        final int start;

        IntArrayAsList(int[] iArr) {
            this(iArr, 0, iArr.length);
        }

        @Override
        public boolean contains(Object obj) {
            return (obj instanceof Integer) && Ints.k(this.array, ((Integer) obj).intValue(), this.start, this.end) != -1;
        }

        @Override
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof IntArrayAsList)) {
                return super.equals(obj);
            }
            IntArrayAsList intArrayAsList = (IntArrayAsList) obj;
            int size = size();
            if (intArrayAsList.size() != size) {
                return false;
            }
            for (int i10 = 0; i10 < size; i10++) {
                if (this.array[this.start + i10] != intArrayAsList.array[intArrayAsList.start + i10]) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int hashCode() {
            int i10 = 1;
            for (int i11 = this.start; i11 < this.end; i11++) {
                i10 = (i10 * 31) + Ints.i(this.array[i11]);
            }
            return i10;
        }

        @Override
        public int indexOf(Object obj) {
            int iK;
            if (!(obj instanceof Integer) || (iK = Ints.k(this.array, ((Integer) obj).intValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iK - this.start;
        }

        @Override
        public boolean isEmpty() {
            return false;
        }

        @Override
        public int lastIndexOf(Object obj) {
            int iL;
            if (!(obj instanceof Integer) || (iL = Ints.l(this.array, ((Integer) obj).intValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iL - this.start;
        }

        @Override
        public int size() {
            return this.end - this.start;
        }

        @Override
        public List<Integer> subList(int i10, int i11) {
            m.t(i10, i11, size());
            if (i10 == i11) {
                return Collections.emptyList();
            }
            int[] iArr = this.array;
            int i12 = this.start;
            return new IntArrayAsList(iArr, i10 + i12, i12 + i11);
        }

        int[] toIntArray() {
            return Arrays.copyOfRange(this.array, this.start, this.end);
        }

        @Override
        public String toString() {
            StringBuilder sb2 = new StringBuilder(size() * 5);
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

        IntArrayAsList(int[] iArr, int i10, int i11) {
            this.array = iArr;
            this.start = i10;
            this.end = i11;
        }

        @Override
        public Integer get(int i10) {
            m.m(i10, size());
            return Integer.valueOf(this.array[this.start + i10]);
        }

        @Override
        public Integer set(int i10, Integer num) {
            m.m(i10, size());
            int[] iArr = this.array;
            int i11 = this.start;
            int i12 = iArr[i11 + i10];
            iArr[i11 + i10] = ((Integer) m.o(num)).intValue();
            return Integer.valueOf(i12);
        }
    }

    private enum LexicographicalComparator implements Comparator<int[]> {
        INSTANCE;

        @Override
        public String toString() {
            return "Ints.lexicographicalComparator()";
        }

        @Override
        public int compare(int[] iArr, int[] iArr2) {
            int iMin = Math.min(iArr.length, iArr2.length);
            for (int i10 = 0; i10 < iMin; i10++) {
                int iCompare = Integer.compare(iArr[i10], iArr2[i10]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return iArr.length - iArr2.length;
        }
    }

    public static List c(int... iArr) {
        return iArr.length == 0 ? Collections.emptyList() : new IntArrayAsList(iArr);
    }

    public static int d(long j10) {
        int i10 = (int) j10;
        m.h(((long) i10) == j10, "Out of range: %s", j10);
        return i10;
    }

    public static int e(int i10, int i11) {
        return Integer.compare(i10, i11);
    }

    public static int f(int i10, int i11, int i12) {
        m.g(i11 <= i12, "min (%s) must be less than or equal to max (%s)", i11, i12);
        return Math.min(Math.max(i10, i11), i12);
    }

    public static int g(byte[] bArr) {
        m.g(bArr.length >= 4, "array too small: %s < %s", bArr.length, 4);
        return h(bArr[0], bArr[1], bArr[2], bArr[3]);
    }

    public static int h(byte b10, byte b11, byte b12, byte b13) {
        return (b10 << 24) | ((b11 & 255) << 16) | ((b12 & 255) << 8) | (b13 & 255);
    }

    public static int i(int i10) {
        return i10;
    }

    public static int j(int[] iArr, int i10) {
        return k(iArr, i10, 0, iArr.length);
    }

    public static int k(int[] iArr, int i10, int i11, int i12) {
        while (i11 < i12) {
            if (iArr[i11] == i10) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    public static int l(int[] iArr, int i10, int i11, int i12) {
        for (int i13 = i12 - 1; i13 >= i11; i13--) {
            if (iArr[i13] == i10) {
                return i13;
            }
        }
        return -1;
    }

    public static int m(int... iArr) {
        m.d(iArr.length > 0);
        int i10 = iArr[0];
        for (int i11 = 1; i11 < iArr.length; i11++) {
            int i12 = iArr[i11];
            if (i12 < i10) {
                i10 = i12;
            }
        }
        return i10;
    }

    public static int n(long j10) {
        if (j10 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j10 < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j10;
    }

    public static int[] o(Collection collection) {
        if (collection instanceof IntArrayAsList) {
            return ((IntArrayAsList) collection).toIntArray();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        int[] iArr = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            iArr[i10] = ((Number) m.o(array[i10])).intValue();
        }
        return iArr;
    }

    public static Integer p(String str) {
        return q(str, 10);
    }

    public static Integer q(String str, int i10) {
        Long lK = Longs.k(str, i10);
        if (lK == null || lK.longValue() != lK.intValue()) {
            return null;
        }
        return Integer.valueOf(lK.intValue());
    }
}
