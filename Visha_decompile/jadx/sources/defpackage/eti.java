package defpackage;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

public final class eti extends iri implements RandomAccess, xsi, wti {
    public static final long[] e;
    public static final eti f;
    public long[] c;
    public int d;

    static {
        long[] jArr = new long[0];
        e = jArr;
        f = new eti(jArr, 0, false);
    }

    public eti(long[] jArr, int i, boolean z) {
        super(z);
        this.c = jArr;
        this.d = i;
    }

    public static eti j() {
        return f;
    }

    public static int k(int i) {
        return Math.max(((i * 3) / 2) + 1, 10);
    }

    @Override
    public final void add(int i, Object obj) {
        int i2;
        long jLongValue = ((Long) obj).longValue();
        b();
        if (i < 0 || i > (i2 = this.d)) {
            throw new IndexOutOfBoundsException(l(i));
        }
        int i3 = i + 1;
        long[] jArr = this.c;
        int length = jArr.length;
        if (i2 < length) {
            System.arraycopy(jArr, i, jArr, i3, i2 - i);
        } else {
            long[] jArr2 = new long[k(length)];
            System.arraycopy(this.c, 0, jArr2, 0, i);
            System.arraycopy(this.c, i, jArr2, i3, this.d - i);
            this.c = jArr2;
        }
        this.c[i] = jLongValue;
        this.d++;
        ((AbstractList) this).modCount++;
    }

    @Override
    public final boolean addAll(Collection collection) {
        b();
        Charset charset = zsi.a;
        collection.getClass();
        if (!(collection instanceof eti)) {
            return super.addAll(collection);
        }
        eti etiVar = (eti) collection;
        int i = etiVar.d;
        if (i == 0) {
            return false;
        }
        int i2 = this.d;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        long[] jArr = this.c;
        if (i3 > jArr.length) {
            this.c = Arrays.copyOf(jArr, i3);
        }
        System.arraycopy(etiVar.c, 0, this.c, this.d, etiVar.d);
        this.d = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    public final long c(int i) {
        m(i);
        return this.c[i];
    }

    @Override
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof eti)) {
            return super.equals(obj);
        }
        eti etiVar = (eti) obj;
        if (this.d != etiVar.d) {
            return false;
        }
        long[] jArr = etiVar.c;
        for (int i = 0; i < this.d; i++) {
            if (this.c[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    public final long f(int i, long j) {
        b();
        m(i);
        long[] jArr = this.c;
        long j2 = jArr[i];
        jArr[i] = j;
        return j2;
    }

    @Override
    public final Object get(int i) {
        m(i);
        return Long.valueOf(this.c[i]);
    }

    @Override
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.d; i2++) {
            long j = this.c[i2];
            Charset charset = zsi.a;
            i = (i * 31) + ((int) (j ^ (j >>> 32)));
        }
        return i;
    }

    public final void i(long j) {
        b();
        int i = this.d;
        int length = this.c.length;
        if (i == length) {
            long[] jArr = new long[k(length)];
            System.arraycopy(this.c, 0, jArr, 0, this.d);
            this.c = jArr;
        }
        long[] jArr2 = this.c;
        int i2 = this.d;
        this.d = i2 + 1;
        jArr2[i2] = j;
    }

    @Override
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long jLongValue = ((Long) obj).longValue();
        int i = this.d;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.c[i2] == jLongValue) {
                return i2;
            }
        }
        return -1;
    }

    public final String l(int i) {
        return "Index:" + i + ", Size:" + this.d;
    }

    public final void m(int i) {
        if (i < 0 || i >= this.d) {
            throw new IndexOutOfBoundsException(l(i));
        }
    }

    @Override
    public final Object remove(int i) {
        b();
        m(i);
        long[] jArr = this.c;
        long j = jArr[i];
        int i2 = this.d;
        if (i < i2 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (i2 - i) - 1);
        }
        this.d--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override
    public final void removeRange(int i, int i2) {
        b();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.c;
        System.arraycopy(jArr, i2, jArr, i, this.d - i2);
        this.d -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override
    public final Object set(int i, Object obj) {
        return Long.valueOf(f(i, ((Long) obj).longValue()));
    }

    @Override
    public final int size() {
        return this.d;
    }

    @Override
    public final xsi e(int i) {
        if (i >= this.d) {
            return new eti(i == 0 ? e : Arrays.copyOf(this.c, i), this.d, true);
        }
        throw new IllegalArgumentException();
    }

    public final void zzi(int i) {
        int length = this.c.length;
        if (i <= length) {
            return;
        }
        if (length == 0) {
            this.c = new long[Math.max(i, 10)];
            return;
        }
        while (length < i) {
            length = k(length);
        }
        this.c = Arrays.copyOf(this.c, length);
    }

    @Override
    public final boolean add(Object obj) {
        i(((Long) obj).longValue());
        return true;
    }
}
