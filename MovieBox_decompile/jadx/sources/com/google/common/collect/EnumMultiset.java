package com.google.common.collect;

import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.Enum;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

public final class EnumMultiset<E extends Enum<E>> extends d implements Serializable {
    private static final long serialVersionUID = 0;
    private transient int[] counts;
    private transient int distinctElements;
    private transient E[] enumConstants;
    private transient long size;
    private transient Class<E> type;

    class a extends c {
        a() {
            super();
        }

        @Override
        public Enum a(int i10) {
            return EnumMultiset.this.enumConstants[i10];
        }
    }

    class b extends c {

        class a extends Multisets.b {

            final int f29560a;

            final b f29561b;

            a(b bVar, int i10) {
                this.f29560a = i10;
                this.f29561b = bVar;
            }

            @Override
            public Enum getElement() {
                return EnumMultiset.this.enumConstants[this.f29560a];
            }

            @Override
            public int getCount() {
                return EnumMultiset.this.counts[this.f29560a];
            }
        }

        b() {
            super();
        }

        @Override
        public l3.a a(int i10) {
            return new a(this, i10);
        }
    }

    abstract class c implements Iterator {

        int f29562a = 0;

        int f29563b = -1;

        c() {
        }

        abstract Object a(int i10);

        @Override
        public boolean hasNext() {
            while (this.f29562a < EnumMultiset.this.enumConstants.length) {
                int[] iArr = EnumMultiset.this.counts;
                int i10 = this.f29562a;
                if (iArr[i10] > 0) {
                    return true;
                }
                this.f29562a = i10 + 1;
            }
            return false;
        }

        @Override
        public Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Object objA = a(this.f29562a);
            int i10 = this.f29562a;
            this.f29563b = i10;
            this.f29562a = i10 + 1;
            return objA;
        }

        @Override
        public void remove() {
            e2.e(this.f29563b >= 0);
            if (EnumMultiset.this.counts[this.f29563b] > 0) {
                EnumMultiset.access$210(EnumMultiset.this);
                EnumMultiset enumMultiset = EnumMultiset.this;
                EnumMultiset.access$322(enumMultiset, enumMultiset.counts[this.f29563b]);
                EnumMultiset.this.counts[this.f29563b] = 0;
            }
            this.f29563b = -1;
        }
    }

    private EnumMultiset(Class<E> cls) {
        this.type = cls;
        com.google.common.base.m.d(cls.isEnum());
        E[] enumConstants = cls.getEnumConstants();
        this.enumConstants = enumConstants;
        this.counts = new int[enumConstants.length];
    }

    static int access$210(EnumMultiset enumMultiset) {
        int i10 = enumMultiset.distinctElements;
        enumMultiset.distinctElements = i10 - 1;
        return i10;
    }

    static long access$322(EnumMultiset enumMultiset, long j10) {
        long j11 = enumMultiset.size - j10;
        enumMultiset.size = j11;
        return j11;
    }

    private void checkIsE(Object obj) {
        com.google.common.base.m.o(obj);
        if (isActuallyE(obj)) {
            return;
        }
        throw new ClassCastException("Expected an " + this.type + " but got " + obj);
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Class<E> cls) {
        return new EnumMultiset<>(cls);
    }

    private boolean isActuallyE(Object obj) {
        if (!(obj instanceof Enum)) {
            return false;
        }
        Enum r10 = (Enum) obj;
        int iOrdinal = r10.ordinal();
        E[] eArr = this.enumConstants;
        return iOrdinal < eArr.length && eArr[iOrdinal] == r10;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        Object object = objectInputStream.readObject();
        Objects.requireNonNull(object);
        Class<E> cls = (Class) object;
        this.type = cls;
        E[] enumConstants = cls.getEnumConstants();
        this.enumConstants = enumConstants;
        this.counts = new int[enumConstants.length];
        w3.f(this, objectInputStream);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.type);
        w3.k(this, objectOutputStream);
    }

    @Override
    public void clear() {
        Arrays.fill(this.counts, 0);
        this.size = 0L;
        this.distinctElements = 0;
    }

    @Override
    public boolean contains(Object obj) {
        return super.contains(obj);
    }

    @Override
    public int count(Object obj) {
        if (obj == null || !isActuallyE(obj)) {
            return 0;
        }
        return this.counts[((Enum) obj).ordinal()];
    }

    @Override
    int distinctElements() {
        return this.distinctElements;
    }

    @Override
    Iterator<E> elementIterator() {
        return new a();
    }

    @Override
    public Set elementSet() {
        return super.elementSet();
    }

    @Override
    Iterator<l3.a> entryIterator() {
        return new b();
    }

    @Override
    public Set entrySet() {
        return super.entrySet();
    }

    @Override
    public boolean isEmpty() {
        return super.isEmpty();
    }

    @Override
    public Iterator<E> iterator() {
        return Multisets.i(this);
    }

    @Override
    public int remove(Object obj, int i10) {
        if (obj == null || !isActuallyE(obj)) {
            return 0;
        }
        Enum r10 = (Enum) obj;
        e2.b(i10, "occurrences");
        if (i10 == 0) {
            return count(obj);
        }
        int iOrdinal = r10.ordinal();
        int[] iArr = this.counts;
        int i11 = iArr[iOrdinal];
        if (i11 == 0) {
            return 0;
        }
        if (i11 <= i10) {
            iArr[iOrdinal] = 0;
            this.distinctElements--;
            this.size -= (long) i11;
        } else {
            iArr[iOrdinal] = i11 - i10;
            this.size -= (long) i10;
        }
        return i11;
    }

    @Override
    public int size() {
        return Ints.n(this.size);
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Iterable<E> iterable) {
        Iterator<E> it = iterable.iterator();
        com.google.common.base.m.e(it.hasNext(), "EnumMultiset constructor passed empty Iterable");
        EnumMultiset<E> enumMultiset = new EnumMultiset<>(it.next().getDeclaringClass());
        g3.a(enumMultiset, iterable);
        return enumMultiset;
    }

    @Override
    public int add(E e10, int i10) {
        checkIsE(e10);
        e2.b(i10, "occurrences");
        if (i10 == 0) {
            return count(e10);
        }
        int iOrdinal = e10.ordinal();
        int i11 = this.counts[iOrdinal];
        long j10 = i10;
        long j11 = ((long) i11) + j10;
        com.google.common.base.m.h(j11 <= 2147483647L, "too many occurrences: %s", j11);
        this.counts[iOrdinal] = (int) j11;
        if (i11 == 0) {
            this.distinctElements++;
        }
        this.size += j10;
        return i11;
    }

    @Override
    public boolean setCount(Object obj, int i10, int i11) {
        return super.setCount(obj, i10, i11);
    }

    @Override
    public int setCount(E e10, int i10) {
        checkIsE(e10);
        e2.b(i10, "count");
        int iOrdinal = e10.ordinal();
        int[] iArr = this.counts;
        int i11 = iArr[iOrdinal];
        iArr[iOrdinal] = i10;
        this.size += (long) (i10 - i11);
        if (i11 == 0 && i10 > 0) {
            this.distinctElements++;
        } else if (i11 > 0 && i10 == 0) {
            this.distinctElements--;
        }
        return i11;
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Iterable<E> iterable, Class<E> cls) {
        EnumMultiset<E> enumMultisetCreate = create(cls);
        g3.a(enumMultisetCreate, iterable);
        return enumMultisetCreate;
    }
}
