package defpackage;

import java.util.Arrays;
import java.util.Iterator;
import java.util.RandomAccess;

public final class iv8 extends g3 implements RandomAccess {
    public final Object[] b;
    public final int c;
    public int d;
    public int e;

    public static final class a extends b3 {
        public int d;
        public int e;

        public a() {
            this.d = iv8.this.size();
            this.e = iv8.this.d;
        }

        @Override
        public void b() {
            if (this.d == 0) {
                c();
                return;
            }
            d(iv8.this.b[this.e]);
            this.e = (this.e + 1) % iv8.this.c;
            this.d--;
        }
    }

    public iv8(Object[] objArr, int i) {
        y45.j(objArr, "buffer");
        this.b = objArr;
        if (i < 0) {
            throw new IllegalArgumentException(("ring buffer filled size should not be negative but it is " + i).toString());
        }
        if (i <= objArr.length) {
            this.c = objArr.length;
            this.e = i;
            return;
        }
        throw new IllegalArgumentException(("ring buffer filled size: " + i + " cannot be larger than the buffer size: " + objArr.length).toString());
    }

    @Override
    public Object get(int i) {
        g3.Companion.b(i, size());
        return this.b[(this.d + i) % this.c];
    }

    @Override
    public int getSize() {
        return this.e;
    }

    @Override
    public Iterator iterator() {
        return new a();
    }

    public final void m(Object obj) {
        if (o()) {
            throw new IllegalStateException("ring buffer is full");
        }
        this.b[(this.d + size()) % this.c] = obj;
        this.e = size() + 1;
    }

    public final iv8 n(int i) {
        Object[] array;
        int i2 = this.c;
        int iG = wn8.g(i2 + (i2 >> 1) + 1, i);
        if (this.d == 0) {
            array = Arrays.copyOf(this.b, iG);
            y45.i(array, "copyOf(...)");
        } else {
            array = toArray(new Object[iG]);
        }
        return new iv8(array, size());
    }

    public final boolean o() {
        return size() == this.c;
    }

    public final void p(int i) {
        if (i < 0) {
            throw new IllegalArgumentException(("n shouldn't be negative but it is " + i).toString());
        }
        if (i > size()) {
            throw new IllegalArgumentException(("n shouldn't be greater than the buffer size: n = " + i + ", size = " + size()).toString());
        }
        if (i > 0) {
            int i2 = this.d;
            int i3 = (i2 + i) % this.c;
            if (i2 > i3) {
                fi.v(this.b, null, i2, this.c);
                fi.v(this.b, null, 0, i3);
            } else {
                fi.v(this.b, null, i2, i3);
            }
            this.d = i3;
            this.e = size() - i;
        }
    }

    @Override
    public Object[] toArray(Object[] objArr) {
        y45.j(objArr, "array");
        if (objArr.length < size()) {
            objArr = Arrays.copyOf(objArr, size());
            y45.i(objArr, "copyOf(...)");
        }
        int size = size();
        int i = 0;
        int i2 = 0;
        for (int i3 = this.d; i2 < size && i3 < this.c; i3++) {
            objArr[i2] = this.b[i3];
            i2++;
        }
        while (i2 < size) {
            objArr[i2] = this.b[i];
            i2++;
            i++;
        }
        return x71.f(size, objArr);
    }

    public iv8(int i) {
        this(new Object[i], 0);
    }

    @Override
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }
}
