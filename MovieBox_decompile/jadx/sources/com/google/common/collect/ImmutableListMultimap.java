package com.google.common.collect;

import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.Objects;
import java.util.function.Function;
import java.util.stream.Collector;
import java.util.stream.Stream;

public class ImmutableListMultimap<K, V> extends ImmutableMultimap<K, V> implements i3 {
    private static final long serialVersionUID = 0;
    private transient ImmutableListMultimap<V, K> inverse;

    public static final class a extends ImmutableMultimap.c {
        public a() {
        }

        public ImmutableListMultimap j() {
            return (ImmutableListMultimap) super.a();
        }

        a k(ImmutableMultimap.c cVar) {
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

        public a n(Iterable iterable) {
            super.h(iterable);
            return this;
        }

        @Override
        public a i(Object obj, Iterable iterable) {
            super.i(obj, iterable);
            return this;
        }

        a(int i10) {
            super(i10);
        }
    }

    ImmutableListMultimap(ImmutableMap<K, ImmutableList<V>> immutableMap, int i10) {
        super(immutableMap, i10);
    }

    public static <K, V> a builder() {
        return new a();
    }

    public static <K, V> a builderWithExpectedKeys(int i10) {
        e2.b(i10, "expectedKeys");
        return new a(i10);
    }

    public static <K, V> ImmutableListMultimap<K, V> copyOf(j3 j3Var) {
        if (j3Var.isEmpty()) {
            return of();
        }
        if (j3Var instanceof ImmutableListMultimap) {
            ImmutableListMultimap<K, V> immutableListMultimap = (ImmutableListMultimap) j3Var;
            if (!immutableListMultimap.isPartialView()) {
                return immutableListMultimap;
            }
        }
        return fromMapEntries(j3Var.asMap().entrySet(), null);
    }

    public static <T, K, V> Collector<T, ?, ImmutableListMultimap<K, V>> flatteningToImmutableListMultimap(Function<? super T, ? extends K> function, Function<? super T, ? extends Stream<? extends V>> function2) {
        return d2.s(function, function2);
    }

    static <K, V> ImmutableListMultimap<K, V> fromMapBuilderEntries(Collection<? extends Map.Entry<K, ImmutableCollection.b>> collection, Comparator<? super V> comparator) {
        if (collection.isEmpty()) {
            return of();
        }
        ImmutableMap.b bVar = new ImmutableMap.b(collection.size());
        int size = 0;
        for (Map.Entry<K, ImmutableCollection.b> entry : collection) {
            K key = entry.getKey();
            ImmutableList.a aVar = (ImmutableList.a) entry.getValue();
            ImmutableList immutableListE = comparator == null ? aVar.e() : aVar.o(comparator);
            bVar.h(key, immutableListE);
            size += immutableListE.size();
        }
        return new ImmutableListMultimap<>(bVar.d(), size);
    }

    static <K, V> ImmutableListMultimap<K, V> fromMapEntries(Collection<? extends Map.Entry<? extends K, ? extends Collection<? extends V>>> collection, Comparator<? super V> comparator) {
        if (collection.isEmpty()) {
            return of();
        }
        ImmutableMap.b bVar = new ImmutableMap.b(collection.size());
        int size = 0;
        for (Map.Entry<? extends K, ? extends Collection<? extends V>> entry : collection) {
            K key = entry.getKey();
            Collection<? extends V> value = entry.getValue();
            ImmutableList immutableListCopyOf = comparator == null ? ImmutableList.copyOf((Collection) value) : ImmutableList.sortedCopyOf(comparator, value);
            if (!immutableListCopyOf.isEmpty()) {
                bVar.h(key, immutableListCopyOf);
                size += immutableListCopyOf.size();
            }
        }
        return new ImmutableListMultimap<>(bVar.d(), size);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ImmutableListMultimap<V, K> invert() {
        a aVarBuilder = builder();
        r4 it = entries().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            aVarBuilder.f(entry.getValue(), entry.getKey());
        }
        ImmutableListMultimap<V, K> immutableListMultimapJ = aVarBuilder.j();
        immutableListMultimapJ.inverse = this;
        return immutableListMultimapJ;
    }

    public static <K, V> ImmutableListMultimap<K, V> of() {
        return EmptyImmutableListMultimap.INSTANCE;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i10 = objectInputStream.readInt();
        if (i10 < 0) {
            throw new InvalidObjectException("Invalid key count " + i10);
        }
        ImmutableMap.b bVarBuilder = ImmutableMap.builder();
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            Object object = objectInputStream.readObject();
            Objects.requireNonNull(object);
            int i13 = objectInputStream.readInt();
            if (i13 <= 0) {
                throw new InvalidObjectException("Invalid value count " + i13);
            }
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (int i14 = 0; i14 < i13; i14++) {
                Object object2 = objectInputStream.readObject();
                Objects.requireNonNull(object2);
                aVarBuilder.a(object2);
            }
            bVarBuilder.h(object, aVarBuilder.e());
            i11 += i13;
        }
        try {
            ImmutableMultimap.d.f29616a.b(this, bVarBuilder.d());
            ImmutableMultimap.d.f29617b.a(this, i11);
        } catch (IllegalArgumentException e10) {
            throw ((InvalidObjectException) new InvalidObjectException(e10.getMessage()).initCause(e10));
        }
    }

    public static <T, K, V> Collector<T, ?, ImmutableListMultimap<K, V>> toImmutableListMultimap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        return d2.P(function, function2);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        w3.j(this, objectOutputStream);
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k10, V v10) {
        a aVarBuilder = builder();
        aVarBuilder.f(k10, v10);
        return aVarBuilder.j();
    }

    @Override
    public ImmutableListMultimap<V, K> inverse() {
        ImmutableListMultimap<V, K> immutableListMultimap = this.inverse;
        if (immutableListMultimap != null) {
            return immutableListMultimap;
        }
        ImmutableListMultimap<V, K> immutableListMultimapInvert = invert();
        this.inverse = immutableListMultimapInvert;
        return immutableListMultimapInvert;
    }

    @Override
    public ImmutableList<V> get(K k10) {
        ImmutableList<V> immutableList = (ImmutableList) this.map.get(k10);
        return immutableList == null ? ImmutableList.of() : immutableList;
    }

    @Override
    @Deprecated
    public final ImmutableList<V> removeAll(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final ImmutableList<V> mo283replaceValues(K k10, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k10, V v10, K k11, V v11) {
        a aVarBuilder = builder();
        aVarBuilder.f(k10, v10);
        aVarBuilder.f(k11, v11);
        return aVarBuilder.j();
    }

    public static <K, V> ImmutableListMultimap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return new a().n(iterable).j();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12) {
        a aVarBuilder = builder();
        aVarBuilder.f(k10, v10);
        aVarBuilder.f(k11, v11);
        aVarBuilder.f(k12, v12);
        return aVarBuilder.j();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13) {
        a aVarBuilder = builder();
        aVarBuilder.f(k10, v10);
        aVarBuilder.f(k11, v11);
        aVarBuilder.f(k12, v12);
        aVarBuilder.f(k13, v13);
        return aVarBuilder.j();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14) {
        a aVarBuilder = builder();
        aVarBuilder.f(k10, v10);
        aVarBuilder.f(k11, v11);
        aVarBuilder.f(k12, v12);
        aVarBuilder.f(k13, v13);
        aVarBuilder.f(k14, v14);
        return aVarBuilder.j();
    }
}
