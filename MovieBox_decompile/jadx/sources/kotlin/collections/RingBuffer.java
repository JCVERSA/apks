package kotlin.collections;

import java.util.Arrays;
import java.util.Iterator;
import java.util.RandomAccess;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

final class RingBuffer extends AbstractList implements RandomAccess {

    private final Object[] f64170a;

    private final int f64171b;

    private int f64172c;

    private int f64173d;

    public RingBuffer(Object[] buffer, int i10) {
        Intrinsics.h(buffer, "buffer");
        this.f64170a = buffer;
        if (i10 < 0) {
            throw new IllegalArgumentException(("ring buffer filled size should not be negative but it is " + i10).toString());
        }
        if (i10 <= buffer.length) {
            this.f64171b = buffer.length;
            this.f64173d = i10;
            return;
        }
        throw new IllegalArgumentException(("ring buffer filled size: " + i10 + " cannot be larger than the buffer size: " + buffer.length).toString());
    }

    @Override
    public final void add(Object obj) {
        if (l()) {
            throw new IllegalStateException("ring buffer is full");
        }
        this.f64170a[(this.f64172c + size()) % this.f64171b] = obj;
        this.f64173d = size() + 1;
    }

    @Override
    public Object get(int i10) {
        AbstractList.INSTANCE.b(i10, size());
        return this.f64170a[(this.f64172c + i10) % this.f64171b];
    }

    @Override
    public int get_size() {
        return this.f64173d;
    }

    @Override
    public Iterator iterator() {
        return new AbstractIterator<Object>() {

            private int count;

            private int index;

            {
                this.count = RingBuffer.this.size();
                this.index = RingBuffer.this.f64172c;
            }

            @Override
            protected void a() {
                if (this.count == 0) {
                    c();
                    return;
                }
                e(RingBuffer.this.f64170a[this.index]);
                this.index = (this.index + 1) % RingBuffer.this.f64171b;
                this.count--;
            }
        };
    }

    public final RingBuffer j(int i10) {
        Object[] array;
        int i11 = this.f64171b;
        int iH = RangesKt.h(i11 + (i11 >> 1) + 1, i10);
        if (this.f64172c == 0) {
            array = Arrays.copyOf(this.f64170a, iH);
            Intrinsics.g(array, "copyOf(...)");
        } else {
            array = toArray(new Object[iH]);
        }
        return new RingBuffer(array, size());
    }

    public final boolean l() {
        return size() == this.f64171b;
    }

    public final void m(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException(("n shouldn't be negative but it is " + i10).toString());
        }
        if (i10 > size()) {
            throw new IllegalArgumentException(("n shouldn't be greater than the buffer size: n = " + i10 + ", size = " + size()).toString());
        }
        if (i10 > 0) {
            int i11 = this.f64172c;
            int i12 = (i11 + i10) % this.f64171b;
            if (i11 > i12) {
                ArraysKt.u(this.f64170a, null, i11, this.f64171b);
                ArraysKt.u(this.f64170a, null, 0, i12);
            } else {
                ArraysKt.u(this.f64170a, null, i11, i12);
            }
            this.f64172c = i12;
            this.f64173d = size() - i10;
        }
    }

    @Override
    public Object[] toArray(Object[] array) {
        Intrinsics.h(array, "array");
        if (array.length < size()) {
            array = Arrays.copyOf(array, size());
            Intrinsics.g(array, "copyOf(...)");
        }
        int size = size();
        int i10 = 0;
        int i11 = 0;
        for (int i12 = this.f64172c; i11 < size && i12 < this.f64171b; i12++) {
            array[i11] = this.f64170a[i12];
            i11++;
        }
        while (i11 < size) {
            array[i11] = this.f64170a[i10];
            i11++;
            i10++;
        }
        return CollectionsKt.g(size, array);
    }

    public RingBuffer(int i10) {
        this(new Object[i10], 0);
    }

    @Override
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }
}
