package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.stream.Collector;

public abstract class ImmutableBiMap<K, V> extends ImmutableMap<K, V> implements k {
    private static final long serialVersionUID = 912559;

    private static class SerializedForm<K, V> extends ImmutableMap.SerializedForm<K, V> {
        private static final long serialVersionUID = 0;

        SerializedForm(ImmutableBiMap<K, V> immutableBiMap) {
            super(immutableBiMap);
        }

        @Override
        public a makeBuilder(int i10) {
            return new a(i10);
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
            int i10 = this.f29596c;
            if (i10 == 0) {
                return ImmutableBiMap.of();
            }
            if (this.f29594a != null) {
                if (this.f29597d) {
                    this.f29595b = Arrays.copyOf(this.f29595b, i10 * 2);
                }
                ImmutableMap.b.l(this.f29595b, this.f29596c, this.f29594a);
            }
            this.f29597d = true;
            return new RegularImmutableBiMap(this.f29595b, this.f29596c);
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

        a(int i10) {
            super(i10);
        }
    }

    ImmutableBiMap() {
    }

    public static <K, V> a builder() {
        return new a();
    }

    public static <K, V> a builderWithExpectedSize(int i10) {
        e2.b(i10, "expectedSize");
        return new a(i10);
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
        return d2.N(function, function2);
    }

    @Deprecated
    public static <T, K, V> Collector<T, ?, ImmutableMap<K, V>> toImmutableMap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final V forcePut(K k10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public abstract ImmutableBiMap<V, K> inverse();

    @Override
    Object writeReplace() {
        return new SerializedForm(this);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k10, V v10) {
        e2.a(k10, v10);
        return new RegularImmutableBiMap(new Object[]{k10, v10}, 1);
    }

    @Deprecated
    public static <T, K, V> Collector<T, ?, ImmutableMap<K, V>> toImmutableMap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, BinaryOperator<V> binaryOperator) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final ImmutableSet<V> createValues() {
        throw new AssertionError("should never be called");
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k10, V v10, K k11, V v11) {
        e2.a(k10, v10);
        e2.a(k11, v11);
        return new RegularImmutableBiMap(new Object[]{k10, v10, k11, v11}, 2);
    }

    @Override
    public ImmutableSet<V> values() {
        return inverse().keySet();
    }

    public static <K, V> ImmutableBiMap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return new a(iterable instanceof Collection ? ((Collection) iterable).size() : 4).j(iterable).a();
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12) {
        e2.a(k10, v10);
        e2.a(k11, v11);
        e2.a(k12, v12);
        return new RegularImmutableBiMap(new Object[]{k10, v10, k11, v11, k12, v12}, 3);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13) {
        e2.a(k10, v10);
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        return new RegularImmutableBiMap(new Object[]{k10, v10, k11, v11, k12, v12, k13, v13}, 4);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14) {
        e2.a(k10, v10);
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        e2.a(k14, v14);
        return new RegularImmutableBiMap(new Object[]{k10, v10, k11, v11, k12, v12, k13, v13, k14, v14}, 5);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15) {
        e2.a(k10, v10);
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        e2.a(k14, v14);
        e2.a(k15, v15);
        return new RegularImmutableBiMap(new Object[]{k10, v10, k11, v11, k12, v12, k13, v13, k14, v14, k15, v15}, 6);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16) {
        e2.a(k10, v10);
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        e2.a(k14, v14);
        e2.a(k15, v15);
        e2.a(k16, v16);
        return new RegularImmutableBiMap(new Object[]{k10, v10, k11, v11, k12, v12, k13, v13, k14, v14, k15, v15, k16, v16}, 7);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16, K k17, V v17) {
        e2.a(k10, v10);
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        e2.a(k14, v14);
        e2.a(k15, v15);
        e2.a(k16, v16);
        e2.a(k17, v17);
        return new RegularImmutableBiMap(new Object[]{k10, v10, k11, v11, k12, v12, k13, v13, k14, v14, k15, v15, k16, v16, k17, v17}, 8);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16, K k17, V v17, K k18, V v18) {
        e2.a(k10, v10);
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        e2.a(k14, v14);
        e2.a(k15, v15);
        e2.a(k16, v16);
        e2.a(k17, v17);
        e2.a(k18, v18);
        return new RegularImmutableBiMap(new Object[]{k10, v10, k11, v11, k12, v12, k13, v13, k14, v14, k15, v15, k16, v16, k17, v17, k18, v18}, 9);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16, K k17, V v17, K k18, V v18, K k19, V v19) {
        e2.a(k10, v10);
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        e2.a(k14, v14);
        e2.a(k15, v15);
        e2.a(k16, v16);
        e2.a(k17, v17);
        e2.a(k18, v18);
        e2.a(k19, v19);
        return new RegularImmutableBiMap(new Object[]{k10, v10, k11, v11, k12, v12, k13, v13, k14, v14, k15, v15, k16, v16, k17, v17, k18, v18, k19, v19}, 10);
    }
}
