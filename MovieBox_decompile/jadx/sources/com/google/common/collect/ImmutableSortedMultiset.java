package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.function.ToIntFunction;
import java.util.stream.Collector;

public abstract class ImmutableSortedMultiset<E> extends ImmutableMultiset<E> implements a4 {
    private static final long serialVersionUID = 912559;
    transient ImmutableSortedMultiset<E> descendingMultiset;

    private static final class SerializedForm<E> implements Serializable {
        final Comparator<? super E> comparator;
        final int[] counts;
        final E[] elements;

        SerializedForm(a4 a4Var) {
            this.comparator = a4Var.comparator();
            int size = a4Var.entrySet().size();
            this.elements = (E[]) new Object[size];
            this.counts = new int[size];
            int i10 = 0;
            for (l3.a aVar : a4Var.entrySet()) {
                ((E[]) this.elements)[i10] = aVar.getElement();
                this.counts[i10] = aVar.getCount();
                i10++;
            }
        }

        Object readResolve() {
            int length = this.elements.length;
            a aVar = new a(this.comparator);
            for (int i10 = 0; i10 < length; i10++) {
                aVar.k(this.elements[i10], this.counts[i10]);
            }
            return aVar.e();
        }
    }

    public static class a extends ImmutableMultiset.b {

        private final Comparator f29641d;

        Object[] f29642e;

        private int[] f29643f;

        private int f29644g;

        private boolean f29645h;

        public a(Comparator comparator) {
            super(true);
            this.f29641d = (Comparator) com.google.common.base.m.o(comparator);
            this.f29642e = new Object[4];
            this.f29643f = new int[4];
        }

        private void t(boolean z10) {
            int i10 = this.f29644g;
            if (i10 == 0) {
                return;
            }
            Object[] objArrCopyOf = Arrays.copyOf(this.f29642e, i10);
            Arrays.sort(objArrCopyOf, this.f29641d);
            int i11 = 1;
            for (int i12 = 1; i12 < objArrCopyOf.length; i12++) {
                if (this.f29641d.compare(objArrCopyOf[i11 - 1], objArrCopyOf[i12]) < 0) {
                    objArrCopyOf[i11] = objArrCopyOf[i12];
                    i11++;
                }
            }
            Arrays.fill(objArrCopyOf, i11, this.f29644g, (Object) null);
            if (z10) {
                int i13 = i11 * 4;
                int i14 = this.f29644g;
                if (i13 > i14 * 3) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, com.google.common.math.d.h(i14, (i14 / 2) + 1));
                }
            }
            int[] iArr = new int[objArrCopyOf.length];
            for (int i15 = 0; i15 < this.f29644g; i15++) {
                int iBinarySearch = Arrays.binarySearch(objArrCopyOf, 0, i11, this.f29642e[i15], this.f29641d);
                int i16 = this.f29643f[i15];
                if (i16 >= 0) {
                    iArr[iBinarySearch] = iArr[iBinarySearch] + i16;
                } else {
                    iArr[iBinarySearch] = ~i16;
                }
            }
            this.f29642e = objArrCopyOf;
            this.f29643f = iArr;
            this.f29644g = i11;
        }

        private void u() {
            t(false);
            int i10 = 0;
            int i11 = 0;
            while (true) {
                int i12 = this.f29644g;
                if (i10 >= i12) {
                    Arrays.fill(this.f29642e, i11, i12, (Object) null);
                    Arrays.fill(this.f29643f, i11, this.f29644g, 0);
                    this.f29644g = i11;
                    return;
                }
                int[] iArr = this.f29643f;
                int i13 = iArr[i10];
                if (i13 > 0) {
                    Object[] objArr = this.f29642e;
                    objArr[i11] = objArr[i10];
                    iArr[i11] = i13;
                    i11++;
                }
                i10++;
            }
        }

        private void v() {
            int i10 = this.f29644g;
            Object[] objArr = this.f29642e;
            if (i10 == objArr.length) {
                t(true);
            } else if (this.f29645h) {
                this.f29642e = Arrays.copyOf(objArr, objArr.length);
            }
            this.f29645h = false;
        }

        @Override
        public a a(Object obj) {
            return k(obj, 1);
        }

        @Override
        public a h(Object... objArr) {
            for (Object obj : objArr) {
                a(obj);
            }
            return this;
        }

        @Override
        public a i(Iterable iterable) {
            if (iterable instanceof l3) {
                for (l3.a aVar : ((l3) iterable).entrySet()) {
                    k(aVar.getElement(), aVar.getCount());
                }
            } else {
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    a(it.next());
                }
            }
            return this;
        }

        @Override
        public a j(Iterator it) {
            while (it.hasNext()) {
                a(it.next());
            }
            return this;
        }

        @Override
        public a k(Object obj, int i10) {
            com.google.common.base.m.o(obj);
            e2.b(i10, "occurrences");
            if (i10 == 0) {
                return this;
            }
            v();
            Object[] objArr = this.f29642e;
            int i11 = this.f29644g;
            objArr[i11] = obj;
            this.f29643f[i11] = i10;
            this.f29644g = i11 + 1;
            return this;
        }

        @Override
        public ImmutableSortedMultiset e() {
            u();
            int i10 = this.f29644g;
            if (i10 == 0) {
                return ImmutableSortedMultiset.emptyMultiset(this.f29641d);
            }
            RegularImmutableSortedSet regularImmutableSortedSet = (RegularImmutableSortedSet) ImmutableSortedSet.construct(this.f29641d, i10, this.f29642e);
            long[] jArr = new long[this.f29644g + 1];
            int i11 = 0;
            while (i11 < this.f29644g) {
                int i12 = i11 + 1;
                jArr[i12] = jArr[i11] + ((long) this.f29643f[i11]);
                i11 = i12;
            }
            this.f29645h = true;
            return new RegularImmutableSortedMultiset(regularImmutableSortedSet, jArr, 0, this.f29644g);
        }
    }

    ImmutableSortedMultiset() {
    }

    @Deprecated
    public static <E> a builder() {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>([TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset copyOf(Comparable[] comparableArr) {
        return copyOf(Ordering.natural(), Arrays.asList(comparableArr));
    }

    public static <E> ImmutableSortedMultiset<E> copyOfSorted(a4 a4Var) {
        return copyOfSortedEntries(a4Var.comparator(), Lists.j(a4Var.entrySet()));
    }

    private static <E> ImmutableSortedMultiset<E> copyOfSortedEntries(Comparator<? super E> comparator, Collection<l3.a> collection) {
        if (collection.isEmpty()) {
            return emptyMultiset(comparator);
        }
        ImmutableList.a aVar = new ImmutableList.a(collection.size());
        long[] jArr = new long[collection.size() + 1];
        int i10 = 0;
        for (l3.a aVar2 : collection) {
            aVar.a(aVar2.getElement());
            int i11 = i10 + 1;
            jArr[i11] = jArr[i10] + ((long) aVar2.getCount());
            i10 = i11;
        }
        return new RegularImmutableSortedMultiset(new RegularImmutableSortedSet(aVar.e(), comparator), jArr, 0, collection.size());
    }

    static <E> ImmutableSortedMultiset<E> emptyMultiset(Comparator<? super E> comparator) {
        return Ordering.natural().equals(comparator) ? (ImmutableSortedMultiset<E>) RegularImmutableSortedMultiset.NATURAL_EMPTY_MULTISET : new RegularImmutableSortedMultiset(comparator);
    }

    public static int lambda$toImmutableSortedMultiset$0(Object obj) {
        return 1;
    }

    public static l3 lambda$toImmutableSortedMultiset$3(l3 l3Var, l3 l3Var2) {
        l3Var.addAll(l3Var2);
        return l3Var;
    }

    public static ImmutableSortedMultiset lambda$toImmutableSortedMultiset$4(Comparator comparator, l3 l3Var) {
        return copyOfSortedEntries(comparator, l3Var.entrySet());
    }

    public static <T, E> void mapAndAdd(T t10, l3 l3Var, Function<? super T, ? extends E> function, ToIntFunction<? super T> toIntFunction) {
        l3Var.add(com.google.common.base.m.o(function.apply(t10)), toIntFunction.applyAsInt(t10));
    }

    public static <E extends Comparable<?>> a naturalOrder() {
        return new a(Ordering.natural());
    }

    public static <E> ImmutableSortedMultiset<E> of() {
        return (ImmutableSortedMultiset<E>) RegularImmutableSortedMultiset.NATURAL_EMPTY_MULTISET;
    }

    public static <E> a orderedBy(Comparator<E> comparator) {
        return new a(comparator);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <E extends Comparable<?>> a reverseOrder() {
        return new a(Ordering.natural().reverse());
    }

    @Deprecated
    public static <E> Collector<E, ?, ImmutableMultiset<E>> toImmutableMultiset() {
        throw new UnsupportedOperationException();
    }

    public static <E> Collector<E, ?, ImmutableSortedMultiset<E>> toImmutableSortedMultiset(Comparator<? super E> comparator) {
        return toImmutableSortedMultiset(comparator, Function.identity(), new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return ImmutableSortedMultiset.lambda$toImmutableSortedMultiset$0(obj);
            }
        });
    }

    @Override
    public final Comparator<? super E> comparator() {
        return elementSet().comparator();
    }

    @Override
    public abstract int count(Object obj);

    @Override
    public abstract ImmutableSortedSet<E> elementSet();

    public abstract l3.a firstEntry();

    public abstract ImmutableSortedMultiset<E> headMultiset(E e10, BoundType boundType);

    public abstract l3.a lastEntry();

    @Override
    @Deprecated
    public final l3.a pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final l3.a pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    public abstract ImmutableSortedMultiset<E> tailMultiset(E e10, BoundType boundType);

    @Override
    Object writeReplace() {
        return new SerializedForm(this);
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Iterable<? extends E> iterable) {
        return copyOf(Ordering.natural(), iterable);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable) {
        return new RegularImmutableSortedMultiset((RegularImmutableSortedSet) ImmutableSortedSet.of(comparable), new long[]{0, 1}, 0, 1);
    }

    @Deprecated
    public static <T, E> Collector<T, ?, ImmutableMultiset<E>> toImmutableMultiset(Function<? super T, ? extends E> function, ToIntFunction<? super T> toIntFunction) {
        throw new UnsupportedOperationException();
    }

    public static <T, E> Collector<T, ?, ImmutableSortedMultiset<E>> toImmutableSortedMultiset(final Comparator<? super E> comparator, final Function<? super T, ? extends E> function, final ToIntFunction<? super T> toIntFunction) {
        com.google.common.base.m.o(comparator);
        com.google.common.base.m.o(function);
        com.google.common.base.m.o(toIntFunction);
        return Collector.of(new Supplier() {
            @Override
            public final Object get() {
                return TreeMultiset.create(comparator);
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ImmutableSortedMultiset.mapAndAdd(obj2, (l3) obj, function, toIntFunction);
            }
        }, new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return ImmutableSortedMultiset.lambda$toImmutableSortedMultiset$3((l3) obj, (l3) obj2);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ImmutableSortedMultiset.lambda$toImmutableSortedMultiset$4(comparator, (l3) obj);
            }
        }, new Collector.Characteristics[0]);
    }

    public ImmutableSortedMultiset<E> descendingMultiset() {
        ImmutableSortedMultiset<E> immutableSortedMultisetEmptyMultiset = this.descendingMultiset;
        if (immutableSortedMultisetEmptyMultiset == null) {
            immutableSortedMultisetEmptyMultiset = isEmpty() ? emptyMultiset(Ordering.from(comparator()).reverse()) : new DescendingImmutableSortedMultiset<>(this);
            this.descendingMultiset = immutableSortedMultisetEmptyMultiset;
        }
        return immutableSortedMultisetEmptyMultiset;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public ImmutableSortedMultiset<E> subMultiset(E e10, BoundType boundType, E e11, BoundType boundType2) {
        com.google.common.base.m.k(comparator().compare(e10, e11) <= 0, "Expected lowerBound <= upperBound but %s > %s", e10, e11);
        return tailMultiset((Object) e10, boundType).headMultiset((Object) e11, boundType2);
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Iterator<? extends E> it) {
        return copyOf(Ordering.natural(), it);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable, Comparable comparable2) {
        return copyOf(Ordering.natural(), Arrays.asList(comparable, comparable2));
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Comparator<? super E> comparator, Iterator<? extends E> it) {
        com.google.common.base.m.o(comparator);
        return new a(comparator).j(it).e();
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable, Comparable comparable2, Comparable comparable3) {
        return copyOf(Ordering.natural(), Arrays.asList(comparable, comparable2, comparable3));
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4) {
        return copyOf(Ordering.natural(), Arrays.asList(comparable, comparable2, comparable3, comparable4));
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        if (iterable instanceof ImmutableSortedMultiset) {
            ImmutableSortedMultiset<E> immutableSortedMultiset = (ImmutableSortedMultiset) iterable;
            if (comparator.equals(immutableSortedMultiset.comparator())) {
                return immutableSortedMultiset.isPartialView() ? copyOfSortedEntries(comparator, immutableSortedMultiset.entrySet().asList()) : immutableSortedMultiset;
            }
        }
        return new a(comparator).i(iterable).e();
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5) {
        return copyOf(Ordering.natural(), Arrays.asList(comparable, comparable2, comparable3, comparable4, comparable5));
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5, Comparable comparable6, Comparable... comparableArr) {
        ArrayList arrayListM = Lists.m(comparableArr.length + 6);
        Collections.addAll(arrayListM, comparable, comparable2, comparable3, comparable4, comparable5, comparable6);
        Collections.addAll(arrayListM, comparableArr);
        return copyOf(Ordering.natural(), arrayListM);
    }

    @Deprecated
    public static <Z> ImmutableSortedMultiset<Z> copyOf(Z[] zArr) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public static <E> ImmutableSortedMultiset<E> of(E e10) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public static <E> ImmutableSortedMultiset<E> of(E e10, E e11) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public static <E> ImmutableSortedMultiset<E> of(E e10, E e11, E e12) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public static <E> ImmutableSortedMultiset<E> of(E e10, E e11, E e12, E e13) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public static <E> ImmutableSortedMultiset<E> of(E e10, E e11, E e12, E e13, E e14) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public static <E> ImmutableSortedMultiset<E> of(E e10, E e11, E e12, E e13, E e14, E e15, E... eArr) {
        throw new UnsupportedOperationException();
    }
}
