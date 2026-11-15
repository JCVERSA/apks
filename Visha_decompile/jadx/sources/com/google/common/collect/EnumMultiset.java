package com.google.common.collect;

import com.google.common.primitives.Ints;
import defpackage.k71;
import defpackage.v55;
import defpackage.xd8;
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

public final class EnumMultiset<E extends Enum<E>> extends com.google.common.collect.b implements Serializable {
    private static final long serialVersionUID = 0;
    private transient int[] counts;
    private transient int distinctElements;
    private transient E[] enumConstants;
    private transient long size;
    private transient Class<E> type;

    public class a extends c {
        public a() {
            super();
        }

        @Override
        public Enum a(int i) {
            return EnumMultiset.this.enumConstants[i];
        }
    }

    public class b extends c {

        public class a extends Multisets.b {
            public final int b;
            public final b c;

            public a(b bVar, int i) {
                this.b = i;
                this.c = bVar;
            }

            @Override
            public Enum getElement() {
                return EnumMultiset.this.enumConstants[this.b];
            }

            @Override
            public int getCount() {
                return EnumMultiset.this.counts[this.b];
            }
        }

        public b() {
            super();
        }

        @Override
        public j.a a(int i) {
            return new a(this, i);
        }
    }

    public abstract class c implements Iterator {
        public int b = 0;
        public int c = -1;

        public c() {
        }

        public abstract Object a(int i);

        @Override
        public boolean hasNext() {
            while (this.b < EnumMultiset.this.enumConstants.length) {
                int[] iArr = EnumMultiset.this.counts;
                int i = this.b;
                if (iArr[i] > 0) {
                    return true;
                }
                this.b = i + 1;
            }
            return false;
        }

        @Override
        public Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Object objA = a(this.b);
            int i = this.b;
            this.c = i;
            this.b = i + 1;
            return objA;
        }

        @Override
        public void remove() {
            k71.e(this.c >= 0);
            if (EnumMultiset.this.counts[this.c] > 0) {
                EnumMultiset.access$210(EnumMultiset.this);
                EnumMultiset enumMultiset = EnumMultiset.this;
                EnumMultiset.access$322(enumMultiset, enumMultiset.counts[this.c]);
                EnumMultiset.this.counts[this.c] = 0;
            }
            this.c = -1;
        }
    }

    private EnumMultiset(Class<E> cls) {
        this.type = cls;
        xd8.d(cls.isEnum());
        E[] enumConstants = cls.getEnumConstants();
        this.enumConstants = enumConstants;
        this.counts = new int[enumConstants.length];
    }

    public static int access$210(EnumMultiset enumMultiset) {
        int i = enumMultiset.distinctElements;
        enumMultiset.distinctElements = i - 1;
        return i;
    }

    public static long access$322(EnumMultiset enumMultiset, long j) {
        long j2 = enumMultiset.size - j;
        enumMultiset.size = j2;
        return j2;
    }

    private void checkIsE(Object obj) {
        xd8.o(obj);
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
        Enum r4 = (Enum) obj;
        int iOrdinal = r4.ordinal();
        E[] eArr = this.enumConstants;
        return iOrdinal < eArr.length && eArr[iOrdinal] == r4;
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
        n.f(this, objectInputStream);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.type);
        n.k(this, objectOutputStream);
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
    public int distinctElements() {
        return this.distinctElements;
    }

    @Override
    public Iterator<E> elementIterator() {
        return new a();
    }

    @Override
    public Set elementSet() {
        return super.elementSet();
    }

    @Override
    public Iterator<j.a> entryIterator() {
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
    public int remove(Object obj, int i) {
        if (obj == null || !isActuallyE(obj)) {
            return 0;
        }
        Enum r1 = (Enum) obj;
        k71.b(i, "occurrences");
        if (i == 0) {
            return count(obj);
        }
        int iOrdinal = r1.ordinal();
        int[] iArr = this.counts;
        int i2 = iArr[iOrdinal];
        if (i2 == 0) {
            return 0;
        }
        if (i2 <= i) {
            iArr[iOrdinal] = 0;
            this.distinctElements--;
            this.size -= (long) i2;
        } else {
            iArr[iOrdinal] = i2 - i;
            this.size -= (long) i;
        }
        return i2;
    }

    @Override
    public int size() {
        return Ints.n(this.size);
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Iterable<E> iterable) {
        Iterator<E> it = iterable.iterator();
        xd8.e(it.hasNext(), "EnumMultiset constructor passed empty Iterable");
        EnumMultiset<E> enumMultiset = new EnumMultiset<>(it.next().getDeclaringClass());
        v55.a(enumMultiset, iterable);
        return enumMultiset;
    }

    @Override
    public int add(E e, int i) {
        checkIsE(e);
        k71.b(i, "occurrences");
        if (i == 0) {
            return count(e);
        }
        int iOrdinal = e.ordinal();
        int i2 = this.counts[iOrdinal];
        long j = i;
        long j2 = ((long) i2) + j;
        xd8.h(j2 <= 2147483647L, "too many occurrences: %s", j2);
        this.counts[iOrdinal] = (int) j2;
        if (i2 == 0) {
            this.distinctElements++;
        }
        this.size += j;
        return i2;
    }

    @Override
    public boolean setCount(Object obj, int i, int i2) {
        return super.setCount(obj, i, i2);
    }

    @Override
    public int setCount(E e, int i) {
        checkIsE(e);
        k71.b(i, "count");
        int iOrdinal = e.ordinal();
        int[] iArr = this.counts;
        int i2 = iArr[iOrdinal];
        iArr[iOrdinal] = i;
        this.size += (long) (i - i2);
        if (i2 == 0 && i > 0) {
            this.distinctElements++;
        } else if (i2 > 0 && i == 0) {
            this.distinctElements--;
        }
        return i2;
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Iterable<E> iterable, Class<E> cls) {
        EnumMultiset<E> enumMultisetCreate = create(cls);
        v55.a(enumMultisetCreate, iterable);
        return enumMultisetCreate;
    }
}
