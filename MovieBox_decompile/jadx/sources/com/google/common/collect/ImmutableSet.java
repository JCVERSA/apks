package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import java.util.stream.Collector;

public abstract class ImmutableSet<E> extends ImmutableCollection<E> implements Set<E> {
    private static final int CUTOFF = 751619276;
    private static final double DESIRED_LOAD_FACTOR = 0.7d;
    static final int MAX_TABLE_SIZE = 1073741824;
    private static final long serialVersionUID = 912559;
    private transient ImmutableList<E> asList;

    private static class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        final Object[] elements;

        SerializedForm(Object[] objArr) {
            this.elements = objArr;
        }

        Object readResolve() {
            return ImmutableSet.copyOf(this.elements);
        }
    }

    public static class a extends ImmutableCollection.a {

        Object[] f29634d;

        private int f29635e;

        public a() {
            super(4);
        }

        private void n(Object obj) {
            Objects.requireNonNull(this.f29634d);
            int length = this.f29634d.length - 1;
            int iHashCode = obj.hashCode();
            int iC = v2.c(iHashCode);
            while (true) {
                int i10 = iC & length;
                Object[] objArr = this.f29634d;
                Object obj2 = objArr[i10];
                if (obj2 == null) {
                    objArr[i10] = obj;
                    this.f29635e += iHashCode;
                    super.g(obj);
                    return;
                } else if (obj2.equals(obj)) {
                    return;
                } else {
                    iC = i10 + 1;
                }
            }
        }

        @Override
        public a a(Object obj) {
            com.google.common.base.m.o(obj);
            if (this.f29634d != null && ImmutableSet.chooseTableSize(this.f29584b) <= this.f29634d.length) {
                n(obj);
                return this;
            }
            this.f29634d = null;
            super.g(obj);
            return this;
        }

        public a k(Object... objArr) {
            if (this.f29634d != null) {
                for (Object obj : objArr) {
                    a(obj);
                }
            } else {
                super.b(objArr);
            }
            return this;
        }

        public a l(Iterable iterable) {
            com.google.common.base.m.o(iterable);
            if (this.f29634d != null) {
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    a(it.next());
                }
            } else {
                super.c(iterable);
            }
            return this;
        }

        public a m(Iterator it) {
            com.google.common.base.m.o(it);
            while (it.hasNext()) {
                a(it.next());
            }
            return this;
        }

        @Override
        public ImmutableSet e() {
            ImmutableSet immutableSetConstruct;
            int i10 = this.f29584b;
            if (i10 == 0) {
                return ImmutableSet.of();
            }
            if (i10 == 1) {
                Object obj = this.f29583a[0];
                Objects.requireNonNull(obj);
                return ImmutableSet.of(obj);
            }
            if (this.f29634d == null || ImmutableSet.chooseTableSize(i10) != this.f29634d.length) {
                immutableSetConstruct = ImmutableSet.construct(this.f29584b, this.f29583a);
                this.f29584b = immutableSetConstruct.size();
            } else {
                Object[] objArrCopyOf = ImmutableSet.shouldTrim(this.f29584b, this.f29583a.length) ? Arrays.copyOf(this.f29583a, this.f29584b) : this.f29583a;
                int i11 = this.f29635e;
                Object[] objArr = this.f29634d;
                immutableSetConstruct = new RegularImmutableSet(objArrCopyOf, i11, objArr, objArr.length - 1, this.f29584b);
            }
            this.f29585c = true;
            this.f29634d = null;
            return immutableSetConstruct;
        }

        a p(a aVar) {
            if (this.f29634d != null) {
                for (int i10 = 0; i10 < aVar.f29584b; i10++) {
                    Object obj = aVar.f29583a[i10];
                    Objects.requireNonNull(obj);
                    a(obj);
                }
            } else {
                h(aVar.f29583a, aVar.f29584b);
            }
            return this;
        }

        a(int i10, boolean z10) {
            super(i10);
            if (z10) {
                this.f29634d = new Object[ImmutableSet.chooseTableSize(i10)];
            }
        }
    }

    ImmutableSet() {
    }

    public static <E> a builder() {
        return new a();
    }

    public static <E> a builderWithExpectedSize(int i10) {
        e2.b(i10, "expectedSize");
        return new a(i10, true);
    }

    static int chooseTableSize(int i10) {
        int iMax = Math.max(i10, 2);
        if (iMax >= CUTOFF) {
            com.google.common.base.m.e(iMax < 1073741824, "collection too large");
            return 1073741824;
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
        while (((double) iHighestOneBit) * DESIRED_LOAD_FACTOR < iMax) {
            iHighestOneBit <<= 1;
        }
        return iHighestOneBit;
    }

    public static <E> ImmutableSet<E> construct(int i10, Object... objArr) {
        if (i10 == 0) {
            return of();
        }
        if (i10 == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return of(obj);
        }
        int iChooseTableSize = chooseTableSize(i10);
        Object[] objArr2 = new Object[iChooseTableSize];
        int i11 = iChooseTableSize - 1;
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < i10; i14++) {
            Object objA = n3.a(objArr[i14], i14);
            int iHashCode = objA.hashCode();
            int iC = v2.c(iHashCode);
            while (true) {
                int i15 = iC & i11;
                Object obj2 = objArr2[i15];
                if (obj2 == null) {
                    objArr[i13] = objA;
                    objArr2[i15] = objA;
                    i12 += iHashCode;
                    i13++;
                    break;
                }
                if (obj2.equals(objA)) {
                    break;
                }
                iC++;
            }
        }
        Arrays.fill(objArr, i13, i10, (Object) null);
        if (i13 == 1) {
            Object obj3 = objArr[0];
            Objects.requireNonNull(obj3);
            return new SingletonImmutableSet(obj3);
        }
        if (chooseTableSize(i13) < iChooseTableSize / 2) {
            return construct(i13, objArr);
        }
        if (shouldTrim(i13, objArr.length)) {
            objArr = Arrays.copyOf(objArr, i13);
        }
        return new RegularImmutableSet(objArr, i12, objArr2, i11, i13);
    }

    public static <E> ImmutableSet<E> copyOf(Collection<? extends E> collection) {
        if ((collection instanceof ImmutableSet) && !(collection instanceof SortedSet)) {
            ImmutableSet<E> immutableSet = (ImmutableSet) collection;
            if (!immutableSet.isPartialView()) {
                return immutableSet;
            }
        }
        Object[] array = collection.toArray();
        return construct(array.length, array);
    }

    public static <E> ImmutableSet<E> of() {
        return RegularImmutableSet.EMPTY;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static boolean shouldTrim(int i10, int i11) {
        return i10 < (i11 >> 1) + (i11 >> 2);
    }

    public static <E> Collector<E, ?, ImmutableSet<E>> toImmutableSet() {
        return d2.V();
    }

    @Override
    public ImmutableList<E> asList() {
        ImmutableList<E> immutableList = this.asList;
        if (immutableList != null) {
            return immutableList;
        }
        ImmutableList<E> immutableListCreateAsList = createAsList();
        this.asList = immutableListCreateAsList;
        return immutableListCreateAsList;
    }

    ImmutableList<E> createAsList() {
        return ImmutableList.asImmutableList(toArray());
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof ImmutableSet) && isHashCodeFast() && ((ImmutableSet) obj).isHashCodeFast() && hashCode() != obj.hashCode()) {
            return false;
        }
        return Sets.a(this, obj);
    }

    @Override
    public int hashCode() {
        return Sets.d(this);
    }

    boolean isHashCodeFast() {
        return false;
    }

    @Override
    public abstract r4 iterator();

    @Override
    Object writeReplace() {
        return new SerializedForm(toArray());
    }

    public static <E> ImmutableSet<E> of(E e10) {
        return new SingletonImmutableSet(e10);
    }

    public static <E> ImmutableSet<E> of(E e10, E e11) {
        return construct(2, e10, e11);
    }

    public static <E> ImmutableSet<E> of(E e10, E e11, E e12) {
        return construct(3, e10, e11, e12);
    }

    public static <E> ImmutableSet<E> of(E e10, E e11, E e12, E e13) {
        return construct(4, e10, e11, e12, e13);
    }

    public static <E> ImmutableSet<E> copyOf(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return copyOf((Collection) iterable);
        }
        return copyOf(iterable.iterator());
    }

    public static <E> ImmutableSet<E> of(E e10, E e11, E e12, E e13, E e14) {
        return construct(5, e10, e11, e12, e13, e14);
    }

    @SafeVarargs
    public static <E> ImmutableSet<E> of(E e10, E e11, E e12, E e13, E e14, E e15, E... eArr) {
        com.google.common.base.m.e(eArr.length <= 2147483641, "the total number of elements must fit in an int");
        int length = eArr.length + 6;
        Object[] objArr = new Object[length];
        objArr[0] = e10;
        objArr[1] = e11;
        objArr[2] = e12;
        objArr[3] = e13;
        objArr[4] = e14;
        objArr[5] = e15;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return construct(length, objArr);
    }

    public static <E> ImmutableSet<E> copyOf(Iterator<? extends E> it) {
        if (!it.hasNext()) {
            return of();
        }
        E next = it.next();
        if (!it.hasNext()) {
            return of((Object) next);
        }
        return new a().a(next).m(it).e();
    }

    public static <E> ImmutableSet<E> copyOf(E[] eArr) {
        int length = eArr.length;
        if (length == 0) {
            return of();
        }
        if (length != 1) {
            return construct(eArr.length, (Object[]) eArr.clone());
        }
        return of((Object) eArr[0]);
    }
}
