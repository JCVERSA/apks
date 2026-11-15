package com.google.common.collect;

import com.google.common.collect.ImmutableMultiset;
import defpackage.dgb;
import defpackage.xd8;
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

public abstract class ImmutableMultiset<E> extends ImmutableMultisetGwtSerializationDependencies<E> implements j {
    private static final long serialVersionUID = 912559;
    private transient ImmutableList<E> asList;
    private transient ImmutableSet<j.a> entrySet;

    public final class EntrySet extends IndexedImmutableSet<j.a> {
        private static final long serialVersionUID = 0;

        public EntrySet() {
        }

        private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
            throw new InvalidObjectException("Use EntrySetSerializedForm");
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof j.a)) {
                return false;
            }
            j.a aVar = (j.a) obj;
            return aVar.getCount() > 0 && ImmutableMultiset.this.count(aVar.getElement()) == aVar.getCount();
        }

        @Override
        public int hashCode() {
            return ImmutableMultiset.this.hashCode();
        }

        @Override
        public boolean isPartialView() {
            return ImmutableMultiset.this.isPartialView();
        }

        @Override
        public int size() {
            return ImmutableMultiset.this.elementSet().size();
        }

        @Override
        public Object writeReplace() {
            return new EntrySetSerializedForm(ImmutableMultiset.this);
        }

        public EntrySet(ImmutableMultiset immutableMultiset, a aVar) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public j.a get(int i) {
            return ImmutableMultiset.this.getEntry(i);
        }
    }

    public static class EntrySetSerializedForm<E> implements Serializable {
        final ImmutableMultiset<E> multiset;

        public EntrySetSerializedForm(ImmutableMultiset<E> immutableMultiset) {
            this.multiset = immutableMultiset;
        }

        public Object readResolve() {
            return this.multiset.entrySet();
        }
    }

    public class a extends dgb {
        public int b;
        public Object c;
        public final Iterator d;
        public final ImmutableMultiset e;

        public a(ImmutableMultiset immutableMultiset, Iterator it) {
            this.d = it;
            this.e = immutableMultiset;
        }

        @Override
        public boolean hasNext() {
            return this.b > 0 || this.d.hasNext();
        }

        @Override
        public Object next() {
            if (this.b <= 0) {
                j.a aVar = (j.a) this.d.next();
                this.c = aVar.getElement();
                this.b = aVar.getCount();
            }
            this.b--;
            Object obj = this.c;
            Objects.requireNonNull(obj);
            return obj;
        }
    }

    public static class b extends ImmutableCollection.b {
        public k a;
        public boolean b;
        public boolean c;

        public b() {
            this(4);
        }

        public static k m(Iterable iterable) {
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
            Objects.requireNonNull(this.a);
            if (iterable instanceof j) {
                j jVarD = Multisets.d(iterable);
                k kVarM = m(jVarD);
                if (kVarM != null) {
                    k kVar = this.a;
                    kVar.d(Math.max(kVar.C(), kVarM.C()));
                    for (int iE = kVarM.e(); iE >= 0; iE = kVarM.s(iE)) {
                        k(kVarM.i(iE), kVarM.k(iE));
                    }
                } else {
                    Set setEntrySet = jVarD.entrySet();
                    k kVar2 = this.a;
                    kVar2.d(Math.max(kVar2.C(), setEntrySet.size()));
                    for (j.a aVar : jVarD.entrySet()) {
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

        public b k(Object obj, int i) {
            Objects.requireNonNull(this.a);
            if (i == 0) {
                return this;
            }
            if (this.b) {
                this.a = new k(this.a);
                this.c = false;
            }
            this.b = false;
            xd8.o(obj);
            k kVar = this.a;
            kVar.u(obj, i + kVar.f(obj));
            return this;
        }

        @Override
        public ImmutableMultiset e() {
            Objects.requireNonNull(this.a);
            if (this.a.C() == 0) {
                return ImmutableMultiset.of();
            }
            if (this.c) {
                this.a = new k(this.a);
                this.c = false;
            }
            this.b = true;
            return new RegularImmutableMultiset(this.a);
        }

        public b(int i) {
            this.b = false;
            this.c = false;
            this.a = k.c(i);
        }

        public b(boolean z) {
            this.b = false;
            this.c = false;
            this.a = null;
        }
    }

    public static <E> b builder() {
        return new b();
    }

    private static <E> ImmutableMultiset<E> copyFromElements(E... eArr) {
        return new b().h(eArr).e();
    }

    public static <E> ImmutableMultiset<E> copyFromEntries(Collection<? extends j.a> collection) {
        b bVar = new b(collection.size());
        for (j.a aVar : collection) {
            bVar.k(aVar.getElement(), aVar.getCount());
        }
        return bVar.e();
    }

    public static <E> ImmutableMultiset<E> copyOf(E[] eArr) {
        return copyFromElements(eArr);
    }

    private ImmutableSet<j.a> createEntrySet() {
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
        return f.S(Function.identity(), new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return ImmutableMultiset.lambda$toImmutableMultiset$0(obj);
            }
        });
    }

    @Override
    @Deprecated
    public final int add(E e, int i) {
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
    public int copyIntoArray(Object[] objArr, int i) {
        dgb it = entrySet().iterator();
        while (it.hasNext()) {
            j.a aVar = (j.a) it.next();
            Arrays.fill(objArr, i, aVar.getCount() + i, aVar.getElement());
            i += aVar.getCount();
        }
        return i;
    }

    public abstract int count(Object obj);

    @Override
    public abstract ImmutableSet<E> elementSet();

    @Override
    public boolean equals(Object obj) {
        return Multisets.f(this, obj);
    }

    public abstract j.a getEntry(int i);

    @Override
    public int hashCode() {
        return Sets.d(entrySet());
    }

    @Override
    @Deprecated
    public final int remove(Object obj, int i) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final int setCount(E e, int i) {
        throw new UnsupportedOperationException();
    }

    @Override
    public String toString() {
        return entrySet().toString();
    }

    @Override
    public abstract Object writeReplace();

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

    public static <E> ImmutableMultiset<E> of(E e) {
        return copyFromElements(e);
    }

    public static <T, E> Collector<T, ?, ImmutableMultiset<E>> toImmutableMultiset(Function<? super T, ? extends E> function, ToIntFunction<? super T> toIntFunction) {
        return f.S(function, toIntFunction);
    }

    @Override
    public ImmutableSet<j.a> entrySet() {
        ImmutableSet<j.a> immutableSet = this.entrySet;
        if (immutableSet != null) {
            return immutableSet;
        }
        ImmutableSet<j.a> immutableSetCreateEntrySet = createEntrySet();
        this.entrySet = immutableSetCreateEntrySet;
        return immutableSetCreateEntrySet;
    }

    @Override
    public dgb iterator() {
        return new a(this, entrySet().iterator());
    }

    @Override
    @Deprecated
    public final boolean setCount(E e, int i, int i2) {
        throw new UnsupportedOperationException();
    }

    public static <E> ImmutableMultiset<E> of(E e, E e2) {
        return copyFromElements(e, e2);
    }

    public static <E> ImmutableMultiset<E> of(E e, E e2, E e3) {
        return copyFromElements(e, e2, e3);
    }

    public static <E> ImmutableMultiset<E> of(E e, E e2, E e3, E e4) {
        return copyFromElements(e, e2, e3, e4);
    }

    public static <E> ImmutableMultiset<E> of(E e, E e2, E e3, E e4, E e5) {
        return copyFromElements(e, e2, e3, e4, e5);
    }

    public static <E> ImmutableMultiset<E> of(E e, E e2, E e3, E e4, E e5, E e6, E... eArr) {
        return new b().a(e).a(e2).a(e3).a(e4).a(e5).a(e6).h(eArr).e();
    }

    public static <E> ImmutableMultiset<E> copyOf(Iterator<? extends E> it) {
        return new b().j(it).e();
    }
}
