package com.google.common.collect;

import defpackage.dgb;
import defpackage.i3;
import defpackage.k71;
import defpackage.xd8;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.SortedMap;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.stream.Collector;

public abstract class ImmutableMap<K, V> implements Map<K, V>, Serializable {
    static final Map.Entry<?, ?>[] EMPTY_ENTRY_ARRAY = new Map.Entry[0];
    private static final long serialVersionUID = 912559;
    private transient ImmutableSet<Map.Entry<K, V>> entrySet;
    private transient ImmutableSet<K> keySet;
    private transient ImmutableSetMultimap<K, V> multimapView;
    private transient ImmutableCollection<V> values;

    public static abstract class IteratorBasedImmutableMap<K, V> extends ImmutableMap<K, V> {
        @Override
        public ImmutableSet<Map.Entry<K, V>> createEntrySet() {
            return new ImmutableMapEntrySet<K, V>() {
                @Override
                public ImmutableMap<K, V> map() {
                    return IteratorBasedImmutableMap.this;
                }

                @Override
                public Object writeReplace() {
                    return super.writeReplace();
                }

                @Override
                public dgb iterator() {
                    return IteratorBasedImmutableMap.this.entryIterator();
                }
            };
        }

        @Override
        public ImmutableSet<K> createKeySet() {
            return new ImmutableMapKeySet(this);
        }

        @Override
        public ImmutableCollection<V> createValues() {
            return new ImmutableMapValues(this);
        }

        public abstract dgb entryIterator();

        @Override
        public Set entrySet() {
            return super.entrySet();
        }

        @Override
        public Set keySet() {
            return super.keySet();
        }

        @Override
        public Collection values() {
            return super.values();
        }

        @Override
        public Object writeReplace() {
            return super.writeReplace();
        }
    }

    public final class MapViewOfValuesAsSingletonSets extends IteratorBasedImmutableMap<K, ImmutableSet<V>> {

        public class a extends dgb {
            public final Iterator b;
            public final MapViewOfValuesAsSingletonSets c;

            public class C0097a extends i3 {
                public final Map.Entry b;
                public final a c;

                public C0097a(a aVar, Map.Entry entry) {
                    this.b = entry;
                    this.c = aVar;
                }

                @Override
                public ImmutableSet getValue() {
                    return ImmutableSet.of(this.b.getValue());
                }

                @Override
                public Object getKey() {
                    return this.b.getKey();
                }
            }

            public a(MapViewOfValuesAsSingletonSets mapViewOfValuesAsSingletonSets, Iterator it) {
                this.b = it;
                this.c = mapViewOfValuesAsSingletonSets;
            }

            @Override
            public Map.Entry next() {
                return new C0097a(this, (Map.Entry) this.b.next());
            }

            @Override
            public boolean hasNext() {
                return this.b.hasNext();
            }
        }

        public MapViewOfValuesAsSingletonSets() {
        }

        @Override
        public boolean containsKey(Object obj) {
            return ImmutableMap.this.containsKey(obj);
        }

        @Override
        public ImmutableSet<K> createKeySet() {
            return ImmutableMap.this.keySet();
        }

        @Override
        public dgb entryIterator() {
            return new a(this, ImmutableMap.this.entrySet().iterator());
        }

        @Override
        public int hashCode() {
            return ImmutableMap.this.hashCode();
        }

        @Override
        public boolean isHashCodeFast() {
            return ImmutableMap.this.isHashCodeFast();
        }

        @Override
        public boolean isPartialView() {
            return ImmutableMap.this.isPartialView();
        }

        @Override
        public int size() {
            return ImmutableMap.this.size();
        }

        @Override
        public Object writeReplace() {
            return super.writeReplace();
        }

        public MapViewOfValuesAsSingletonSets(ImmutableMap immutableMap, a aVar) {
            this();
        }

        @Override
        public ImmutableSet<V> get(Object obj) {
            Object obj2 = ImmutableMap.this.get(obj);
            if (obj2 == null) {
                return null;
            }
            return ImmutableSet.of(obj2);
        }
    }

    public static class SerializedForm<K, V> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Object keys;
        private final Object values;

        public SerializedForm(ImmutableMap<K, V> immutableMap) {
            Object[] objArr = new Object[immutableMap.size()];
            Object[] objArr2 = new Object[immutableMap.size()];
            dgb it = immutableMap.entrySet().iterator();
            int i = 0;
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                objArr[i] = entry.getKey();
                objArr2[i] = entry.getValue();
                i++;
            }
            this.keys = objArr;
            this.values = objArr2;
        }

        public final Object legacyReadResolve() {
            Object[] objArr = (Object[]) this.keys;
            Object[] objArr2 = (Object[]) this.values;
            b bVarMakeBuilder = makeBuilder(objArr.length);
            for (int i = 0; i < objArr.length; i++) {
                bVarMakeBuilder.h(objArr[i], objArr2[i]);
            }
            return bVarMakeBuilder.d();
        }

        public b makeBuilder(int i) {
            return new b(i);
        }

        public final Object readResolve() {
            Object obj = this.keys;
            if (!(obj instanceof ImmutableSet)) {
                return legacyReadResolve();
            }
            ImmutableSet immutableSet = (ImmutableSet) obj;
            ImmutableCollection immutableCollection = (ImmutableCollection) this.values;
            b bVarMakeBuilder = makeBuilder(immutableSet.size());
            dgb it = immutableSet.iterator();
            dgb it2 = immutableCollection.iterator();
            while (it.hasNext()) {
                bVarMakeBuilder.h(it.next(), it2.next());
            }
            return bVarMakeBuilder.d();
        }
    }

    public class a extends dgb {
        public final dgb b;
        public final ImmutableMap c;

        public a(ImmutableMap immutableMap, dgb dgbVar) {
            this.b = dgbVar;
            this.c = immutableMap;
        }

        @Override
        public boolean hasNext() {
            return this.b.hasNext();
        }

        @Override
        public Object next() {
            return ((Map.Entry) this.b.next()).getKey();
        }
    }

    public static class b {
        public Comparator a;
        public Object[] b;
        public int c;
        public boolean d;
        public a e;

        public static final class a {
            public final Object a;
            public final Object b;
            public final Object c;

            public a(Object obj, Object obj2, Object obj3) {
                this.a = obj;
                this.b = obj2;
                this.c = obj3;
            }

            public IllegalArgumentException a() {
                return new IllegalArgumentException("Multiple entries with same key: " + this.a + "=" + this.b + " and " + this.a + "=" + this.c);
            }
        }

        public b() {
            this(4);
        }

        private void f(int i) {
            int i2 = i * 2;
            Object[] objArr = this.b;
            if (i2 > objArr.length) {
                this.b = Arrays.copyOf(objArr, ImmutableCollection.b.f(objArr.length, i2));
                this.d = false;
            }
        }

        public static void l(Object[] objArr, int i, Comparator comparator) {
            Map.Entry[] entryArr = new Map.Entry[i];
            for (int i2 = 0; i2 < i; i2++) {
                int i3 = i2 * 2;
                Object obj = objArr[i3];
                Objects.requireNonNull(obj);
                Object obj2 = objArr[i3 + 1];
                Objects.requireNonNull(obj2);
                entryArr[i2] = new AbstractMap.SimpleImmutableEntry(obj, obj2);
            }
            Arrays.sort(entryArr, 0, i, Ordering.from(comparator).onResultOf(Maps.C()));
            for (int i4 = 0; i4 < i; i4++) {
                int i5 = i4 * 2;
                objArr[i5] = entryArr[i4].getKey();
                objArr[i5 + 1] = entryArr[i4].getValue();
            }
        }

        public ImmutableMap a() {
            return d();
        }

        public final ImmutableMap b(boolean z) {
            Object[] objArrG;
            a aVar;
            a aVar2;
            if (z && (aVar2 = this.e) != null) {
                throw aVar2.a();
            }
            int length = this.c;
            if (this.a == null) {
                objArrG = this.b;
            } else {
                if (this.d) {
                    this.b = Arrays.copyOf(this.b, length * 2);
                }
                objArrG = this.b;
                if (!z) {
                    objArrG = g(objArrG, this.c);
                    if (objArrG.length < this.b.length) {
                        length = objArrG.length >>> 1;
                    }
                }
                l(objArrG, length, this.a);
            }
            this.d = true;
            RegularImmutableMap regularImmutableMapCreate = RegularImmutableMap.create(length, objArrG, this);
            if (!z || (aVar = this.e) == null) {
                return regularImmutableMapCreate;
            }
            throw aVar.a();
        }

        public ImmutableMap c() {
            return b(false);
        }

        public ImmutableMap d() {
            return b(true);
        }

        public b e(b bVar) {
            xd8.o(bVar);
            f(this.c + bVar.c);
            System.arraycopy(bVar.b, 0, this.b, this.c * 2, bVar.c * 2);
            this.c += bVar.c;
            return this;
        }

        public final Object[] g(Object[] objArr, int i) {
            HashSet hashSet = new HashSet();
            BitSet bitSet = new BitSet();
            for (int i2 = i - 1; i2 >= 0; i2--) {
                Object obj = objArr[i2 * 2];
                Objects.requireNonNull(obj);
                if (!hashSet.add(obj)) {
                    bitSet.set(i2);
                }
            }
            if (bitSet.isEmpty()) {
                return objArr;
            }
            Object[] objArr2 = new Object[(i - bitSet.cardinality()) * 2];
            int i3 = 0;
            int i4 = 0;
            while (i3 < i * 2) {
                if (bitSet.get(i3 >>> 1)) {
                    i3 += 2;
                } else {
                    int i5 = i4 + 1;
                    int i6 = i3 + 1;
                    Object obj2 = objArr[i3];
                    Objects.requireNonNull(obj2);
                    objArr2[i4] = obj2;
                    i4 += 2;
                    i3 += 2;
                    Object obj3 = objArr[i6];
                    Objects.requireNonNull(obj3);
                    objArr2[i5] = obj3;
                }
            }
            return objArr2;
        }

        public b h(Object obj, Object obj2) {
            f(this.c + 1);
            k71.a(obj, obj2);
            Object[] objArr = this.b;
            int i = this.c;
            objArr[i * 2] = obj;
            objArr[(i * 2) + 1] = obj2;
            this.c = i + 1;
            return this;
        }

        public b i(Map.Entry entry) {
            return h(entry.getKey(), entry.getValue());
        }

        public b j(Iterable iterable) {
            if (iterable instanceof Collection) {
                f(this.c + ((Collection) iterable).size());
            }
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                i((Map.Entry) it.next());
            }
            return this;
        }

        public b k(Map map) {
            return j(map.entrySet());
        }

        public b(int i) {
            this.b = new Object[i * 2];
            this.c = 0;
            this.d = false;
        }
    }

    public static <K, V> b builder() {
        return new b();
    }

    public static <K, V> b builderWithExpectedSize(int i) {
        k71.b(i, "expectedSize");
        return new b(i);
    }

    public static void checkNoConflict(boolean z, String str, Object obj, Object obj2) {
        if (!z) {
            throw conflictException(str, obj, obj2);
        }
    }

    public static IllegalArgumentException conflictException(String str, Object obj, Object obj2) {
        return new IllegalArgumentException("Multiple entries with same " + str + ": " + obj + " and " + obj2);
    }

    public static <K, V> ImmutableMap<K, V> copyOf(Map<? extends K, ? extends V> map) {
        if ((map instanceof ImmutableMap) && !(map instanceof SortedMap)) {
            ImmutableMap<K, V> immutableMap = (ImmutableMap) map;
            if (!immutableMap.isPartialView()) {
                return immutableMap;
            }
        }
        return copyOf(map.entrySet());
    }

    public static <K, V> Map.Entry<K, V> entryOf(K k, V v) {
        k71.a(k, v);
        return new AbstractMap.SimpleImmutableEntry(k, v);
    }

    public static <K, V> ImmutableMap<K, V> of() {
        return (ImmutableMap<K, V>) RegularImmutableMap.EMPTY;
    }

    @SafeVarargs
    public static <K, V> ImmutableMap<K, V> ofEntries(Map.Entry<? extends K, ? extends V>... entryArr) {
        return copyOf(Arrays.asList(entryArr));
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <T, K, V> Collector<T, ?, ImmutableMap<K, V>> toImmutableMap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        return f.Q(function, function2);
    }

    public ImmutableSetMultimap<K, V> asMultimap() {
        if (isEmpty()) {
            return ImmutableSetMultimap.of();
        }
        ImmutableSetMultimap<K, V> immutableSetMultimap = this.multimapView;
        if (immutableSetMultimap != null) {
            return immutableSetMultimap;
        }
        ImmutableSetMultimap<K, V> immutableSetMultimap2 = new ImmutableSetMultimap<>(new MapViewOfValuesAsSingletonSets(this, null), size(), null);
        this.multimapView = immutableSetMultimap2;
        return immutableSetMultimap2;
    }

    @Override
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override
    public boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    public abstract ImmutableSet<Map.Entry<K, V>> createEntrySet();

    public abstract ImmutableSet<K> createKeySet();

    public abstract ImmutableCollection<V> createValues();

    @Override
    public boolean equals(Object obj) {
        return Maps.h(this, obj);
    }

    @Override
    public abstract V get(Object obj);

    @Override
    public final V getOrDefault(Object obj, V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    @Override
    public int hashCode() {
        return Sets.d(entrySet());
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public boolean isHashCodeFast() {
        return false;
    }

    public abstract boolean isPartialView();

    public dgb keyIterator() {
        return new a(this, entrySet().iterator());
    }

    @Override
    @Deprecated
    public final V put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return Maps.x(this);
    }

    public Object writeReplace() {
        return new SerializedForm(this);
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v) {
        k71.a(k, v);
        return RegularImmutableMap.create(1, new Object[]{k, v});
    }

    public static <T, K, V> Collector<T, ?, ImmutableMap<K, V>> toImmutableMap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, BinaryOperator<V> binaryOperator) {
        return f.R(function, function2, binaryOperator);
    }

    @Override
    public ImmutableSet<Map.Entry<K, V>> entrySet() {
        ImmutableSet<Map.Entry<K, V>> immutableSet = this.entrySet;
        if (immutableSet != null) {
            return immutableSet;
        }
        ImmutableSet<Map.Entry<K, V>> immutableSetCreateEntrySet = createEntrySet();
        this.entrySet = immutableSetCreateEntrySet;
        return immutableSetCreateEntrySet;
    }

    @Override
    public ImmutableSet<K> keySet() {
        ImmutableSet<K> immutableSet = this.keySet;
        if (immutableSet != null) {
            return immutableSet;
        }
        ImmutableSet<K> immutableSetCreateKeySet = createKeySet();
        this.keySet = immutableSetCreateKeySet;
        return immutableSetCreateKeySet;
    }

    @Override
    public ImmutableCollection<V> values() {
        ImmutableCollection<V> immutableCollection = this.values;
        if (immutableCollection != null) {
            return immutableCollection;
        }
        ImmutableCollection<V> immutableCollectionCreateValues = createValues();
        this.values = immutableCollectionCreateValues;
        return immutableCollectionCreateValues;
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v, K k2, V v2) {
        k71.a(k, v);
        k71.a(k2, v2);
        return RegularImmutableMap.create(2, new Object[]{k, v, k2, v2});
    }

    public static <K, V> ImmutableMap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        b bVar = new b(iterable instanceof Collection ? ((Collection) iterable).size() : 4);
        bVar.j(iterable);
        return bVar.a();
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3) {
        k71.a(k, v);
        k71.a(k2, v2);
        k71.a(k3, v3);
        return RegularImmutableMap.create(3, new Object[]{k, v, k2, v2, k3, v3});
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        k71.a(k, v);
        k71.a(k2, v2);
        k71.a(k3, v3);
        k71.a(k4, v4);
        return RegularImmutableMap.create(4, new Object[]{k, v, k2, v2, k3, v3, k4, v4});
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        k71.a(k, v);
        k71.a(k2, v2);
        k71.a(k3, v3);
        k71.a(k4, v4);
        k71.a(k5, v5);
        return RegularImmutableMap.create(5, new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5});
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6) {
        k71.a(k, v);
        k71.a(k2, v2);
        k71.a(k3, v3);
        k71.a(k4, v4);
        k71.a(k5, v5);
        k71.a(k6, v6);
        return RegularImmutableMap.create(6, new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5, k6, v6});
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6, K k7, V v7) {
        k71.a(k, v);
        k71.a(k2, v2);
        k71.a(k3, v3);
        k71.a(k4, v4);
        k71.a(k5, v5);
        k71.a(k6, v6);
        k71.a(k7, v7);
        return RegularImmutableMap.create(7, new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5, k6, v6, k7, v7});
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6, K k7, V v7, K k8, V v8) {
        k71.a(k, v);
        k71.a(k2, v2);
        k71.a(k3, v3);
        k71.a(k4, v4);
        k71.a(k5, v5);
        k71.a(k6, v6);
        k71.a(k7, v7);
        k71.a(k8, v8);
        return RegularImmutableMap.create(8, new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5, k6, v6, k7, v7, k8, v8});
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6, K k7, V v7, K k8, V v8, K k9, V v9) {
        k71.a(k, v);
        k71.a(k2, v2);
        k71.a(k3, v3);
        k71.a(k4, v4);
        k71.a(k5, v5);
        k71.a(k6, v6);
        k71.a(k7, v7);
        k71.a(k8, v8);
        k71.a(k9, v9);
        return RegularImmutableMap.create(9, new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5, k6, v6, k7, v7, k8, v8, k9, v9});
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6, K k7, V v7, K k8, V v8, K k9, V v9, K k10, V v10) {
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
        return RegularImmutableMap.create(10, new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5, k6, v6, k7, v7, k8, v8, k9, v9, k10, v10});
    }
}
