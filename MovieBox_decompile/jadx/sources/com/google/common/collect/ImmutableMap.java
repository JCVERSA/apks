package com.google.common.collect;

import com.cloud.tmc.kernel.utils.UrlUtils;
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

    static abstract class IteratorBasedImmutableMap<K, V> extends ImmutableMap<K, V> {
        IteratorBasedImmutableMap() {
        }

        @Override
        ImmutableSet<Map.Entry<K, V>> createEntrySet() {
            return new ImmutableMapEntrySet<K, V>() {
                @Override
                ImmutableMap<K, V> map() {
                    return IteratorBasedImmutableMap.this;
                }

                @Override
                Object writeReplace() {
                    return super.writeReplace();
                }

                @Override
                public r4 iterator() {
                    return IteratorBasedImmutableMap.this.entryIterator();
                }
            };
        }

        @Override
        ImmutableSet<K> createKeySet() {
            return new ImmutableMapKeySet(this);
        }

        @Override
        ImmutableCollection<V> createValues() {
            return new ImmutableMapValues(this);
        }

        abstract r4 entryIterator();

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
        Object writeReplace() {
            return super.writeReplace();
        }
    }

    private final class MapViewOfValuesAsSingletonSets extends IteratorBasedImmutableMap<K, ImmutableSet<V>> {

        class a extends r4 {

            final Iterator f29588a;

            final MapViewOfValuesAsSingletonSets f29589b;

            class C0380a extends com.google.common.collect.b {

                final Map.Entry f29590a;

                final a f29591b;

                C0380a(a aVar, Map.Entry entry) {
                    this.f29590a = entry;
                    this.f29591b = aVar;
                }

                @Override
                public ImmutableSet getValue() {
                    return ImmutableSet.of(this.f29590a.getValue());
                }

                @Override
                public Object getKey() {
                    return this.f29590a.getKey();
                }
            }

            a(MapViewOfValuesAsSingletonSets mapViewOfValuesAsSingletonSets, Iterator it) {
                this.f29588a = it;
                this.f29589b = mapViewOfValuesAsSingletonSets;
            }

            @Override
            public Map.Entry next() {
                return new C0380a(this, (Map.Entry) this.f29588a.next());
            }

            @Override
            public boolean hasNext() {
                return this.f29588a.hasNext();
            }
        }

        private MapViewOfValuesAsSingletonSets() {
        }

        @Override
        public boolean containsKey(Object obj) {
            return ImmutableMap.this.containsKey(obj);
        }

        @Override
        ImmutableSet<K> createKeySet() {
            return ImmutableMap.this.keySet();
        }

        @Override
        r4 entryIterator() {
            return new a(this, ImmutableMap.this.entrySet().iterator());
        }

        @Override
        public int hashCode() {
            return ImmutableMap.this.hashCode();
        }

        @Override
        boolean isHashCodeFast() {
            return ImmutableMap.this.isHashCodeFast();
        }

        @Override
        boolean isPartialView() {
            return ImmutableMap.this.isPartialView();
        }

        @Override
        public int size() {
            return ImmutableMap.this.size();
        }

        @Override
        Object writeReplace() {
            return super.writeReplace();
        }

        MapViewOfValuesAsSingletonSets(ImmutableMap immutableMap, a aVar) {
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

    static class SerializedForm<K, V> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Object keys;
        private final Object values;

        SerializedForm(ImmutableMap<K, V> immutableMap) {
            Object[] objArr = new Object[immutableMap.size()];
            Object[] objArr2 = new Object[immutableMap.size()];
            r4 it = immutableMap.entrySet().iterator();
            int i10 = 0;
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                objArr[i10] = entry.getKey();
                objArr2[i10] = entry.getValue();
                i10++;
            }
            this.keys = objArr;
            this.values = objArr2;
        }

        final Object legacyReadResolve() {
            Object[] objArr = (Object[]) this.keys;
            Object[] objArr2 = (Object[]) this.values;
            b bVarMakeBuilder = makeBuilder(objArr.length);
            for (int i10 = 0; i10 < objArr.length; i10++) {
                bVarMakeBuilder.h(objArr[i10], objArr2[i10]);
            }
            return bVarMakeBuilder.d();
        }

        b makeBuilder(int i10) {
            return new b(i10);
        }

        final Object readResolve() {
            Object obj = this.keys;
            if (!(obj instanceof ImmutableSet)) {
                return legacyReadResolve();
            }
            ImmutableSet immutableSet = (ImmutableSet) obj;
            ImmutableCollection immutableCollection = (ImmutableCollection) this.values;
            b bVarMakeBuilder = makeBuilder(immutableSet.size());
            r4 it = immutableSet.iterator();
            r4 it2 = immutableCollection.iterator();
            while (it.hasNext()) {
                bVarMakeBuilder.h(it.next(), it2.next());
            }
            return bVarMakeBuilder.d();
        }
    }

    class a extends r4 {

        final r4 f29592a;

        final ImmutableMap f29593b;

        a(ImmutableMap immutableMap, r4 r4Var) {
            this.f29592a = r4Var;
            this.f29593b = immutableMap;
        }

        @Override
        public boolean hasNext() {
            return this.f29592a.hasNext();
        }

        @Override
        public Object next() {
            return ((Map.Entry) this.f29592a.next()).getKey();
        }
    }

    public static class b {

        Comparator f29594a;

        Object[] f29595b;

        int f29596c;

        boolean f29597d;

        a f29598e;

        static final class a {

            private final Object f29599a;

            private final Object f29600b;

            private final Object f29601c;

            a(Object obj, Object obj2, Object obj3) {
                this.f29599a = obj;
                this.f29600b = obj2;
                this.f29601c = obj3;
            }

            IllegalArgumentException a() {
                return new IllegalArgumentException("Multiple entries with same key: " + this.f29599a + UrlUtils.EQUAL_MARK + this.f29600b + " and " + this.f29599a + UrlUtils.EQUAL_MARK + this.f29601c);
            }
        }

        public b() {
            this(4);
        }

        private ImmutableMap b(boolean z10) {
            Object[] objArrG;
            a aVar;
            a aVar2;
            if (z10 && (aVar2 = this.f29598e) != null) {
                throw aVar2.a();
            }
            int length = this.f29596c;
            if (this.f29594a == null) {
                objArrG = this.f29595b;
            } else {
                if (this.f29597d) {
                    this.f29595b = Arrays.copyOf(this.f29595b, length * 2);
                }
                objArrG = this.f29595b;
                if (!z10) {
                    objArrG = g(objArrG, this.f29596c);
                    if (objArrG.length < this.f29595b.length) {
                        length = objArrG.length >>> 1;
                    }
                }
                l(objArrG, length, this.f29594a);
            }
            this.f29597d = true;
            RegularImmutableMap regularImmutableMapCreate = RegularImmutableMap.create(length, objArrG, this);
            if (!z10 || (aVar = this.f29598e) == null) {
                return regularImmutableMapCreate;
            }
            throw aVar.a();
        }

        private void f(int i10) {
            int i11 = i10 * 2;
            Object[] objArr = this.f29595b;
            if (i11 > objArr.length) {
                this.f29595b = Arrays.copyOf(objArr, ImmutableCollection.b.f(objArr.length, i11));
                this.f29597d = false;
            }
        }

        private Object[] g(Object[] objArr, int i10) {
            HashSet hashSet = new HashSet();
            BitSet bitSet = new BitSet();
            for (int i11 = i10 - 1; i11 >= 0; i11--) {
                Object obj = objArr[i11 * 2];
                Objects.requireNonNull(obj);
                if (!hashSet.add(obj)) {
                    bitSet.set(i11);
                }
            }
            if (bitSet.isEmpty()) {
                return objArr;
            }
            Object[] objArr2 = new Object[(i10 - bitSet.cardinality()) * 2];
            int i12 = 0;
            int i13 = 0;
            while (i12 < i10 * 2) {
                if (bitSet.get(i12 >>> 1)) {
                    i12 += 2;
                } else {
                    int i14 = i13 + 1;
                    int i15 = i12 + 1;
                    Object obj2 = objArr[i12];
                    Objects.requireNonNull(obj2);
                    objArr2[i13] = obj2;
                    i13 += 2;
                    i12 += 2;
                    Object obj3 = objArr[i15];
                    Objects.requireNonNull(obj3);
                    objArr2[i14] = obj3;
                }
            }
            return objArr2;
        }

        static void l(Object[] objArr, int i10, Comparator comparator) {
            Map.Entry[] entryArr = new Map.Entry[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                int i12 = i11 * 2;
                Object obj = objArr[i12];
                Objects.requireNonNull(obj);
                Object obj2 = objArr[i12 + 1];
                Objects.requireNonNull(obj2);
                entryArr[i11] = new AbstractMap.SimpleImmutableEntry(obj, obj2);
            }
            Arrays.sort(entryArr, 0, i10, Ordering.from(comparator).onResultOf(Maps.C()));
            for (int i13 = 0; i13 < i10; i13++) {
                int i14 = i13 * 2;
                objArr[i14] = entryArr[i13].getKey();
                objArr[i14 + 1] = entryArr[i13].getValue();
            }
        }

        public ImmutableMap a() {
            return d();
        }

        public ImmutableMap c() {
            return b(false);
        }

        public ImmutableMap d() {
            return b(true);
        }

        b e(b bVar) {
            com.google.common.base.m.o(bVar);
            f(this.f29596c + bVar.f29596c);
            System.arraycopy(bVar.f29595b, 0, this.f29595b, this.f29596c * 2, bVar.f29596c * 2);
            this.f29596c += bVar.f29596c;
            return this;
        }

        public b h(Object obj, Object obj2) {
            f(this.f29596c + 1);
            e2.a(obj, obj2);
            Object[] objArr = this.f29595b;
            int i10 = this.f29596c;
            objArr[i10 * 2] = obj;
            objArr[(i10 * 2) + 1] = obj2;
            this.f29596c = i10 + 1;
            return this;
        }

        public b i(Map.Entry entry) {
            return h(entry.getKey(), entry.getValue());
        }

        public b j(Iterable iterable) {
            if (iterable instanceof Collection) {
                f(this.f29596c + ((Collection) iterable).size());
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

        b(int i10) {
            this.f29595b = new Object[i10 * 2];
            this.f29596c = 0;
            this.f29597d = false;
        }
    }

    ImmutableMap() {
    }

    public static <K, V> b builder() {
        return new b();
    }

    public static <K, V> b builderWithExpectedSize(int i10) {
        e2.b(i10, "expectedSize");
        return new b(i10);
    }

    static void checkNoConflict(boolean z10, String str, Object obj, Object obj2) {
        if (!z10) {
            throw conflictException(str, obj, obj2);
        }
    }

    static IllegalArgumentException conflictException(String str, Object obj, Object obj2) {
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

    static <K, V> Map.Entry<K, V> entryOf(K k10, V v10) {
        e2.a(k10, v10);
        return new AbstractMap.SimpleImmutableEntry(k10, v10);
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
        return d2.Q(function, function2);
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

    abstract ImmutableSet<Map.Entry<K, V>> createEntrySet();

    abstract ImmutableSet<K> createKeySet();

    abstract ImmutableCollection<V> createValues();

    @Override
    public boolean equals(Object obj) {
        return Maps.h(this, obj);
    }

    @Override
    public abstract V get(Object obj);

    @Override
    public final V getOrDefault(Object obj, V v10) {
        V v11 = get(obj);
        return v11 != null ? v11 : v10;
    }

    @Override
    public int hashCode() {
        return Sets.d(entrySet());
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    boolean isHashCodeFast() {
        return false;
    }

    abstract boolean isPartialView();

    r4 keyIterator() {
        return new a(this, entrySet().iterator());
    }

    @Override
    @Deprecated
    public final V put(K k10, V v10) {
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

    Object writeReplace() {
        return new SerializedForm(this);
    }

    public static <K, V> ImmutableMap<K, V> of(K k10, V v10) {
        e2.a(k10, v10);
        return RegularImmutableMap.create(1, new Object[]{k10, v10});
    }

    public static <T, K, V> Collector<T, ?, ImmutableMap<K, V>> toImmutableMap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, BinaryOperator<V> binaryOperator) {
        return d2.R(function, function2, binaryOperator);
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

    public static <K, V> ImmutableMap<K, V> of(K k10, V v10, K k11, V v11) {
        e2.a(k10, v10);
        e2.a(k11, v11);
        return RegularImmutableMap.create(2, new Object[]{k10, v10, k11, v11});
    }

    public static <K, V> ImmutableMap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        b bVar = new b(iterable instanceof Collection ? ((Collection) iterable).size() : 4);
        bVar.j(iterable);
        return bVar.a();
    }

    public static <K, V> ImmutableMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12) {
        e2.a(k10, v10);
        e2.a(k11, v11);
        e2.a(k12, v12);
        return RegularImmutableMap.create(3, new Object[]{k10, v10, k11, v11, k12, v12});
    }

    public static <K, V> ImmutableMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13) {
        e2.a(k10, v10);
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        return RegularImmutableMap.create(4, new Object[]{k10, v10, k11, v11, k12, v12, k13, v13});
    }

    public static <K, V> ImmutableMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14) {
        e2.a(k10, v10);
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        e2.a(k14, v14);
        return RegularImmutableMap.create(5, new Object[]{k10, v10, k11, v11, k12, v12, k13, v13, k14, v14});
    }

    public static <K, V> ImmutableMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15) {
        e2.a(k10, v10);
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        e2.a(k14, v14);
        e2.a(k15, v15);
        return RegularImmutableMap.create(6, new Object[]{k10, v10, k11, v11, k12, v12, k13, v13, k14, v14, k15, v15});
    }

    public static <K, V> ImmutableMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16) {
        e2.a(k10, v10);
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        e2.a(k14, v14);
        e2.a(k15, v15);
        e2.a(k16, v16);
        return RegularImmutableMap.create(7, new Object[]{k10, v10, k11, v11, k12, v12, k13, v13, k14, v14, k15, v15, k16, v16});
    }

    public static <K, V> ImmutableMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16, K k17, V v17) {
        e2.a(k10, v10);
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        e2.a(k14, v14);
        e2.a(k15, v15);
        e2.a(k16, v16);
        e2.a(k17, v17);
        return RegularImmutableMap.create(8, new Object[]{k10, v10, k11, v11, k12, v12, k13, v13, k14, v14, k15, v15, k16, v16, k17, v17});
    }

    public static <K, V> ImmutableMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16, K k17, V v17, K k18, V v18) {
        e2.a(k10, v10);
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        e2.a(k14, v14);
        e2.a(k15, v15);
        e2.a(k16, v16);
        e2.a(k17, v17);
        e2.a(k18, v18);
        return RegularImmutableMap.create(9, new Object[]{k10, v10, k11, v11, k12, v12, k13, v13, k14, v14, k15, v15, k16, v16, k17, v17, k18, v18});
    }

    public static <K, V> ImmutableMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16, K k17, V v17, K k18, V v18, K k19, V v19) {
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
        return RegularImmutableMap.create(10, new Object[]{k10, v10, k11, v11, k12, v12, k13, v13, k14, v14, k15, v15, k16, v16, k17, v17, k18, v18, k19, v19});
    }
}
