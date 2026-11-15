package com.google.common.collect;

import defpackage.at6;
import defpackage.dgb;
import defpackage.k71;
import defpackage.ue9;
import defpackage.xd8;
import defpackage.zq6;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collector;
import java.util.stream.Stream;

public class ImmutableSetMultimap<K, V> extends ImmutableMultimap<K, V> implements ue9 {
    private static final long serialVersionUID = 0;
    private final transient ImmutableSet<V> emptySet;
    private transient ImmutableSet<Map.Entry<K, V>> entries;
    private transient ImmutableSetMultimap<V, K> inverse;

    public static final class EntrySet<K, V> extends ImmutableSet<Map.Entry<K, V>> {
        public final transient ImmutableSetMultimap b;

        public EntrySet(ImmutableSetMultimap<K, V> immutableSetMultimap) {
            this.b = immutableSetMultimap;
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.b.containsEntry(entry.getKey(), entry.getValue());
        }

        @Override
        public boolean isPartialView() {
            return false;
        }

        @Override
        public int size() {
            return this.b.size();
        }

        @Override
        public Object writeReplace() {
            return super.writeReplace();
        }

        @Override
        public dgb iterator() {
            return this.b.entryIterator();
        }
    }

    public static final class a extends ImmutableMultimap.c {
        public a() {
        }

        @Override
        public int d(int i, Iterable iterable) {
            return iterable instanceof Set ? Math.max(i, ((Set) iterable).size()) : i;
        }

        @Override
        public ImmutableCollection.b e(int i) {
            Comparator comparator = this.c;
            return comparator == null ? ImmutableSet.builderWithExpectedSize(i) : new ImmutableSortedSet.a(comparator, i);
        }

        public ImmutableSetMultimap k() {
            Map map = this.a;
            if (map == null) {
                return ImmutableSetMultimap.of();
            }
            Collection collectionEntrySet = map.entrySet();
            Comparator comparator = this.b;
            if (comparator != null) {
                collectionEntrySet = Ordering.from(comparator).onKeys().immutableSortedCopy(collectionEntrySet);
            }
            return ImmutableSetMultimap.fromMapBuilderEntries(collectionEntrySet, this.c);
        }

        public a l(ImmutableMultimap.c cVar) {
            super.b(cVar);
            return this;
        }

        @Override
        public a f(Object obj, Object obj2) {
            super.f(obj, obj2);
            return this;
        }

        @Override
        public a g(Map.Entry entry) {
            super.g(entry);
            return this;
        }

        public a o(Iterable iterable) {
            super.i(iterable);
            return this;
        }

        @Override
        public a j(Object obj, Iterable iterable) {
            super.j(obj, iterable);
            return this;
        }

        public a(int i) {
            super(i);
        }
    }

    public static final class b {
        public static final n.b a = n.a(ImmutableSetMultimap.class, "emptySet");
    }

    public ImmutableSetMultimap(ImmutableMap<K, ImmutableSet<V>> immutableMap, int i, Comparator<? super V> comparator) {
        super(immutableMap, i);
        this.emptySet = emptySet(comparator);
    }

    public static <K, V> a builder() {
        return new a();
    }

    public static <K, V> a builderWithExpectedKeys(int i) {
        k71.b(i, "expectedKeys");
        return new a(i);
    }

    public static <K, V> ImmutableSetMultimap<K, V> copyOf(at6 at6Var) {
        return copyOf(at6Var, null);
    }

    private static <V> ImmutableSet<V> emptySet(Comparator<? super V> comparator) {
        return comparator == null ? ImmutableSet.of() : ImmutableSortedSet.emptySet(comparator);
    }

    public static <T, K, V> Collector<T, ?, ImmutableSetMultimap<K, V>> flatteningToImmutableSetMultimap(Function<? super T, ? extends K> function, Function<? super T, ? extends Stream<? extends V>> function2) {
        return f.t(function, function2);
    }

    public static <K, V> ImmutableSetMultimap<K, V> fromMapBuilderEntries(Collection<? extends Map.Entry<K, ImmutableCollection.b>> collection, Comparator<? super V> comparator) {
        if (collection.isEmpty()) {
            return of();
        }
        ImmutableMap.b bVar = new ImmutableMap.b(collection.size());
        int size = 0;
        for (Map.Entry<K, ImmutableCollection.b> entry : collection) {
            K key = entry.getKey();
            ImmutableSet immutableSetValueSet = valueSet(comparator, ((ImmutableSet.a) entry.getValue()).e());
            if (!immutableSetValueSet.isEmpty()) {
                bVar.h(key, immutableSetValueSet);
                size += immutableSetValueSet.size();
            }
        }
        return new ImmutableSetMultimap<>(bVar.d(), size, comparator);
    }

    public static <K, V> ImmutableSetMultimap<K, V> fromMapEntries(Collection<? extends Map.Entry<? extends K, ? extends Collection<? extends V>>> collection, Comparator<? super V> comparator) {
        if (collection.isEmpty()) {
            return of();
        }
        ImmutableMap.b bVar = new ImmutableMap.b(collection.size());
        int size = 0;
        for (Map.Entry<? extends K, ? extends Collection<? extends V>> entry : collection) {
            K key = entry.getKey();
            ImmutableSet immutableSetValueSet = valueSet(comparator, entry.getValue());
            if (!immutableSetValueSet.isEmpty()) {
                bVar.h(key, immutableSetValueSet);
                size += immutableSetValueSet.size();
            }
        }
        return new ImmutableSetMultimap<>(bVar.d(), size, comparator);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ImmutableSetMultimap<V, K> invert() {
        a aVarBuilder = builder();
        dgb it = entries().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            aVarBuilder.f(entry.getValue(), entry.getKey());
        }
        ImmutableSetMultimap<V, K> immutableSetMultimapK = aVarBuilder.k();
        immutableSetMultimapK.inverse = this;
        return immutableSetMultimapK;
    }

    public static <K, V> ImmutableSetMultimap<K, V> of() {
        return EmptyImmutableSetMultimap.INSTANCE;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        Comparator comparator = (Comparator) objectInputStream.readObject();
        int i = objectInputStream.readInt();
        if (i < 0) {
            throw new InvalidObjectException("Invalid key count " + i);
        }
        ImmutableMap.b bVarBuilder = ImmutableMap.builder();
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object object = objectInputStream.readObject();
            Objects.requireNonNull(object);
            int i4 = objectInputStream.readInt();
            if (i4 <= 0) {
                throw new InvalidObjectException("Invalid value count " + i4);
            }
            ImmutableSet.a aVarValuesBuilder = valuesBuilder(comparator);
            for (int i5 = 0; i5 < i4; i5++) {
                Object object2 = objectInputStream.readObject();
                Objects.requireNonNull(object2);
                aVarValuesBuilder.a(object2);
            }
            ImmutableSet immutableSetE = aVarValuesBuilder.e();
            if (immutableSetE.size() != i4) {
                throw new InvalidObjectException("Duplicate key-value pairs exist for key " + object);
            }
            bVarBuilder.h(object, immutableSetE);
            i2 += i4;
        }
        try {
            ImmutableMultimap.d.a.b(this, bVarBuilder.d());
            ImmutableMultimap.d.b.a(this, i2);
            b.a.b(this, emptySet(comparator));
        } catch (IllegalArgumentException e) {
            throw ((InvalidObjectException) new InvalidObjectException(e.getMessage()).initCause(e));
        }
    }

    public static <T, K, V> Collector<T, ?, ImmutableSetMultimap<K, V>> toImmutableSetMultimap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        return f.W(function, function2);
    }

    private static <V> ImmutableSet<V> valueSet(Comparator<? super V> comparator, Collection<? extends V> collection) {
        return comparator == null ? ImmutableSet.copyOf((Collection) collection) : ImmutableSortedSet.copyOf((Comparator) comparator, (Collection) collection);
    }

    private static <V> ImmutableSet.a valuesBuilder(Comparator<? super V> comparator) {
        return comparator == null ? new ImmutableSet.a() : new ImmutableSortedSet.a(comparator);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(valueComparator());
        n.j(this, objectOutputStream);
    }

    public Comparator<? super V> valueComparator() {
        ImmutableSet<V> immutableSet = this.emptySet;
        if (immutableSet instanceof ImmutableSortedSet) {
            return ((ImmutableSortedSet) immutableSet).comparator();
        }
        return null;
    }

    private static <K, V> ImmutableSetMultimap<K, V> copyOf(at6 at6Var, Comparator<? super V> comparator) {
        xd8.o(at6Var);
        if (at6Var.isEmpty() && comparator == null) {
            return of();
        }
        if (at6Var instanceof ImmutableSetMultimap) {
            ImmutableSetMultimap<K, V> immutableSetMultimap = (ImmutableSetMultimap) at6Var;
            if (!immutableSetMultimap.isPartialView()) {
                return immutableSetMultimap;
            }
        }
        return fromMapEntries(at6Var.asMap().entrySet(), comparator);
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k, V v) {
        a aVarBuilder = builder();
        aVarBuilder.f(k, v);
        return aVarBuilder.k();
    }

    @Override
    public ImmutableSetMultimap<V, K> inverse() {
        ImmutableSetMultimap<V, K> immutableSetMultimap = this.inverse;
        if (immutableSetMultimap != null) {
            return immutableSetMultimap;
        }
        ImmutableSetMultimap<V, K> immutableSetMultimapInvert = invert();
        this.inverse = immutableSetMultimapInvert;
        return immutableSetMultimapInvert;
    }

    @Override
    public ImmutableSet<Map.Entry<K, V>> entries() {
        ImmutableSet<Map.Entry<K, V>> immutableSet = this.entries;
        if (immutableSet != null) {
            return immutableSet;
        }
        EntrySet entrySet = new EntrySet(this);
        this.entries = entrySet;
        return entrySet;
    }

    @Override
    public ImmutableSet<V> get(K k) {
        return (ImmutableSet) zq6.a((ImmutableSet) this.map.get(k), this.emptySet);
    }

    @Override
    @Deprecated
    public final ImmutableSet<V> removeAll(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final ImmutableSet<V> mo77replaceValues(K k, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k, V v, K k2, V v2) {
        a aVarBuilder = builder();
        aVarBuilder.f(k, v);
        aVarBuilder.f(k2, v2);
        return aVarBuilder.k();
    }

    public static <K, V> ImmutableSetMultimap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return new a().o(iterable).k();
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3) {
        a aVarBuilder = builder();
        aVarBuilder.f(k, v);
        aVarBuilder.f(k2, v2);
        aVarBuilder.f(k3, v3);
        return aVarBuilder.k();
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        a aVarBuilder = builder();
        aVarBuilder.f(k, v);
        aVarBuilder.f(k2, v2);
        aVarBuilder.f(k3, v3);
        aVarBuilder.f(k4, v4);
        return aVarBuilder.k();
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        a aVarBuilder = builder();
        aVarBuilder.f(k, v);
        aVarBuilder.f(k2, v2);
        aVarBuilder.f(k3, v3);
        aVarBuilder.f(k4, v4);
        aVarBuilder.f(k5, v5);
        return aVarBuilder.k();
    }
}
