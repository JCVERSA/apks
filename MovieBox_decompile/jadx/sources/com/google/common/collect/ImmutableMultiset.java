package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.function.Function;
import java.util.function.ToIntFunction;
import java.util.stream.Collector;

public abstract class ImmutableMultiset<E> extends ImmutableMultisetGwtSerializationDependencies<E> implements l3 {
    private static final long serialVersionUID = 912559;
    private transient ImmutableList<E> asList;
    private transient ImmutableSet<l3.a> entrySet;

    private final class EntrySet extends IndexedImmutableSet<l3.a> {
        private static final long serialVersionUID = 0;

        private EntrySet() {
        }

        private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
            throw new InvalidObjectException("Use EntrySetSerializedForm");
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof l3.a)) {
                return false;
            }
            l3.a aVar = (l3.a) obj;
            return aVar.getCount() > 0 && ImmutableMultiset.this.count(aVar.getElement()) == aVar.getCount();
        }

        @Override
        public int hashCode() {
            return ImmutableMultiset.this.hashCode();
        }

        @Override
        boolean isPartialView() {
            return ImmutableMultiset.this.isPartialView();
        }

        @Override
        public int size() {
            return ImmutableMultiset.this.elementSet().size();
        }

        @Override
        Object writeReplace() {
            return new EntrySetSerializedForm(ImmutableMultiset.this);
        }

        EntrySet(ImmutableMultiset immutableMultiset, a aVar) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public l3.a get(int i10) {
            return ImmutableMultiset.this.getEntry(i10);
        }
    }

    static class EntrySetSerializedForm<E> implements Serializable {
        final ImmutableMultiset<E> multiset;

        EntrySetSerializedForm(ImmutableMultiset<E> immutableMultiset) {
            this.multiset = immutableMultiset;
        }

        Object readResolve() {
            return this.multiset.entrySet();
        }
    }

    class a extends r4 {

        int f29618a;

        Object f29619b;

        final Iterator f29620c;

        final ImmutableMultiset f29621d;

        a(ImmutableMultiset immutableMultiset, Iterator it) {
            this.f29620c = it;
            this.f29621d = immutableMultiset;
        }

        @Override
        public boolean hasNext() {
            return this.f29618a > 0 || this.f29620c.hasNext();
        }

        @Override
        public Object next() {
            if (this.f29618a <= 0) {
                l3.a aVar = (l3.a) this.f29620c.next();
                this.f29619b = aVar.getElement();
                this.f29618a = aVar.getCount();
            }
            this.f29618a--;
            Object obj = this.f29619b;
            Objects.requireNonNull(obj);
            return obj;
        }
    }

    public static class b extends ImmutableCollection.b {

        o3 f29622a;

        boolean f29623b;

        boolean f29624c;

        public b() {
            this(4);
        }

        static o3 m(Iterable iterable) {
            if (iterable instanceof RegularImmutableMultiset) {
                return ((RegularImmutableMultiset) iterable).contents;
            }
            if (iterable instanceof AbstractMapBasedMultiset) {
                return ((AbstractMapBasedMultiset) iterable).backingMap;
            }
            return null;
        }

        @Override
        public b a(Object obj) {
            return k(obj, 1);
        }

        public b h(Object... objArr) {
            super.b(objArr);
            return this;
        }

        public b i(Iterable iterable) {
            Objects.requireNonNull(this.f29622a);
            if (iterable instanceof l3) {
                l3 l3VarD = Multisets.d(iterable);
                o3 o3VarM = m(l3VarD);
                if (o3VarM != null) {
                    o3 o3Var = this.f29622a;
                    o3Var.d(Math.max(o3Var.C(), o3VarM.C()));
                    for (int iE = o3VarM.e(); iE >= 0; iE = o3VarM.s(iE)) {
                        k(o3VarM.i(iE), o3VarM.k(iE));
                    }
                } else {
                    Set setEntrySet = l3VarD.entrySet();
                    o3 o3Var2 = this.f29622a;
                    o3Var2.d(Math.max(o3Var2.C(), setEntrySet.size()));
                    for (l3.a aVar : l3VarD.entrySet()) {
                        k(aVar.getElement(), aVar.getCount());
                    }
                }
            } else {
                super.c(iterable);
            }
            return this;
        }

        public b j(Iterator it) {
            super.d(it);
            return this;
        }

        public b k(Object obj, int i10) {
            Objects.requireNonNull(this.f29622a);
            if (i10 == 0) {
                return this;
            }
            if (this.f29623b) {
                this.f29622a = new o3(this.f29622a);
                this.f29624c = false;
            }
            this.f29623b = false;
            com.google.common.base.m.o(obj);
            o3 o3Var = this.f29622a;
            o3Var.u(obj, i10 + o3Var.f(obj));
            return this;
        }

        @Override
        public ImmutableMultiset e() {
            Objects.requireNonNull(this.f29622a);
            if (this.f29622a.C() == 0) {
                return ImmutableMultiset.of();
            }
            if (this.f29624c) {
                this.f29622a = new o3(this.f29622a);
                this.f29624c = false;
            }
            this.f29623b = true;
            return new RegularImmutableMultiset(this.f29622a);
        }

        b(int i10) {
            this.f29623b = false;
            this.f29624c = false;
            this.f29622a = o3.c(i10);
        }

        b(boolean z10) {
            this.f29623b = false;
            this.f29624c = false;
            this.f29622a = null;
        }
    }

    ImmutableMultiset() {
    }

    public static <E> b builder() {
        return new b();
    }

    private static <E> ImmutableMultiset<E> copyFromElements(E... eArr) {
        return new b().h(eArr).e();
    }

    static <E> ImmutableMultiset<E> copyFromEntries(Collection<? extends l3.a> collection) {
        b bVar = new b(collection.size());
        for (l3.a aVar : collection) {
            bVar.k(aVar.getElement(), aVar.getCount());
        }
        return bVar.e();
    }

    public static <E> ImmutableMultiset<E> copyOf(E[] eArr) {
        return copyFromElements(eArr);
    }

    private ImmutableSet<l3.a> createEntrySet() {
        return isEmpty() ? ImmutableSet.of() : new EntrySet(this, null);
    }

    public static int lambda$toImmutableMultiset$0(Object obj) {
        return 1;
    }

    public static <E> ImmutableMultiset<E> of() {
        return RegularImmutableMultiset.EMPTY;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <E> Collector<E, ?, ImmutableMultiset<E>> toImmutableMultiset() {
        return d2.S(Function.identity(), new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return ImmutableMultiset.lambda$toImmutableMultiset$0(obj);
            }
        });
    }

    @Override
    @Deprecated
    public final int add(E e10, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public ImmutableList<E> asList() {
        ImmutableList<E> immutableList = this.asList;
        if (immutableList != null) {
            return immutableList;
        }
        ImmutableList<E> immutableListAsList = super.asList();
        this.asList = immutableListAsList;
        return immutableListAsList;
    }

    @Override
    public boolean contains(Object obj) {
        return count(obj) > 0;
    }

    @Override
    int copyIntoArray(Object[] objArr, int i10) {
        r4 it = entrySet().iterator();
        while (it.hasNext()) {
            l3.a aVar = (l3.a) it.next();
            Arrays.fill(objArr, i10, aVar.getCount() + i10, aVar.getElement());
            i10 += aVar.getCount();
        }
        return i10;
    }

    public abstract int count(Object obj);

    @Override
    public abstract ImmutableSet<E> elementSet();

    @Override
    public boolean equals(Object obj) {
        return Multisets.f(this, obj);
    }

    abstract l3.a getEntry(int i10);

    @Override
    public int hashCode() {
        return Sets.d(entrySet());
    }

    @Override
    @Deprecated
    public final int remove(Object obj, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final int setCount(E e10, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public String toString() {
        return entrySet().toString();
    }

    @Override
    abstract Object writeReplace();

    public static <E> ImmutableMultiset<E> copyOf(Iterable<? extends E> iterable) {
        if (iterable instanceof ImmutableMultiset) {
            ImmutableMultiset<E> immutableMultiset = (ImmutableMultiset) iterable;
            if (!immutableMultiset.isPartialView()) {
                return immutableMultiset;
            }
        }
        b bVar = new b(Multisets.h(iterable));
        bVar.i(iterable);
        return bVar.e();
    }

    public static <E> ImmutableMultiset<E> of(E e10) {
        return copyFromElements(e10);
    }

    public static <T, E> Collector<T, ?, ImmutableMultiset<E>> toImmutableMultiset(Function<? super T, ? extends E> function, ToIntFunction<? super T> toIntFunction) {
        return d2.S(function, toIntFunction);
    }

    @Override
    public ImmutableSet<l3.a> entrySet() {
        ImmutableSet<l3.a> immutableSet = this.entrySet;
        if (immutableSet != null) {
            return immutableSet;
        }
        ImmutableSet<l3.a> immutableSetCreateEntrySet = createEntrySet();
        this.entrySet = immutableSetCreateEntrySet;
        return immutableSetCreateEntrySet;
    }

    @Override
    public r4 iterator() {
        return new a(this, entrySet().iterator());
    }

    @Override
    @Deprecated
    public final boolean setCount(E e10, int i10, int i11) {
        throw new UnsupportedOperationException();
    }

    public static <E> ImmutableMultiset<E> of(E e10, E e11) {
        return copyFromElements(e10, e11);
    }

    public static <E> ImmutableMultiset<E> of(E e10, E e11, E e12) {
        return copyFromElements(e10, e11, e12);
    }

    public static <E> ImmutableMultiset<E> of(E e10, E e11, E e12, E e13) {
        return copyFromElements(e10, e11, e12, e13);
    }

    public static <E> ImmutableMultiset<E> of(E e10, E e11, E e12, E e13, E e14) {
        return copyFromElements(e10, e11, e12, e13, e14);
    }

    public static <E> ImmutableMultiset<E> of(E e10, E e11, E e12, E e13, E e14, E e15, E... eArr) {
        return new b().a(e10).a(e11).a(e12).a(e13).a(e14).a(e15).h(eArr).e();
    }

    public static <E> ImmutableMultiset<E> copyOf(Iterator<? extends E> it) {
        return new b().j(it).e();
    }
}
