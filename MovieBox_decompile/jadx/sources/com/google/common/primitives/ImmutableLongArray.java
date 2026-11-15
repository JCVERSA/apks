package com.google.common.primitives;

import com.google.common.base.m;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

public final class ImmutableLongArray implements Serializable {
    private static final ImmutableLongArray EMPTY = new ImmutableLongArray(new long[0]);
    private final long[] array;
    private final int end;
    private final transient int start;

    static class AsList extends AbstractList<Long> implements RandomAccess, Serializable {
        private final ImmutableLongArray parent;

        @Override
        public boolean contains(Object obj) {
            return indexOf(obj) >= 0;
        }

        @Override
        public boolean equals(Object obj) {
            if (obj instanceof AsList) {
                return this.parent.equals(((AsList) obj).parent);
            }
            if (!(obj instanceof List)) {
                return false;
            }
            List list = (List) obj;
            if (size() != list.size()) {
                return false;
            }
            int i10 = this.parent.start;
            for (Object obj2 : list) {
                if (obj2 instanceof Long) {
                    int i11 = i10 + 1;
                    if (this.parent.array[i10] == ((Long) obj2).longValue()) {
                        i10 = i11;
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public int hashCode() {
            return this.parent.hashCode();
        }

        @Override
        public int indexOf(Object obj) {
            if (obj instanceof Long) {
                return this.parent.indexOf(((Long) obj).longValue());
            }
            return -1;
        }

        @Override
        public int lastIndexOf(Object obj) {
            if (obj instanceof Long) {
                return this.parent.lastIndexOf(((Long) obj).longValue());
            }
            return -1;
        }

        @Override
        public int size() {
            return this.parent.length();
        }

        @Override
        public List<Long> subList(int i10, int i11) {
            return this.parent.subArray(i10, i11).asList();
        }

        @Override
        public String toString() {
            return this.parent.toString();
        }

        private AsList(ImmutableLongArray immutableLongArray) {
            this.parent = immutableLongArray;
        }

        @Override
        public Long get(int i10) {
            return Long.valueOf(this.parent.get(i10));
        }
    }

    public static final class b {

        private long[] f30095a;

        private int f30096b = 0;

        b(int i10) {
            this.f30095a = new long[i10];
        }

        private void e(int i10) {
            int i11 = this.f30096b + i10;
            long[] jArr = this.f30095a;
            if (i11 > jArr.length) {
                this.f30095a = Arrays.copyOf(jArr, f(jArr.length, i11));
            }
        }

        private static int f(int i10, int i11) {
            if (i11 < 0) {
                throw new AssertionError("cannot store more than MAX_VALUE elements");
            }
            int iHighestOneBit = i10 + (i10 >> 1) + 1;
            if (iHighestOneBit < i11) {
                iHighestOneBit = Integer.highestOneBit(i11 - 1) << 1;
            }
            if (iHighestOneBit < 0) {
                return Integer.MAX_VALUE;
            }
            return iHighestOneBit;
        }

        public b a(long j10) {
            e(1);
            long[] jArr = this.f30095a;
            int i10 = this.f30096b;
            jArr[i10] = j10;
            this.f30096b = i10 + 1;
            return this;
        }

        public b b(Iterable iterable) {
            if (iterable instanceof Collection) {
                return c((Collection) iterable);
            }
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                a(((Long) it.next()).longValue());
            }
            return this;
        }

        public b c(Collection collection) {
            e(collection.size());
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                Long l10 = (Long) it.next();
                long[] jArr = this.f30095a;
                int i10 = this.f30096b;
                this.f30096b = i10 + 1;
                jArr[i10] = l10.longValue();
            }
            return this;
        }

        public ImmutableLongArray d() {
            if (this.f30096b == 0) {
                return ImmutableLongArray.EMPTY;
            }
            return new ImmutableLongArray(this.f30095a, 0, this.f30096b);
        }
    }

    public static b builder(int i10) {
        m.f(i10 >= 0, "Invalid initialCapacity: %s", i10);
        return new b(i10);
    }

    public static ImmutableLongArray copyOf(long[] jArr) {
        return jArr.length == 0 ? EMPTY : new ImmutableLongArray(Arrays.copyOf(jArr, jArr.length));
    }

    private boolean isPartialView() {
        return this.start > 0 || this.end < this.array.length;
    }

    public static ImmutableLongArray of() {
        return EMPTY;
    }

    public List<Long> asList() {
        return new AsList();
    }

    public boolean contains(long j10) {
        return indexOf(j10) >= 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ImmutableLongArray)) {
            return false;
        }
        ImmutableLongArray immutableLongArray = (ImmutableLongArray) obj;
        if (length() != immutableLongArray.length()) {
            return false;
        }
        for (int i10 = 0; i10 < length(); i10++) {
            if (get(i10) != immutableLongArray.get(i10)) {
                return false;
            }
        }
        return true;
    }

    public long get(int i10) {
        m.m(i10, length());
        return this.array[this.start + i10];
    }

    public int hashCode() {
        int iE = 1;
        for (int i10 = this.start; i10 < this.end; i10++) {
            iE = (iE * 31) + Longs.e(this.array[i10]);
        }
        return iE;
    }

    public int indexOf(long j10) {
        for (int i10 = this.start; i10 < this.end; i10++) {
            if (this.array[i10] == j10) {
                return i10 - this.start;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return this.end == this.start;
    }

    public int lastIndexOf(long j10) {
        int i10;
        int i11 = this.end;
        do {
            i11--;
            i10 = this.start;
            if (i11 < i10) {
                return -1;
            }
        } while (this.array[i11] != j10);
        return i11 - i10;
    }

    public int length() {
        return this.end - this.start;
    }

    Object readResolve() {
        return isEmpty() ? EMPTY : this;
    }

    public ImmutableLongArray subArray(int i10, int i11) {
        m.t(i10, i11, length());
        if (i10 == i11) {
            return EMPTY;
        }
        long[] jArr = this.array;
        int i12 = this.start;
        return new ImmutableLongArray(jArr, i10 + i12, i12 + i11);
    }

    public long[] toArray() {
        return Arrays.copyOfRange(this.array, this.start, this.end);
    }

    public String toString() {
        if (isEmpty()) {
            return "[]";
        }
        StringBuilder sb2 = new StringBuilder(length() * 5);
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

    public ImmutableLongArray trimmed() {
        return isPartialView() ? new ImmutableLongArray(toArray()) : this;
    }

    Object writeReplace() {
        return trimmed();
    }

    private ImmutableLongArray(long[] jArr) {
        this(jArr, 0, jArr.length);
    }

    public static ImmutableLongArray of(long j10) {
        return new ImmutableLongArray(new long[]{j10});
    }

    private ImmutableLongArray(long[] jArr, int i10, int i11) {
        this.array = jArr;
        this.start = i10;
        this.end = i11;
    }

    public static b builder() {
        return new b(10);
    }

    public static ImmutableLongArray of(long j10, long j11) {
        return new ImmutableLongArray(new long[]{j10, j11});
    }

    public static ImmutableLongArray copyOf(Collection<Long> collection) {
        return collection.isEmpty() ? EMPTY : new ImmutableLongArray(Longs.j(collection));
    }

    public static ImmutableLongArray of(long j10, long j11, long j12) {
        return new ImmutableLongArray(new long[]{j10, j11, j12});
    }

    public static ImmutableLongArray copyOf(Iterable<Long> iterable) {
        if (iterable instanceof Collection) {
            return copyOf((Collection<Long>) iterable);
        }
        return builder().b(iterable).d();
    }

    public static ImmutableLongArray of(long j10, long j11, long j12, long j13) {
        return new ImmutableLongArray(new long[]{j10, j11, j12, j13});
    }

    public static ImmutableLongArray of(long j10, long j11, long j12, long j13, long j14) {
        return new ImmutableLongArray(new long[]{j10, j11, j12, j13, j14});
    }

    public static ImmutableLongArray of(long j10, long j11, long j12, long j13, long j14, long j15) {
        return new ImmutableLongArray(new long[]{j10, j11, j12, j13, j14, j15});
    }

    public static ImmutableLongArray of(long j10, long... jArr) {
        m.e(jArr.length <= 2147483646, "the total number of elements must fit in an int");
        long[] jArr2 = new long[jArr.length + 1];
        jArr2[0] = j10;
        System.arraycopy(jArr, 0, jArr2, 1, jArr.length);
        return new ImmutableLongArray(jArr2);
    }
}
