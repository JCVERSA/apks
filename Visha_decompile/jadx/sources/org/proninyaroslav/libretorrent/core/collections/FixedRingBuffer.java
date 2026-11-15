package org.proninyaroslav.libretorrent.core.collections;

import java.util.Arrays;
import java.util.Iterator;

public class FixedRingBuffer<E> implements Iterable<E> {
    public Object[] b;
    public int c = -1;
    public int d;
    public int e;

    public class FixedRingBufferIterator implements Iterator<E> {
        public int b;

        @Override
        public boolean hasNext() {
            return this.b < FixedRingBuffer.this.size();
        }

        @Override
        public Object next() {
            FixedRingBuffer fixedRingBuffer = FixedRingBuffer.this;
            int i = this.b;
            this.b = i + 1;
            return fixedRingBuffer.get(i);
        }

        public FixedRingBufferIterator() {
        }
    }

    public FixedRingBuffer(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("Initial capacity must be greater or equal 0");
        }
        if (i2 <= 0) {
            throw new IllegalArgumentException("Capacity must be greater than 0");
        }
        if (i > i2) {
            throw new IllegalArgumentException("Initial capacity cannot be greater than capacity");
        }
        this.e = i2;
        this.b = new Object[i == 0 ? i2 : i];
    }

    public void b(Object obj) {
        f();
        int i = this.c;
        if (i < 0) {
            this.c = 0;
        } else if (this.d == i) {
            int i2 = i + 1;
            this.c = i2;
            this.c = i2 % this.e;
        }
        Object[] objArr = this.b;
        int i3 = this.d;
        objArr[i3] = obj;
        int i4 = i3 + 1;
        this.d = i4;
        this.d = i4 % this.e;
    }

    public final void c() {
        this.c = -1;
        this.d = 0;
    }

    public void clear() {
        if (isEmpty()) {
            return;
        }
        Arrays.fill(this.b, 0, size() - 1, (Object) null);
        c();
    }

    public final void f() {
        int size = size();
        Object[] objArr = this.b;
        if (size >= objArr.length) {
            int length = objArr.length;
            int i = this.e;
            if (length == i) {
                return;
            }
            Object[] objArr2 = new Object[Math.min(objArr.length * 2, i)];
            Object[] objArr3 = this.b;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.b = objArr2;
        }
    }

    public Object get(int i) {
        int size = size();
        if (i >= 0 && i < size) {
            return this.b[(this.c + i) % this.e];
        }
        throw new IndexOutOfBoundsException("index = " + i + ", size = " + size);
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public Iterator iterator() {
        return new FixedRingBufferIterator();
    }

    public int size() {
        int i = this.c;
        if (i == -1) {
            return 0;
        }
        int i2 = this.d;
        return i2 <= i ? (this.e - i) + i2 : i2 - i;
    }
}
