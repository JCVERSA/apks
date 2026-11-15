package com.google.common.collect;

import defpackage.ce0;
import defpackage.k71;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.stream.Collector;

public abstract class ImmutableBiMap<K, V> extends ImmutableMap<K, V> implements ce0 {
    private static final long serialVersionUID = 912559;

    public static class SerializedForm<K, V> extends ImmutableMap.SerializedForm<K, V> {
        private static final long serialVersionUID = 0;

        public SerializedForm(ImmutableBiMap<K, V> immutableBiMap) {
            super(immutableBiMap);
        }

        @Override
        public a makeBuilder(int i) {
            return new a(i);
        }
    }

    public static final class a extends ImmutableMap.b {
        public a() {
        }

        @Override
        public ImmutableBiMap a() {
            return d();
        }

        @Override
        public ImmutableBiMap c() {
            throw new UnsupportedOperationException("Not supported for bimaps");
        }

        @Override
        public ImmutableBiMap d() {
            int i = this.c;
            if (i == 0) {
                return ImmutableBiMap.of();
            }
            if (this.a != null) {
                if (this.d) {
                    this.b = Arrays.copyOf(this.b, i * 2);
                }
                ImmutableMap.b.l(this.b, this.c, this.a);
            }
            this.d = true;
            return new RegularImmutableBiMap(this.b, this.c);
        }

        @Override
        public a e(ImmutableMap.b bVar) {
            super.e(bVar);
            return this;
        }

        @Override
        public a h(Object obj, Object obj2) {
            super.h(obj, obj2);
            return this;
        }

        @Override
        public a i(Map.Entry entry) {
            super.i(entry);
            return this;
        }

        @Override
        public a j(Iterable iterable) {
            super.j(iterable);
            return this;
        }

        @Override
        public a k(Map map) {
            super.k(map);
            return this;
        }

        public a(int i) {
            super(i);
        }
    }

    public static <K, V> a builder() {
        return new a();
    }

    public static <K, V> a builderWithExpectedSize(int i) {
        k71.b(i, "expectedSize");
        return new a(i);
    }

    public static <K, V> ImmutableBiMap<K, V> copyOf(Map<? extends K, ? extends V> map) {
        if (map instanceof ImmutableBiMap) {
            ImmutableBiMap<K, V> immutableBiMap = (ImmutableBiMap) map;
            if (!immutableBiMap.isPartialView()) {
                return immutableBiMap;
            }
        }
        return copyOf((Iterable) map.entrySet());
    }

    public static <K, V> ImmutableBiMap<K, V> of() {
        return RegularImmutableBiMap.EMPTY;
    }

    @SafeVarargs
    public static <K, V> ImmutableBiMap<K, V> ofEntries(Map.Entry<? extends K, ? extends V>... entryArr) {
        return copyOf((Iterable) Arrays.asList(entryArr));
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <T, K, V> Collector<T, ?, ImmutableBiMap<K, V>> toImmutableBiMap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        return f.N(function, function2);
    }

    @Deprecated
    public static <T, K, V> Collector<T, ?, ImmutableMap<K, V>> toImmutableMap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final V forcePut(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override
    public abstract ImmutableBiMap<V, K> inverse();

    @Override
    public Object writeReplace() {
        return new SerializedForm(this);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k, V v) {
        k71.a(k, v);
        return new RegularImmutableBiMap(new Object[]{k, v}, 1);
    }

    @Deprecated
    public static <T, K, V> Collector<T, ?, ImmutableMap<K, V>> toImmutableMap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, BinaryOperator<V> binaryOperator) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final ImmutableSet<V> createValues() {
        throw new AssertionError("should never be called");
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k, V v, K k2, V v2) {
        k71.a(k, v);
        k71.a(k2, v2);
        return new RegularImmutableBiMap(new Object[]{k, v, k2, v2}, 2);
    }

    @Override
    public ImmutableSet<V> values() {
        return inverse().keySet();
    }

    public static <K, V> ImmutableBiMap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return new a(iterable instanceof Collection ? ((Collection) iterable).size() : 4).j(iterable).a();
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3) {
        k71.a(k, v);
        k71.a(k2, v2);
        k71.a(k3, v3);
        return new RegularImmutableBiMap(new Object[]{k, v, k2, v2, k3, v3}, 3);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        k71.a(k, v);
        k71.a(k2, v2);
        k71.a(k3, v3);
        k71.a(k4, v4);
        return new RegularImmutableBiMap(new Object[]{k, v, k2, v2, k3, v3, k4, v4}, 4);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        k71.a(k, v);
        k71.a(k2, v2);
        k71.a(k3, v3);
        k71.a(k4, v4);
        k71.a(k5, v5);
        return new RegularImmutableBiMap(new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5}, 5);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6) {
        k71.a(k, v);
        k71.a(k2, v2);
        k71.a(k3, v3);
        k71.a(k4, v4);
        k71.a(k5, v5);
        k71.a(k6, v6);
        return new RegularImmutableBiMap(new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5, k6, v6}, 6);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6, K k7, V v7) {
        k71.a(k, v);
        k71.a(k2, v2);
        k71.a(k3, v3);
        k71.a(k4, v4);
        k71.a(k5, v5);
        k71.a(k6, v6);
        k71.a(k7, v7);
        return new RegularImmutableBiMap(new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5, k6, v6, k7, v7}, 7);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6, K k7, V v7, K k8, V v8) {
        k71.a(k, v);
        k71.a(k2, v2);
        k71.a(k3, v3);
        k71.a(k4, v4);
        k71.a(k5, v5);
        k71.a(k6, v6);
        k71.a(k7, v7);
        k71.a(k8, v8);
        return new RegularImmutableBiMap(new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5, k6, v6, k7, v7, k8, v8}, 8);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6, K k7, V v7, K k8, V v8, K k9, V v9) {
        k71.a(k, v);
        k71.a(k2, v2);
        k71.a(k3, v3);
        k71.a(k4, v4);
        k71.a(k5, v5);
        k71.a(k6, v6);
        k71.a(k7, v7);
        k71.a(k8, v8);
        k71.a(k9, v9);
        return new RegularImmutableBiMap(new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5, k6, v6, k7, v7, k8, v8, k9, v9}, 9);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6, K k7, V v7, K k8, V v8, K k9, V v9, K k10, V v10) {
        k71.a(k, v);
        k71.a(k2, v2);
        k71.a(k3, v3);
        k71.a(k4, v4);
        k71.a(k5, v5);
        k71.a(k6, v6);
        k71.a(k7, v7);
        k71.a(k8, v8);
        k71.a(k9, v9);
        k71.a(k10, v10);
        return new RegularImmutableBiMap(new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5, k6, v6, k7, v7, k8, v8, k9, v9, k10, v10}, 10);
    }
}
