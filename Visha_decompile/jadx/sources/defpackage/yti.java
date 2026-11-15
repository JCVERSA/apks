package defpackage;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

public final class yti extends iri implements RandomAccess {
    public static final Object[] e;
    public static final yti f;
    public Object[] c;
    public int d;

    static {
        Object[] objArr = new Object[0];
        e = objArr;
        f = new yti(objArr, 0, false);
    }

    public yti(Object[] objArr, int i, boolean z) {
        super(z);
        this.c = objArr;
        this.d = i;
    }

    public static yti c() {
        return f;
    }

    public static int i(int i) {
        return Math.max(((i * 3) / 2) + 1, 10);
    }

    private final void zzi(int i) {
        if (i < 0 || i >= this.d) {
            throw new IndexOutOfBoundsException(j(i));
        }
    }

    @Override
    public final void add(int i, Object obj) {
        int i2;
        b();
        if (i < 0 || i > (i2 = this.d)) {
            throw new IndexOutOfBoundsException(j(i));
        }
        int i3 = i + 1;
        Object[] objArr = this.c;
        int length = objArr.length;
        if (i2 < length) {
            System.arraycopy(objArr, i, objArr, i3, i2 - i);
        } else {
            Object[] objArr2 = new Object[i(length)];
            System.arraycopy(this.c, 0, objArr2, 0, i);
            System.arraycopy(this.c, i, objArr2, i3, this.d - i);
            this.c = objArr2;
        }
        this.c[i] = obj;
        this.d++;
        ((AbstractList) this).modCount++;
    }

    @Override
    public final ysi e(int i) {
        if (i >= this.d) {
            return new yti(i == 0 ? e : Arrays.copyOf(this.c, i), this.d, true);
        }
        throw new IllegalArgumentException();
    }

    public final void f(int i) {
        int length = this.c.length;
        if (i <= length) {
            return;
        }
        if (length == 0) {
            this.c = new Object[Math.max(i, 10)];
            return;
        }
        while (length < i) {
            length = i(length);
        }
        this.c = Arrays.copyOf(this.c, length);
    }

    @Override
    public final Object get(int i) {
        zzi(i);
        return this.c[i];
    }

    public final String j(int i) {
        return "Index:" + i + ", Size:" + this.d;
    }

    @Override
    public final Object remove(int i) {
        b();
        zzi(i);
        Object[] objArr = this.c;
        Object obj = objArr[i];
        int i2 = this.d;
        if (i < i2 - 1) {
            System.arraycopy(objArr, i + 1, objArr, i, (i2 - i) - 1);
        }
        this.d--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override
    public final Object set(int i, Object obj) {
        b();
        zzi(i);
        Object[] objArr = this.c;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override
    public final int size() {
        return this.d;
    }

    @Override
    public final boolean add(Object obj) {
        b();
        int i = this.d;
        int length = this.c.length;
        if (i == length) {
            this.c = Arrays.copyOf(this.c, i(length));
        }
        Object[] objArr = this.c;
        int i2 = this.d;
        this.d = i2 + 1;
        objArr[i2] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
