package com.google.common.collect;

import defpackage.at6;
import defpackage.dgb;
import defpackage.fm5;
import defpackage.k71;
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

public class ImmutableListMultimap<K, V> extends ImmutableMultimap<K, V> implements fm5 {
    private static final long serialVersionUID = 0;
    private transient ImmutableListMultimap<V, K> inverse;

    public static final class a extends ImmutableMultimap.c {
        public a() {
        }

        public ImmutableListMultimap k() {
            return (ImmutableListMultimap) super.a();
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

        public a o(at6 at6Var) {
            super.h(at6Var);
            return this;
        }

        public a p(Iterable iterable) {
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

    public ImmutableListMultimap(ImmutableMap<K, ImmutableList<V>> immutableMap, int i) {
        super(immutableMap, i);
    }

    public static <K, V> a builder() {
        return new a();
    }

    public static <K, V> a builderWithExpectedKeys(int i) {
        k71.b(i, "expectedKeys");
        return new a(i);
    }

    public static <K, V> ImmutableListMultimap<K, V> copyOf(at6 at6Var) {
        if (at6Var.isEmpty()) {
            return of();
        }
        if (at6Var instanceof ImmutableListMultimap) {
            ImmutableListMultimap<K, V> immutableListMultimap = (ImmutableListMultimap) at6Var;
            if (!immutableListMultimap.isPartialView()) {
                return immutableListMultimap;
            }
        }
        return fromMapEntries(at6Var.asMap().entrySet(), null);
    }

    public static <T, K, V> Collector<T, ?, ImmutableListMultimap<K, V>> flatteningToImmutableListMultimap(Function<? super T, ? extends K> function, Function<? super T, ? extends Stream<? extends V>> function2) {
        return f.s(function, function2);
    }

    public static <K, V> ImmutableListMultimap<K, V> fromMapBuilderEntries(Collection<? extends Map.Entry<K, ImmutableCollection.b>> collection, Comparator<? super V> comparator) {
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

    public static <K, V> ImmutableListMultimap<K, V> fromMapEntries(Collection<? extends Map.Entry<? extends K, ? extends Collection<? extends V>>> collection, Comparator<? super V> comparator) {
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
        dgb it = entries().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            aVarBuilder.f(entry.getValue(), entry.getKey());
        }
        ImmutableListMultimap<V, K> immutableListMultimapK = aVarBuilder.k();
        immutableListMultimapK.inverse = this;
        return immutableListMultimapK;
    }

    public static <K, V> ImmutableListMultimap<K, V> of() {
        return EmptyImmutableListMultimap.INSTANCE;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
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
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (int i5 = 0; i5 < i4; i5++) {
                Object object2 = objectInputStream.readObject();
                Objects.requireNonNull(object2);
                aVarBuilder.a(object2);
            }
            bVarBuilder.h(object, aVarBuilder.e());
            i2 += i4;
        }
        try {
            ImmutableMultimap.d.a.b(this, bVarBuilder.d());
            ImmutableMultimap.d.b.a(this, i2);
        } catch (IllegalArgumentException e) {
            throw ((InvalidObjectException) new InvalidObjectException(e.getMessage()).initCause(e));
        }
    }

    public static <T, K, V> Collector<T, ?, ImmutableListMultimap<K, V>> toImmutableListMultimap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        return f.P(function, function2);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        n.j(this, objectOutputStream);
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k, V v) {
        a aVarBuilder = builder();
        aVarBuilder.f(k, v);
        return aVarBuilder.k();
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
    public ImmutableList<V> get(K k) {
        ImmutableList<V> immutableList = (ImmutableList) this.map.get(k);
        return immutableList == null ? ImmutableList.of() : immutableList;
    }

    @Override
    @Deprecated
    public final ImmutableList<V> removeAll(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final ImmutableList<V> mo77replaceValues(K k, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k, V v, K k2, V v2) {
        a aVarBuilder = builder();
        aVarBuilder.f(k, v);
        aVarBuilder.f(k2, v2);
        return aVarBuilder.k();
    }

    public static <K, V> ImmutableListMultimap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return new a().p(iterable).k();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3) {
        a aVarBuilder = builder();
        aVarBuilder.f(k, v);
        aVarBuilder.f(k2, v2);
        aVarBuilder.f(k3, v3);
        return aVarBuilder.k();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        a aVarBuilder = builder();
        aVarBuilder.f(k, v);
        aVarBuilder.f(k2, v2);
        aVarBuilder.f(k3, v3);
        aVarBuilder.f(k4, v4);
        return aVarBuilder.k();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        a aVarBuilder = builder();
        aVarBuilder.f(k, v);
        aVarBuilder.f(k2, v2);
        aVarBuilder.f(k3, v3);
        aVarBuilder.f(k4, v4);
        aVarBuilder.f(k5, v5);
        return aVarBuilder.k();
    }
}
