package com.google.common.collect;

import com.google.common.collect.ImmutableSortedMultiset;
import com.google.common.collect.TreeMultiset;
import com.google.common.collect.j;
import defpackage.k71;
import defpackage.r15;
import defpackage.xd8;
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

public abstract class ImmutableSortedMultiset<E> extends ImmutableMultiset<E> implements p {
    private static final long serialVersionUID = 912559;
    transient ImmutableSortedMultiset<E> descendingMultiset;

    public static final class SerializedForm<E> implements Serializable {
        final Comparator<? super E> comparator;
        final int[] counts;
        final E[] elements;

        public SerializedForm(p pVar) {
            this.comparator = pVar.comparator();
            int size = pVar.entrySet().size();
            this.elements = (E[]) new Object[size];
            this.counts = new int[size];
            int i = 0;
            for (j.a aVar : pVar.entrySet()) {
                ((E[]) this.elements)[i] = aVar.getElement();
                this.counts[i] = aVar.getCount();
                i++;
            }
        }

        public Object readResolve() {
            int length = this.elements.length;
            a aVar = new a(this.comparator);
            for (int i = 0; i < length; i++) {
                aVar.k(this.elements[i], this.counts[i]);
            }
            return aVar.e();
        }
    }

    public static class a extends ImmutableMultiset.b {
        public final Comparator d;
        public Object[] e;
        public int[] f;
        public int g;
        public boolean h;

        public a(Comparator comparator) {
            super(true);
            this.d = (Comparator) xd8.o(comparator);
            this.e = new Object[4];
            this.f = new int[4];
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
            if (iterable instanceof j) {
                for (j.a aVar : ((j) iterable).entrySet()) {
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
        public a k(Object obj, int i) {
            xd8.o(obj);
            k71.b(i, "occurrences");
            if (i == 0) {
                return this;
            }
            v();
            Object[] objArr = this.e;
            int i2 = this.g;
            objArr[i2] = obj;
            this.f[i2] = i;
            this.g = i2 + 1;
            return this;
        }

        @Override
        public ImmutableSortedMultiset e() {
            u();
            int i = this.g;
            if (i == 0) {
                return ImmutableSortedMultiset.emptyMultiset(this.d);
            }
            RegularImmutableSortedSet regularImmutableSortedSet = (RegularImmutableSortedSet) ImmutableSortedSet.construct(this.d, i, this.e);
            long[] jArr = new long[this.g + 1];
            int i2 = 0;
            while (i2 < this.g) {
                int i3 = i2 + 1;
                jArr[i3] = jArr[i2] + ((long) this.f[i2]);
                i2 = i3;
            }
            this.h = true;
            return new RegularImmutableSortedMultiset(regularImmutableSortedSet, jArr, 0, this.g);
        }

        public final void t(boolean z) {
            int i = this.g;
            if (i == 0) {
                return;
            }
            Object[] objArrCopyOf = Arrays.copyOf(this.e, i);
            Arrays.sort(objArrCopyOf, this.d);
            int i2 = 1;
            for (int i3 = 1; i3 < objArrCopyOf.length; i3++) {
                if (this.d.compare(objArrCopyOf[i2 - 1], objArrCopyOf[i3]) < 0) {
                    objArrCopyOf[i2] = objArrCopyOf[i3];
                    i2++;
                }
            }
            Arrays.fill(objArrCopyOf, i2, this.g, (Object) null);
            if (z) {
                int i4 = i2 * 4;
                int i5 = this.g;
                if (i4 > i5 * 3) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, r15.h(i5, (i5 / 2) + 1));
                }
            }
            int[] iArr = new int[objArrCopyOf.length];
            for (int i6 = 0; i6 < this.g; i6++) {
                int iBinarySearch = Arrays.binarySearch(objArrCopyOf, 0, i2, this.e[i6], this.d);
                int i7 = this.f[i6];
                if (i7 >= 0) {
                    iArr[iBinarySearch] = iArr[iBinarySearch] + i7;
                } else {
                    iArr[iBinarySearch] = ~i7;
                }
            }
            this.e = objArrCopyOf;
            this.f = iArr;
            this.g = i2;
        }

        public final void u() {
            t(false);
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = this.g;
                if (i >= i3) {
                    Arrays.fill(this.e, i2, i3, (Object) null);
                    Arrays.fill(this.f, i2, this.g, 0);
                    this.g = i2;
                    return;
                }
                int[] iArr = this.f;
                int i4 = iArr[i];
                if (i4 > 0) {
                    Object[] objArr = this.e;
                    objArr[i2] = objArr[i];
                    iArr[i2] = i4;
                    i2++;
                }
                i++;
            }
        }

        public final void v() {
            int i = this.g;
            Object[] objArr = this.e;
            if (i == objArr.length) {
                t(true);
            } else if (this.h) {
                this.e = Arrays.copyOf(objArr, objArr.length);
            }
            this.h = false;
        }
    }

    @Deprecated
    public static <E> a builder() {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>([TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset copyOf(Comparable[] comparableArr) {
        return copyOf(Ordering.natural(), Arrays.asList(comparableArr));
    }

    public static <E> ImmutableSortedMultiset<E> copyOfSorted(p pVar) {
        return copyOfSortedEntries(pVar.comparator(), Lists.j(pVar.entrySet()));
    }

    private static <E> ImmutableSortedMultiset<E> copyOfSortedEntries(Comparator<? super E> comparator, Collection<j.a> collection) {
        if (collection.isEmpty()) {
            return emptyMultiset(comparator);
        }
        ImmutableList.a aVar = new ImmutableList.a(collection.size());
        long[] jArr = new long[collection.size() + 1];
        int i = 0;
        for (j.a aVar2 : collection) {
            aVar.a(aVar2.getElement());
            int i2 = i + 1;
            jArr[i2] = jArr[i] + ((long) aVar2.getCount());
            i = i2;
        }
        return new RegularImmutableSortedMultiset(new RegularImmutableSortedSet(aVar.e(), comparator), jArr, 0, collection.size());
    }

    public static <E> ImmutableSortedMultiset<E> emptyMultiset(Comparator<? super E> comparator) {
        return Ordering.natural().equals(comparator) ? (ImmutableSortedMultiset<E>) RegularImmutableSortedMultiset.NATURAL_EMPTY_MULTISET : new RegularImmutableSortedMultiset(comparator);
    }

    public static int lambda$toImmutableSortedMultiset$0(Object obj) {
        return 1;
    }

    public static j lambda$toImmutableSortedMultiset$3(j jVar, j jVar2) {
        jVar.addAll(jVar2);
        return jVar;
    }

    public static ImmutableSortedMultiset lambda$toImmutableSortedMultiset$4(Comparator comparator, j jVar) {
        return copyOfSortedEntries(comparator, jVar.entrySet());
    }

    public static <T, E> void mapAndAdd(T t, j jVar, Function<? super T, ? extends E> function, ToIntFunction<? super T> toIntFunction) {
        jVar.add(xd8.o(function.apply(t)), toIntFunction.applyAsInt(t));
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

    public abstract j.a firstEntry();

    public abstract ImmutableSortedMultiset<E> headMultiset(E e, BoundType boundType);

    public abstract j.a lastEntry();

    @Override
    @Deprecated
    public final j.a pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final j.a pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    public abstract ImmutableSortedMultiset<E> tailMultiset(E e, BoundType boundType);

    @Override
    public Object writeReplace() {
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
        xd8.o(comparator);
        xd8.o(function);
        xd8.o(toIntFunction);
        return Collector.of(new Supplier() {
            @Override
            public final Object get() {
                return TreeMultiset.create(comparator);
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ImmutableSortedMultiset.mapAndAdd(obj2, (j) obj, function, toIntFunction);
            }
        }, new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return ImmutableSortedMultiset.lambda$toImmutableSortedMultiset$3((j) obj, (j) obj2);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ImmutableSortedMultiset.lambda$toImmutableSortedMultiset$4(comparator, (j) obj);
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
    public ImmutableSortedMultiset<E> subMultiset(E e, BoundType boundType, E e2, BoundType boundType2) {
        xd8.k(comparator().compare(e, e2) <= 0, "Expected lowerBound <= upperBound but %s > %s", e, e2);
        return tailMultiset((Object) e, boundType).headMultiset((Object) e2, boundType2);
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Iterator<? extends E> it) {
        return copyOf(Ordering.natural(), it);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable, Comparable comparable2) {
        return copyOf(Ordering.natural(), Arrays.asList(comparable, comparable2));
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Comparator<? super E> comparator, Iterator<? extends E> it) {
        xd8.o(comparator);
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
    public static <E> ImmutableSortedMultiset<E> of(E e) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public static <E> ImmutableSortedMultiset<E> of(E e, E e2) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public static <E> ImmutableSortedMultiset<E> of(E e, E e2, E e3) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public static <E> ImmutableSortedMultiset<E> of(E e, E e2, E e3, E e4) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public static <E> ImmutableSortedMultiset<E> of(E e, E e2, E e3, E e4, E e5) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public static <E> ImmutableSortedMultiset<E> of(E e, E e2, E e3, E e4, E e5, E e6, E... eArr) {
        throw new UnsupportedOperationException();
    }
}
