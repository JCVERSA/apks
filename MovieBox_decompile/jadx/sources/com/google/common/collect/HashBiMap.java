package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

public final class HashBiMap<K, V> extends AbstractMap<K, V> implements k, Serializable {
    private static final int ABSENT = -1;
    private static final int ENDPOINT = -2;
    private transient Set<Map.Entry<K, V>> entrySet;
    private transient int firstInInsertionOrder;
    private transient int[] hashTableKToV;
    private transient int[] hashTableVToK;
    private transient k inverse;
    private transient Set<K> keySet;
    transient K[] keys;
    private transient int lastInInsertionOrder;
    transient int modCount;
    private transient int[] nextInBucketKToV;
    private transient int[] nextInBucketVToK;
    private transient int[] nextInInsertionOrder;
    private transient int[] prevInInsertionOrder;
    transient int size;
    private transient Set<V> valueSet;
    transient V[] values;

    static class Inverse<K, V> extends AbstractMap<V, K> implements k, Serializable {

        private transient Set f29566a;
        private final HashBiMap<K, V> forward;

        Inverse(HashBiMap<K, V> hashBiMap) {
            this.forward = hashBiMap;
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            ((HashBiMap) this.forward).inverse = this;
        }

        @Override
        public void clear() {
            this.forward.clear();
        }

        @Override
        public boolean containsKey(Object obj) {
            return this.forward.containsValue(obj);
        }

        @Override
        public boolean containsValue(Object obj) {
            return this.forward.containsKey(obj);
        }

        @Override
        public Set<Map.Entry<V, K>> entrySet() {
            Set<Map.Entry<V, K>> set = this.f29566a;
            if (set != null) {
                return set;
            }
            d dVar = new d(this.forward);
            this.f29566a = dVar;
            return dVar;
        }

        public K forcePut(V v10, K k10) {
            return this.forward.putInverse(v10, k10, true);
        }

        @Override
        public K get(Object obj) {
            return this.forward.getInverse(obj);
        }

        @Override
        public k inverse() {
            return this.forward;
        }

        @Override
        public Set<V> keySet() {
            return this.forward.values();
        }

        @Override
        public K put(V v10, K k10) {
            return this.forward.putInverse(v10, k10, false);
        }

        @Override
        public K remove(Object obj) {
            return this.forward.removeInverse(obj);
        }

        @Override
        public int size() {
            return this.forward.size;
        }

        @Override
        public Set<K> values() {
            return this.forward.keySet();
        }
    }

    final class a extends com.google.common.collect.b {

        final Object f29567a;

        int f29568b;

        a(int i10) {
            this.f29567a = m3.a(HashBiMap.this.keys[i10]);
            this.f29568b = i10;
        }

        void a() {
            int i10 = this.f29568b;
            if (i10 != -1) {
                HashBiMap hashBiMap = HashBiMap.this;
                if (i10 <= hashBiMap.size && com.google.common.base.j.a(hashBiMap.keys[i10], this.f29567a)) {
                    return;
                }
            }
            this.f29568b = HashBiMap.this.findEntryByKey(this.f29567a);
        }

        @Override
        public Object getKey() {
            return this.f29567a;
        }

        @Override
        public Object getValue() {
            a();
            int i10 = this.f29568b;
            return i10 == -1 ? m3.b() : m3.a(HashBiMap.this.values[i10]);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Object setValue(Object obj) {
            a();
            int i10 = this.f29568b;
            if (i10 == -1) {
                HashBiMap.this.put(this.f29567a, obj);
                return m3.b();
            }
            Object objA = m3.a(HashBiMap.this.values[i10]);
            if (com.google.common.base.j.a(objA, obj)) {
                return obj;
            }
            HashBiMap.this.replaceValueInEntry(this.f29568b, obj, false);
            return objA;
        }
    }

    static final class b extends com.google.common.collect.b {

        final HashBiMap f29570a;

        final Object f29571b;

        int f29572c;

        b(HashBiMap hashBiMap, int i10) {
            this.f29570a = hashBiMap;
            this.f29571b = m3.a(hashBiMap.values[i10]);
            this.f29572c = i10;
        }

        private void a() {
            int i10 = this.f29572c;
            if (i10 != -1) {
                HashBiMap hashBiMap = this.f29570a;
                if (i10 <= hashBiMap.size && com.google.common.base.j.a(this.f29571b, hashBiMap.values[i10])) {
                    return;
                }
            }
            this.f29572c = this.f29570a.findEntryByValue(this.f29571b);
        }

        @Override
        public Object getKey() {
            return this.f29571b;
        }

        @Override
        public Object getValue() {
            a();
            int i10 = this.f29572c;
            return i10 == -1 ? m3.b() : m3.a(this.f29570a.keys[i10]);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Object setValue(Object obj) {
            a();
            int i10 = this.f29572c;
            if (i10 == -1) {
                this.f29570a.putInverse(this.f29571b, obj, false);
                return m3.b();
            }
            Object objA = m3.a(this.f29570a.keys[i10]);
            if (com.google.common.base.j.a(objA, obj)) {
                return obj;
            }
            this.f29570a.replaceKeyInEntry(this.f29572c, obj, false);
            return objA;
        }
    }

    final class c extends g {
        c() {
            super(HashBiMap.this);
        }

        @Override
        public Map.Entry a(int i10) {
            return new a(i10);
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            int iFindEntryByKey = HashBiMap.this.findEntryByKey(key);
            return iFindEntryByKey != -1 && com.google.common.base.j.a(value, HashBiMap.this.values[iFindEntryByKey]);
        }

        @Override
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            int iD = v2.d(key);
            int iFindEntryByKey = HashBiMap.this.findEntryByKey(key, iD);
            if (iFindEntryByKey == -1 || !com.google.common.base.j.a(value, HashBiMap.this.values[iFindEntryByKey])) {
                return false;
            }
            HashBiMap.this.removeEntryKeyHashKnown(iFindEntryByKey, iD);
            return true;
        }
    }

    static class d extends g {
        d(HashBiMap hashBiMap) {
            super(hashBiMap);
        }

        @Override
        public Map.Entry a(int i10) {
            return new b(this.f29576a, i10);
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            int iFindEntryByValue = this.f29576a.findEntryByValue(key);
            return iFindEntryByValue != -1 && com.google.common.base.j.a(this.f29576a.keys[iFindEntryByValue], value);
        }

        @Override
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            int iD = v2.d(key);
            int iFindEntryByValue = this.f29576a.findEntryByValue(key, iD);
            if (iFindEntryByValue == -1 || !com.google.common.base.j.a(this.f29576a.keys[iFindEntryByValue], value)) {
                return false;
            }
            this.f29576a.removeEntryValueHashKnown(iFindEntryByValue, iD);
            return true;
        }
    }

    final class e extends g {
        e() {
            super(HashBiMap.this);
        }

        @Override
        Object a(int i10) {
            return m3.a(HashBiMap.this.keys[i10]);
        }

        @Override
        public boolean contains(Object obj) {
            return HashBiMap.this.containsKey(obj);
        }

        @Override
        public boolean remove(Object obj) {
            int iD = v2.d(obj);
            int iFindEntryByKey = HashBiMap.this.findEntryByKey(obj, iD);
            if (iFindEntryByKey == -1) {
                return false;
            }
            HashBiMap.this.removeEntryKeyHashKnown(iFindEntryByKey, iD);
            return true;
        }
    }

    final class f extends g {
        f() {
            super(HashBiMap.this);
        }

        @Override
        Object a(int i10) {
            return m3.a(HashBiMap.this.values[i10]);
        }

        @Override
        public boolean contains(Object obj) {
            return HashBiMap.this.containsValue(obj);
        }

        @Override
        public boolean remove(Object obj) {
            int iD = v2.d(obj);
            int iFindEntryByValue = HashBiMap.this.findEntryByValue(obj, iD);
            if (iFindEntryByValue == -1) {
                return false;
            }
            HashBiMap.this.removeEntryValueHashKnown(iFindEntryByValue, iD);
            return true;
        }
    }

    static abstract class g extends AbstractSet {

        final HashBiMap f29576a;

        class a implements Iterator {

            private int f29577a;

            private int f29578b = -1;

            private int f29579c;

            private int f29580d;

            a() {
                this.f29577a = g.this.f29576a.firstInInsertionOrder;
                HashBiMap hashBiMap = g.this.f29576a;
                this.f29579c = hashBiMap.modCount;
                this.f29580d = hashBiMap.size;
            }

            private void a() {
                if (g.this.f29576a.modCount != this.f29579c) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override
            public boolean hasNext() {
                a();
                return this.f29577a != -2 && this.f29580d > 0;
            }

            @Override
            public Object next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                Object objA = g.this.a(this.f29577a);
                this.f29578b = this.f29577a;
                this.f29577a = g.this.f29576a.nextInInsertionOrder[this.f29577a];
                this.f29580d--;
                return objA;
            }

            @Override
            public void remove() {
                a();
                e2.e(this.f29578b != -1);
                g.this.f29576a.removeEntry(this.f29578b);
                int i10 = this.f29577a;
                HashBiMap hashBiMap = g.this.f29576a;
                if (i10 == hashBiMap.size) {
                    this.f29577a = this.f29578b;
                }
                this.f29578b = -1;
                this.f29579c = hashBiMap.modCount;
            }
        }

        g(HashBiMap hashBiMap) {
            this.f29576a = hashBiMap;
        }

        abstract Object a(int i10);

        @Override
        public void clear() {
            this.f29576a.clear();
        }

        @Override
        public Iterator iterator() {
            return new a();
        }

        @Override
        public int size() {
            return this.f29576a.size;
        }
    }

    private HashBiMap(int i10) {
        init(i10);
    }

    private int bucket(int i10) {
        return i10 & (this.hashTableKToV.length - 1);
    }

    public static <K, V> HashBiMap<K, V> create() {
        return create(16);
    }

    private static int[] createFilledWithAbsent(int i10) {
        int[] iArr = new int[i10];
        Arrays.fill(iArr, -1);
        return iArr;
    }

    private void deleteFromTableKToV(int i10, int i11) {
        com.google.common.base.m.d(i10 != -1);
        int iBucket = bucket(i11);
        int[] iArr = this.hashTableKToV;
        int i12 = iArr[iBucket];
        if (i12 == i10) {
            int[] iArr2 = this.nextInBucketKToV;
            iArr[iBucket] = iArr2[i10];
            iArr2[i10] = -1;
            return;
        }
        int i13 = this.nextInBucketKToV[i12];
        while (true) {
            int i14 = i12;
            i12 = i13;
            if (i12 == -1) {
                throw new AssertionError("Expected to find entry with key " + this.keys[i10]);
            }
            if (i12 == i10) {
                int[] iArr3 = this.nextInBucketKToV;
                iArr3[i14] = iArr3[i10];
                iArr3[i10] = -1;
                return;
            }
            i13 = this.nextInBucketKToV[i12];
        }
    }

    private void deleteFromTableVToK(int i10, int i11) {
        com.google.common.base.m.d(i10 != -1);
        int iBucket = bucket(i11);
        int[] iArr = this.hashTableVToK;
        int i12 = iArr[iBucket];
        if (i12 == i10) {
            int[] iArr2 = this.nextInBucketVToK;
            iArr[iBucket] = iArr2[i10];
            iArr2[i10] = -1;
            return;
        }
        int i13 = this.nextInBucketVToK[i12];
        while (true) {
            int i14 = i12;
            i12 = i13;
            if (i12 == -1) {
                throw new AssertionError("Expected to find entry with value " + this.values[i10]);
            }
            if (i12 == i10) {
                int[] iArr3 = this.nextInBucketVToK;
                iArr3[i14] = iArr3[i10];
                iArr3[i10] = -1;
                return;
            }
            i13 = this.nextInBucketVToK[i12];
        }
    }

    private void ensureCapacity(int i10) {
        int[] iArr = this.nextInBucketKToV;
        if (iArr.length < i10) {
            int iF = ImmutableCollection.b.f(iArr.length, i10);
            this.keys = (K[]) Arrays.copyOf(this.keys, iF);
            this.values = (V[]) Arrays.copyOf(this.values, iF);
            this.nextInBucketKToV = expandAndFillWithAbsent(this.nextInBucketKToV, iF);
            this.nextInBucketVToK = expandAndFillWithAbsent(this.nextInBucketVToK, iF);
            this.prevInInsertionOrder = expandAndFillWithAbsent(this.prevInInsertionOrder, iF);
            this.nextInInsertionOrder = expandAndFillWithAbsent(this.nextInInsertionOrder, iF);
        }
        if (this.hashTableKToV.length < i10) {
            int iA = v2.a(i10, 1.0d);
            this.hashTableKToV = createFilledWithAbsent(iA);
            this.hashTableVToK = createFilledWithAbsent(iA);
            for (int i11 = 0; i11 < this.size; i11++) {
                int iBucket = bucket(v2.d(this.keys[i11]));
                int[] iArr2 = this.nextInBucketKToV;
                int[] iArr3 = this.hashTableKToV;
                iArr2[i11] = iArr3[iBucket];
                iArr3[iBucket] = i11;
                int iBucket2 = bucket(v2.d(this.values[i11]));
                int[] iArr4 = this.nextInBucketVToK;
                int[] iArr5 = this.hashTableVToK;
                iArr4[i11] = iArr5[iBucket2];
                iArr5[iBucket2] = i11;
            }
        }
    }

    private static int[] expandAndFillWithAbsent(int[] iArr, int i10) {
        int length = iArr.length;
        int[] iArrCopyOf = Arrays.copyOf(iArr, i10);
        Arrays.fill(iArrCopyOf, length, i10, -1);
        return iArrCopyOf;
    }

    private void insertIntoTableKToV(int i10, int i11) {
        com.google.common.base.m.d(i10 != -1);
        int iBucket = bucket(i11);
        int[] iArr = this.nextInBucketKToV;
        int[] iArr2 = this.hashTableKToV;
        iArr[i10] = iArr2[iBucket];
        iArr2[iBucket] = i10;
    }

    private void insertIntoTableVToK(int i10, int i11) {
        com.google.common.base.m.d(i10 != -1);
        int iBucket = bucket(i11);
        int[] iArr = this.nextInBucketVToK;
        int[] iArr2 = this.hashTableVToK;
        iArr[i10] = iArr2[iBucket];
        iArr2[iBucket] = i10;
    }

    private void moveEntryToIndex(int i10, int i11) {
        int i12;
        int i13;
        if (i10 == i11) {
            return;
        }
        int i14 = this.prevInInsertionOrder[i10];
        int i15 = this.nextInInsertionOrder[i10];
        setSucceeds(i14, i11);
        setSucceeds(i11, i15);
        K[] kArr = this.keys;
        K k10 = kArr[i10];
        V[] vArr = this.values;
        V v10 = vArr[i10];
        kArr[i11] = k10;
        vArr[i11] = v10;
        int iBucket = bucket(v2.d(k10));
        int[] iArr = this.hashTableKToV;
        int i16 = iArr[iBucket];
        if (i16 == i10) {
            iArr[iBucket] = i11;
        } else {
            int i17 = this.nextInBucketKToV[i16];
            while (true) {
                i12 = i16;
                i16 = i17;
                if (i16 == i10) {
                    break;
                } else {
                    i17 = this.nextInBucketKToV[i16];
                }
            }
            this.nextInBucketKToV[i12] = i11;
        }
        int[] iArr2 = this.nextInBucketKToV;
        iArr2[i11] = iArr2[i10];
        iArr2[i10] = -1;
        int iBucket2 = bucket(v2.d(v10));
        int[] iArr3 = this.hashTableVToK;
        int i18 = iArr3[iBucket2];
        if (i18 == i10) {
            iArr3[iBucket2] = i11;
        } else {
            int i19 = this.nextInBucketVToK[i18];
            while (true) {
                i13 = i18;
                i18 = i19;
                if (i18 == i10) {
                    break;
                } else {
                    i19 = this.nextInBucketVToK[i18];
                }
            }
            this.nextInBucketVToK[i13] = i11;
        }
        int[] iArr4 = this.nextInBucketVToK;
        iArr4[i11] = iArr4[i10];
        iArr4[i10] = -1;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int iH = w3.h(objectInputStream);
        init(16);
        w3.c(this, objectInputStream, iH);
    }

    public void replaceKeyInEntry(int i10, K k10, boolean z10) {
        int i11;
        com.google.common.base.m.d(i10 != -1);
        int iD = v2.d(k10);
        int iFindEntryByKey = findEntryByKey(k10, iD);
        int i12 = this.lastInInsertionOrder;
        if (iFindEntryByKey == -1) {
            i11 = -2;
        } else {
            if (!z10) {
                throw new IllegalArgumentException("Key already present in map: " + k10);
            }
            i12 = this.prevInInsertionOrder[iFindEntryByKey];
            i11 = this.nextInInsertionOrder[iFindEntryByKey];
            removeEntryKeyHashKnown(iFindEntryByKey, iD);
            if (i10 == this.size) {
                i10 = iFindEntryByKey;
            }
        }
        if (i12 == i10) {
            i12 = this.prevInInsertionOrder[i10];
        } else if (i12 == this.size) {
            i12 = iFindEntryByKey;
        }
        if (i11 == i10) {
            iFindEntryByKey = this.nextInInsertionOrder[i10];
        } else if (i11 != this.size) {
            iFindEntryByKey = i11;
        }
        setSucceeds(this.prevInInsertionOrder[i10], this.nextInInsertionOrder[i10]);
        deleteFromTableKToV(i10, v2.d(this.keys[i10]));
        this.keys[i10] = k10;
        insertIntoTableKToV(i10, v2.d(k10));
        setSucceeds(i12, i10);
        setSucceeds(i10, iFindEntryByKey);
    }

    public void replaceValueInEntry(int i10, V v10, boolean z10) {
        com.google.common.base.m.d(i10 != -1);
        int iD = v2.d(v10);
        int iFindEntryByValue = findEntryByValue(v10, iD);
        if (iFindEntryByValue != -1) {
            if (!z10) {
                throw new IllegalArgumentException("Value already present in map: " + v10);
            }
            removeEntryValueHashKnown(iFindEntryByValue, iD);
            if (i10 == this.size) {
                i10 = iFindEntryByValue;
            }
        }
        deleteFromTableVToK(i10, v2.d(this.values[i10]));
        this.values[i10] = v10;
        insertIntoTableVToK(i10, iD);
    }

    private void setSucceeds(int i10, int i11) {
        if (i10 == -2) {
            this.firstInInsertionOrder = i11;
        } else {
            this.nextInInsertionOrder[i10] = i11;
        }
        if (i11 == -2) {
            this.lastInInsertionOrder = i10;
        } else {
            this.prevInInsertionOrder[i11] = i10;
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        w3.i(this, objectOutputStream);
    }

    @Override
    public void clear() {
        Arrays.fill(this.keys, 0, this.size, (Object) null);
        Arrays.fill(this.values, 0, this.size, (Object) null);
        Arrays.fill(this.hashTableKToV, -1);
        Arrays.fill(this.hashTableVToK, -1);
        Arrays.fill(this.nextInBucketKToV, 0, this.size, -1);
        Arrays.fill(this.nextInBucketVToK, 0, this.size, -1);
        Arrays.fill(this.prevInInsertionOrder, 0, this.size, -1);
        Arrays.fill(this.nextInInsertionOrder, 0, this.size, -1);
        this.size = 0;
        this.firstInInsertionOrder = -2;
        this.lastInInsertionOrder = -2;
        this.modCount++;
    }

    @Override
    public boolean containsKey(Object obj) {
        return findEntryByKey(obj) != -1;
    }

    @Override
    public boolean containsValue(Object obj) {
        return findEntryByValue(obj) != -1;
    }

    @Override
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.entrySet;
        if (set != null) {
            return set;
        }
        c cVar = new c();
        this.entrySet = cVar;
        return cVar;
    }

    int findEntry(Object obj, int i10, int[] iArr, int[] iArr2, Object[] objArr) {
        int i11 = iArr[bucket(i10)];
        while (i11 != -1) {
            if (com.google.common.base.j.a(objArr[i11], obj)) {
                return i11;
            }
            i11 = iArr2[i11];
        }
        return -1;
    }

    int findEntryByKey(Object obj) {
        return findEntryByKey(obj, v2.d(obj));
    }

    int findEntryByValue(Object obj) {
        return findEntryByValue(obj, v2.d(obj));
    }

    public V forcePut(K k10, V v10) {
        return put(k10, v10, true);
    }

    @Override
    public V get(Object obj) {
        int iFindEntryByKey = findEntryByKey(obj);
        if (iFindEntryByKey == -1) {
            return null;
        }
        return this.values[iFindEntryByKey];
    }

    K getInverse(Object obj) {
        int iFindEntryByValue = findEntryByValue(obj);
        if (iFindEntryByValue == -1) {
            return null;
        }
        return this.keys[iFindEntryByValue];
    }

    void init(int i10) {
        e2.b(i10, "expectedSize");
        int iA = v2.a(i10, 1.0d);
        this.size = 0;
        this.keys = (K[]) new Object[i10];
        this.values = (V[]) new Object[i10];
        this.hashTableKToV = createFilledWithAbsent(iA);
        this.hashTableVToK = createFilledWithAbsent(iA);
        this.nextInBucketKToV = createFilledWithAbsent(i10);
        this.nextInBucketVToK = createFilledWithAbsent(i10);
        this.firstInInsertionOrder = -2;
        this.lastInInsertionOrder = -2;
        this.prevInInsertionOrder = createFilledWithAbsent(i10);
        this.nextInInsertionOrder = createFilledWithAbsent(i10);
    }

    @Override
    public k inverse() {
        k kVar = this.inverse;
        if (kVar != null) {
            return kVar;
        }
        Inverse inverse = new Inverse(this);
        this.inverse = inverse;
        return inverse;
    }

    @Override
    public Set<K> keySet() {
        Set<K> set = this.keySet;
        if (set != null) {
            return set;
        }
        e eVar = new e();
        this.keySet = eVar;
        return eVar;
    }

    @Override
    public V put(K k10, V v10) {
        return put(k10, v10, false);
    }

    K putInverse(V v10, K k10, boolean z10) {
        int iD = v2.d(v10);
        int iFindEntryByValue = findEntryByValue(v10, iD);
        if (iFindEntryByValue != -1) {
            K k11 = this.keys[iFindEntryByValue];
            if (com.google.common.base.j.a(k11, k10)) {
                return k10;
            }
            replaceKeyInEntry(iFindEntryByValue, k10, z10);
            return k11;
        }
        int i10 = this.lastInInsertionOrder;
        int iD2 = v2.d(k10);
        int iFindEntryByKey = findEntryByKey(k10, iD2);
        if (!z10) {
            com.google.common.base.m.j(iFindEntryByKey == -1, "Key already present: %s", k10);
        } else if (iFindEntryByKey != -1) {
            i10 = this.prevInInsertionOrder[iFindEntryByKey];
            removeEntryKeyHashKnown(iFindEntryByKey, iD2);
        }
        ensureCapacity(this.size + 1);
        K[] kArr = this.keys;
        int i11 = this.size;
        kArr[i11] = k10;
        this.values[i11] = v10;
        insertIntoTableKToV(i11, iD2);
        insertIntoTableVToK(this.size, iD);
        int i12 = i10 == -2 ? this.firstInInsertionOrder : this.nextInInsertionOrder[i10];
        setSucceeds(i10, this.size);
        setSucceeds(this.size, i12);
        this.size++;
        this.modCount++;
        return null;
    }

    @Override
    public V remove(Object obj) {
        int iD = v2.d(obj);
        int iFindEntryByKey = findEntryByKey(obj, iD);
        if (iFindEntryByKey == -1) {
            return null;
        }
        V v10 = this.values[iFindEntryByKey];
        removeEntryKeyHashKnown(iFindEntryByKey, iD);
        return v10;
    }

    void removeEntry(int i10) {
        removeEntryKeyHashKnown(i10, v2.d(this.keys[i10]));
    }

    void removeEntryKeyHashKnown(int i10, int i11) {
        removeEntry(i10, i11, v2.d(this.values[i10]));
    }

    void removeEntryValueHashKnown(int i10, int i11) {
        removeEntry(i10, v2.d(this.keys[i10]), i11);
    }

    K removeInverse(Object obj) {
        int iD = v2.d(obj);
        int iFindEntryByValue = findEntryByValue(obj, iD);
        if (iFindEntryByValue == -1) {
            return null;
        }
        K k10 = this.keys[iFindEntryByValue];
        removeEntryValueHashKnown(iFindEntryByValue, iD);
        return k10;
    }

    @Override
    public int size() {
        return this.size;
    }

    public static <K, V> HashBiMap<K, V> create(int i10) {
        return new HashBiMap<>(i10);
    }

    private void removeEntry(int i10, int i11, int i12) {
        com.google.common.base.m.d(i10 != -1);
        deleteFromTableKToV(i10, i11);
        deleteFromTableVToK(i10, i12);
        setSucceeds(this.prevInInsertionOrder[i10], this.nextInInsertionOrder[i10]);
        moveEntryToIndex(this.size - 1, i10);
        K[] kArr = this.keys;
        int i13 = this.size;
        kArr[i13 - 1] = null;
        this.values[i13 - 1] = null;
        this.size = i13 - 1;
        this.modCount++;
    }

    int findEntryByKey(Object obj, int i10) {
        return findEntry(obj, i10, this.hashTableKToV, this.nextInBucketKToV, this.keys);
    }

    int findEntryByValue(Object obj, int i10) {
        return findEntry(obj, i10, this.hashTableVToK, this.nextInBucketVToK, this.values);
    }

    V put(K k10, V v10, boolean z10) {
        int iD = v2.d(k10);
        int iFindEntryByKey = findEntryByKey(k10, iD);
        if (iFindEntryByKey != -1) {
            V v11 = this.values[iFindEntryByKey];
            if (com.google.common.base.j.a(v11, v10)) {
                return v10;
            }
            replaceValueInEntry(iFindEntryByKey, v10, z10);
            return v11;
        }
        int iD2 = v2.d(v10);
        int iFindEntryByValue = findEntryByValue(v10, iD2);
        if (!z10) {
            com.google.common.base.m.j(iFindEntryByValue == -1, "Value already present: %s", v10);
        } else if (iFindEntryByValue != -1) {
            removeEntryValueHashKnown(iFindEntryByValue, iD2);
        }
        ensureCapacity(this.size + 1);
        K[] kArr = this.keys;
        int i10 = this.size;
        kArr[i10] = k10;
        this.values[i10] = v10;
        insertIntoTableKToV(i10, iD);
        insertIntoTableVToK(this.size, iD2);
        setSucceeds(this.lastInInsertionOrder, this.size);
        setSucceeds(this.size, -2);
        this.size++;
        this.modCount++;
        return null;
    }

    @Override
    public Set<V> values() {
        Set<V> set = this.valueSet;
        if (set != null) {
            return set;
        }
        f fVar = new f();
        this.valueSet = fVar;
        return fVar;
    }

    public static <K, V> HashBiMap<K, V> create(Map<? extends K, ? extends V> map) {
        HashBiMap<K, V> hashBiMapCreate = create(map.size());
        hashBiMapCreate.putAll(map);
        return hashBiMapCreate;
    }
}
