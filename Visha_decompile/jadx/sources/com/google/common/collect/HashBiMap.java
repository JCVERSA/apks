package com.google.common.collect;

import defpackage.ce0;
import defpackage.i3;
import defpackage.k71;
import defpackage.kc7;
import defpackage.mo4;
import defpackage.r37;
import defpackage.xd8;
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

public final class HashBiMap<K, V> extends AbstractMap<K, V> implements ce0, Serializable {
    private static final int ABSENT = -1;
    private static final int ENDPOINT = -2;
    private transient Set<Map.Entry<K, V>> entrySet;
    private transient int firstInInsertionOrder;
    private transient int[] hashTableKToV;
    private transient int[] hashTableVToK;
    private transient ce0 inverse;
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

    public static class Inverse<K, V> extends AbstractMap<V, K> implements ce0, Serializable {
        public transient Set b;
        private final HashBiMap<K, V> forward;

        public Inverse(HashBiMap<K, V> hashBiMap) {
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
            Set<Map.Entry<V, K>> set = this.b;
            if (set != null) {
                return set;
            }
            d dVar = new d(this.forward);
            this.b = dVar;
            return dVar;
        }

        public K forcePut(V v, K k) {
            return this.forward.putInverse(v, k, true);
        }

        @Override
        public K get(Object obj) {
            return this.forward.getInverse(obj);
        }

        @Override
        public ce0 inverse() {
            return this.forward;
        }

        @Override
        public Set<V> keySet() {
            return this.forward.values();
        }

        @Override
        public K put(V v, K k) {
            return this.forward.putInverse(v, k, false);
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

    public final class a extends i3 {
        public final Object b;
        public int c;

        public a(int i) {
            this.b = r37.a(HashBiMap.this.keys[i]);
            this.c = i;
        }

        public void a() {
            int i = this.c;
            if (i != -1) {
                HashBiMap hashBiMap = HashBiMap.this;
                if (i <= hashBiMap.size && kc7.a(hashBiMap.keys[i], this.b)) {
                    return;
                }
            }
            this.c = HashBiMap.this.findEntryByKey(this.b);
        }

        @Override
        public Object getKey() {
            return this.b;
        }

        @Override
        public Object getValue() {
            a();
            int i = this.c;
            return i == -1 ? r37.b() : r37.a(HashBiMap.this.values[i]);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Object setValue(Object obj) {
            a();
            int i = this.c;
            if (i == -1) {
                HashBiMap.this.put(this.b, obj);
                return r37.b();
            }
            Object objA = r37.a(HashBiMap.this.values[i]);
            if (kc7.a(objA, obj)) {
                return obj;
            }
            HashBiMap.this.replaceValueInEntry(this.c, obj, false);
            return objA;
        }
    }

    public static final class b extends i3 {
        public final HashBiMap b;
        public final Object c;
        public int d;

        public b(HashBiMap hashBiMap, int i) {
            this.b = hashBiMap;
            this.c = r37.a(hashBiMap.values[i]);
            this.d = i;
        }

        private void a() {
            int i = this.d;
            if (i != -1) {
                HashBiMap hashBiMap = this.b;
                if (i <= hashBiMap.size && kc7.a(this.c, hashBiMap.values[i])) {
                    return;
                }
            }
            this.d = this.b.findEntryByValue(this.c);
        }

        @Override
        public Object getKey() {
            return this.c;
        }

        @Override
        public Object getValue() {
            a();
            int i = this.d;
            return i == -1 ? r37.b() : r37.a(this.b.keys[i]);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Object setValue(Object obj) {
            a();
            int i = this.d;
            if (i == -1) {
                this.b.putInverse(this.c, obj, false);
                return r37.b();
            }
            Object objA = r37.a(this.b.keys[i]);
            if (kc7.a(objA, obj)) {
                return obj;
            }
            this.b.replaceKeyInEntry(this.d, obj, false);
            return objA;
        }
    }

    public final class c extends g {
        public c() {
            super(HashBiMap.this);
        }

        @Override
        public Map.Entry b(int i) {
            return new a(i);
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
            return iFindEntryByKey != -1 && kc7.a(value, HashBiMap.this.values[iFindEntryByKey]);
        }

        @Override
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            int iD = mo4.d(key);
            int iFindEntryByKey = HashBiMap.this.findEntryByKey(key, iD);
            if (iFindEntryByKey == -1 || !kc7.a(value, HashBiMap.this.values[iFindEntryByKey])) {
                return false;
            }
            HashBiMap.this.removeEntryKeyHashKnown(iFindEntryByKey, iD);
            return true;
        }
    }

    public static class d extends g {
        public d(HashBiMap hashBiMap) {
            super(hashBiMap);
        }

        @Override
        public Map.Entry b(int i) {
            return new b(this.b, i);
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            int iFindEntryByValue = this.b.findEntryByValue(key);
            return iFindEntryByValue != -1 && kc7.a(this.b.keys[iFindEntryByValue], value);
        }

        @Override
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            int iD = mo4.d(key);
            int iFindEntryByValue = this.b.findEntryByValue(key, iD);
            if (iFindEntryByValue == -1 || !kc7.a(this.b.keys[iFindEntryByValue], value)) {
                return false;
            }
            this.b.removeEntryValueHashKnown(iFindEntryByValue, iD);
            return true;
        }
    }

    public final class e extends g {
        public e() {
            super(HashBiMap.this);
        }

        @Override
        public Object b(int i) {
            return r37.a(HashBiMap.this.keys[i]);
        }

        @Override
        public boolean contains(Object obj) {
            return HashBiMap.this.containsKey(obj);
        }

        @Override
        public boolean remove(Object obj) {
            int iD = mo4.d(obj);
            int iFindEntryByKey = HashBiMap.this.findEntryByKey(obj, iD);
            if (iFindEntryByKey == -1) {
                return false;
            }
            HashBiMap.this.removeEntryKeyHashKnown(iFindEntryByKey, iD);
            return true;
        }
    }

    public final class f extends g {
        public f() {
            super(HashBiMap.this);
        }

        @Override
        public Object b(int i) {
            return r37.a(HashBiMap.this.values[i]);
        }

        @Override
        public boolean contains(Object obj) {
            return HashBiMap.this.containsValue(obj);
        }

        @Override
        public boolean remove(Object obj) {
            int iD = mo4.d(obj);
            int iFindEntryByValue = HashBiMap.this.findEntryByValue(obj, iD);
            if (iFindEntryByValue == -1) {
                return false;
            }
            HashBiMap.this.removeEntryValueHashKnown(iFindEntryByValue, iD);
            return true;
        }
    }

    public static abstract class g extends AbstractSet {
        public final HashBiMap b;

        public class a implements Iterator {
            public int b;
            public int c = -1;
            public int d;
            public int e;

            public a() {
                this.b = g.this.b.firstInInsertionOrder;
                HashBiMap hashBiMap = g.this.b;
                this.d = hashBiMap.modCount;
                this.e = hashBiMap.size;
            }

            public final void a() {
                if (g.this.b.modCount != this.d) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override
            public boolean hasNext() {
                a();
                return this.b != -2 && this.e > 0;
            }

            @Override
            public Object next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                Object objB = g.this.b(this.b);
                this.c = this.b;
                this.b = g.this.b.nextInInsertionOrder[this.b];
                this.e--;
                return objB;
            }

            @Override
            public void remove() {
                a();
                k71.e(this.c != -1);
                g.this.b.removeEntry(this.c);
                int i = this.b;
                HashBiMap hashBiMap = g.this.b;
                if (i == hashBiMap.size) {
                    this.b = this.c;
                }
                this.c = -1;
                this.d = hashBiMap.modCount;
            }
        }

        public g(HashBiMap hashBiMap) {
            this.b = hashBiMap;
        }

        public abstract Object b(int i);

        @Override
        public void clear() {
            this.b.clear();
        }

        @Override
        public Iterator iterator() {
            return new a();
        }

        @Override
        public int size() {
            return this.b.size;
        }
    }

    private HashBiMap(int i) {
        init(i);
    }

    private int bucket(int i) {
        return (this.hashTableKToV.length - 1) & i;
    }

    public static <K, V> HashBiMap<K, V> create() {
        return create(16);
    }

    private static int[] createFilledWithAbsent(int i) {
        int[] iArr = new int[i];
        Arrays.fill(iArr, -1);
        return iArr;
    }

    private void deleteFromTableKToV(int i, int i2) {
        xd8.d(i != -1);
        int iBucket = bucket(i2);
        int[] iArr = this.hashTableKToV;
        int i3 = iArr[iBucket];
        if (i3 == i) {
            int[] iArr2 = this.nextInBucketKToV;
            iArr[iBucket] = iArr2[i];
            iArr2[i] = -1;
            return;
        }
        int i4 = this.nextInBucketKToV[i3];
        while (true) {
            int i5 = i3;
            i3 = i4;
            if (i3 == -1) {
                throw new AssertionError("Expected to find entry with key " + this.keys[i]);
            }
            if (i3 == i) {
                int[] iArr3 = this.nextInBucketKToV;
                iArr3[i5] = iArr3[i];
                iArr3[i] = -1;
                return;
            }
            i4 = this.nextInBucketKToV[i3];
        }
    }

    private void deleteFromTableVToK(int i, int i2) {
        xd8.d(i != -1);
        int iBucket = bucket(i2);
        int[] iArr = this.hashTableVToK;
        int i3 = iArr[iBucket];
        if (i3 == i) {
            int[] iArr2 = this.nextInBucketVToK;
            iArr[iBucket] = iArr2[i];
            iArr2[i] = -1;
            return;
        }
        int i4 = this.nextInBucketVToK[i3];
        while (true) {
            int i5 = i3;
            i3 = i4;
            if (i3 == -1) {
                throw new AssertionError("Expected to find entry with value " + this.values[i]);
            }
            if (i3 == i) {
                int[] iArr3 = this.nextInBucketVToK;
                iArr3[i5] = iArr3[i];
                iArr3[i] = -1;
                return;
            }
            i4 = this.nextInBucketVToK[i3];
        }
    }

    private void ensureCapacity(int i) {
        int[] iArr = this.nextInBucketKToV;
        if (iArr.length < i) {
            int iF = ImmutableCollection.b.f(iArr.length, i);
            this.keys = (K[]) Arrays.copyOf(this.keys, iF);
            this.values = (V[]) Arrays.copyOf(this.values, iF);
            this.nextInBucketKToV = expandAndFillWithAbsent(this.nextInBucketKToV, iF);
            this.nextInBucketVToK = expandAndFillWithAbsent(this.nextInBucketVToK, iF);
            this.prevInInsertionOrder = expandAndFillWithAbsent(this.prevInInsertionOrder, iF);
            this.nextInInsertionOrder = expandAndFillWithAbsent(this.nextInInsertionOrder, iF);
        }
        if (this.hashTableKToV.length < i) {
            int iA = mo4.a(i, 1.0d);
            this.hashTableKToV = createFilledWithAbsent(iA);
            this.hashTableVToK = createFilledWithAbsent(iA);
            for (int i2 = 0; i2 < this.size; i2++) {
                int iBucket = bucket(mo4.d(this.keys[i2]));
                int[] iArr2 = this.nextInBucketKToV;
                int[] iArr3 = this.hashTableKToV;
                iArr2[i2] = iArr3[iBucket];
                iArr3[iBucket] = i2;
                int iBucket2 = bucket(mo4.d(this.values[i2]));
                int[] iArr4 = this.nextInBucketVToK;
                int[] iArr5 = this.hashTableVToK;
                iArr4[i2] = iArr5[iBucket2];
                iArr5[iBucket2] = i2;
            }
        }
    }

    private static int[] expandAndFillWithAbsent(int[] iArr, int i) {
        int length = iArr.length;
        int[] iArrCopyOf = Arrays.copyOf(iArr, i);
        Arrays.fill(iArrCopyOf, length, i, -1);
        return iArrCopyOf;
    }

    private void insertIntoTableKToV(int i, int i2) {
        xd8.d(i != -1);
        int iBucket = bucket(i2);
        int[] iArr = this.nextInBucketKToV;
        int[] iArr2 = this.hashTableKToV;
        iArr[i] = iArr2[iBucket];
        iArr2[iBucket] = i;
    }

    private void insertIntoTableVToK(int i, int i2) {
        xd8.d(i != -1);
        int iBucket = bucket(i2);
        int[] iArr = this.nextInBucketVToK;
        int[] iArr2 = this.hashTableVToK;
        iArr[i] = iArr2[iBucket];
        iArr2[iBucket] = i;
    }

    private void moveEntryToIndex(int i, int i2) {
        int i3;
        int i4;
        if (i == i2) {
            return;
        }
        int i5 = this.prevInInsertionOrder[i];
        int i6 = this.nextInInsertionOrder[i];
        setSucceeds(i5, i2);
        setSucceeds(i2, i6);
        K[] kArr = this.keys;
        K k = kArr[i];
        V[] vArr = this.values;
        V v = vArr[i];
        kArr[i2] = k;
        vArr[i2] = v;
        int iBucket = bucket(mo4.d(k));
        int[] iArr = this.hashTableKToV;
        int i7 = iArr[iBucket];
        if (i7 == i) {
            iArr[iBucket] = i2;
        } else {
            int i8 = this.nextInBucketKToV[i7];
            while (true) {
                i3 = i7;
                i7 = i8;
                if (i7 == i) {
                    break;
                } else {
                    i8 = this.nextInBucketKToV[i7];
                }
            }
            this.nextInBucketKToV[i3] = i2;
        }
        int[] iArr2 = this.nextInBucketKToV;
        iArr2[i2] = iArr2[i];
        iArr2[i] = -1;
        int iBucket2 = bucket(mo4.d(v));
        int[] iArr3 = this.hashTableVToK;
        int i9 = iArr3[iBucket2];
        if (i9 == i) {
            iArr3[iBucket2] = i2;
        } else {
            int i10 = this.nextInBucketVToK[i9];
            while (true) {
                i4 = i9;
                i9 = i10;
                if (i9 == i) {
                    break;
                } else {
                    i10 = this.nextInBucketVToK[i9];
                }
            }
            this.nextInBucketVToK[i4] = i2;
        }
        int[] iArr4 = this.nextInBucketVToK;
        iArr4[i2] = iArr4[i];
        iArr4[i] = -1;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int iH = n.h(objectInputStream);
        init(16);
        n.c(this, objectInputStream, iH);
    }

    public void replaceKeyInEntry(int i, K k, boolean z) {
        int i2;
        xd8.d(i != -1);
        int iD = mo4.d(k);
        int iFindEntryByKey = findEntryByKey(k, iD);
        int i3 = this.lastInInsertionOrder;
        if (iFindEntryByKey == -1) {
            i2 = -2;
        } else {
            if (!z) {
                throw new IllegalArgumentException("Key already present in map: " + k);
            }
            i3 = this.prevInInsertionOrder[iFindEntryByKey];
            i2 = this.nextInInsertionOrder[iFindEntryByKey];
            removeEntryKeyHashKnown(iFindEntryByKey, iD);
            if (i == this.size) {
                i = iFindEntryByKey;
            }
        }
        if (i3 == i) {
            i3 = this.prevInInsertionOrder[i];
        } else if (i3 == this.size) {
            i3 = iFindEntryByKey;
        }
        if (i2 == i) {
            iFindEntryByKey = this.nextInInsertionOrder[i];
        } else if (i2 != this.size) {
            iFindEntryByKey = i2;
        }
        setSucceeds(this.prevInInsertionOrder[i], this.nextInInsertionOrder[i]);
        deleteFromTableKToV(i, mo4.d(this.keys[i]));
        this.keys[i] = k;
        insertIntoTableKToV(i, mo4.d(k));
        setSucceeds(i3, i);
        setSucceeds(i, iFindEntryByKey);
    }

    public void replaceValueInEntry(int i, V v, boolean z) {
        xd8.d(i != -1);
        int iD = mo4.d(v);
        int iFindEntryByValue = findEntryByValue(v, iD);
        if (iFindEntryByValue != -1) {
            if (!z) {
                throw new IllegalArgumentException("Value already present in map: " + v);
            }
            removeEntryValueHashKnown(iFindEntryByValue, iD);
            if (i == this.size) {
                i = iFindEntryByValue;
            }
        }
        deleteFromTableVToK(i, mo4.d(this.values[i]));
        this.values[i] = v;
        insertIntoTableVToK(i, iD);
    }

    private void setSucceeds(int i, int i2) {
        if (i == -2) {
            this.firstInInsertionOrder = i2;
        } else {
            this.nextInInsertionOrder[i] = i2;
        }
        if (i2 == -2) {
            this.lastInInsertionOrder = i;
        } else {
            this.prevInInsertionOrder[i2] = i;
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        n.i(this, objectOutputStream);
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

    public int findEntry(Object obj, int i, int[] iArr, int[] iArr2, Object[] objArr) {
        int i2 = iArr[bucket(i)];
        while (i2 != -1) {
            if (kc7.a(objArr[i2], obj)) {
                return i2;
            }
            i2 = iArr2[i2];
        }
        return -1;
    }

    public int findEntryByKey(Object obj) {
        return findEntryByKey(obj, mo4.d(obj));
    }

    public int findEntryByValue(Object obj) {
        return findEntryByValue(obj, mo4.d(obj));
    }

    public V forcePut(K k, V v) {
        return put(k, v, true);
    }

    @Override
    public V get(Object obj) {
        int iFindEntryByKey = findEntryByKey(obj);
        if (iFindEntryByKey == -1) {
            return null;
        }
        return this.values[iFindEntryByKey];
    }

    public K getInverse(Object obj) {
        int iFindEntryByValue = findEntryByValue(obj);
        if (iFindEntryByValue == -1) {
            return null;
        }
        return this.keys[iFindEntryByValue];
    }

    public void init(int i) {
        k71.b(i, "expectedSize");
        int iA = mo4.a(i, 1.0d);
        this.size = 0;
        this.keys = (K[]) new Object[i];
        this.values = (V[]) new Object[i];
        this.hashTableKToV = createFilledWithAbsent(iA);
        this.hashTableVToK = createFilledWithAbsent(iA);
        this.nextInBucketKToV = createFilledWithAbsent(i);
        this.nextInBucketVToK = createFilledWithAbsent(i);
        this.firstInInsertionOrder = -2;
        this.lastInInsertionOrder = -2;
        this.prevInInsertionOrder = createFilledWithAbsent(i);
        this.nextInInsertionOrder = createFilledWithAbsent(i);
    }

    @Override
    public ce0 inverse() {
        ce0 ce0Var = this.inverse;
        if (ce0Var != null) {
            return ce0Var;
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
    public V put(K k, V v) {
        return put(k, v, false);
    }

    public K putInverse(V v, K k, boolean z) {
        int iD = mo4.d(v);
        int iFindEntryByValue = findEntryByValue(v, iD);
        if (iFindEntryByValue != -1) {
            K k2 = this.keys[iFindEntryByValue];
            if (kc7.a(k2, k)) {
                return k;
            }
            replaceKeyInEntry(iFindEntryByValue, k, z);
            return k2;
        }
        int i = this.lastInInsertionOrder;
        int iD2 = mo4.d(k);
        int iFindEntryByKey = findEntryByKey(k, iD2);
        if (!z) {
            xd8.j(iFindEntryByKey == -1, "Key already present: %s", k);
        } else if (iFindEntryByKey != -1) {
            i = this.prevInInsertionOrder[iFindEntryByKey];
            removeEntryKeyHashKnown(iFindEntryByKey, iD2);
        }
        ensureCapacity(this.size + 1);
        K[] kArr = this.keys;
        int i2 = this.size;
        kArr[i2] = k;
        this.values[i2] = v;
        insertIntoTableKToV(i2, iD2);
        insertIntoTableVToK(this.size, iD);
        int i3 = i == -2 ? this.firstInInsertionOrder : this.nextInInsertionOrder[i];
        setSucceeds(i, this.size);
        setSucceeds(this.size, i3);
        this.size++;
        this.modCount++;
        return null;
    }

    @Override
    public V remove(Object obj) {
        int iD = mo4.d(obj);
        int iFindEntryByKey = findEntryByKey(obj, iD);
        if (iFindEntryByKey == -1) {
            return null;
        }
        V v = this.values[iFindEntryByKey];
        removeEntryKeyHashKnown(iFindEntryByKey, iD);
        return v;
    }

    public void removeEntry(int i) {
        removeEntryKeyHashKnown(i, mo4.d(this.keys[i]));
    }

    public void removeEntryKeyHashKnown(int i, int i2) {
        removeEntry(i, i2, mo4.d(this.values[i]));
    }

    public void removeEntryValueHashKnown(int i, int i2) {
        removeEntry(i, mo4.d(this.keys[i]), i2);
    }

    public K removeInverse(Object obj) {
        int iD = mo4.d(obj);
        int iFindEntryByValue = findEntryByValue(obj, iD);
        if (iFindEntryByValue == -1) {
            return null;
        }
        K k = this.keys[iFindEntryByValue];
        removeEntryValueHashKnown(iFindEntryByValue, iD);
        return k;
    }

    @Override
    public int size() {
        return this.size;
    }

    public static <K, V> HashBiMap<K, V> create(int i) {
        return new HashBiMap<>(i);
    }

    private void removeEntry(int i, int i2, int i3) {
        xd8.d(i != -1);
        deleteFromTableKToV(i, i2);
        deleteFromTableVToK(i, i3);
        setSucceeds(this.prevInInsertionOrder[i], this.nextInInsertionOrder[i]);
        moveEntryToIndex(this.size - 1, i);
        K[] kArr = this.keys;
        int i4 = this.size;
        kArr[i4 - 1] = null;
        this.values[i4 - 1] = null;
        this.size = i4 - 1;
        this.modCount++;
    }

    public int findEntryByKey(Object obj, int i) {
        return findEntry(obj, i, this.hashTableKToV, this.nextInBucketKToV, this.keys);
    }

    public int findEntryByValue(Object obj, int i) {
        return findEntry(obj, i, this.hashTableVToK, this.nextInBucketVToK, this.values);
    }

    public V put(K k, V v, boolean z) {
        int iD = mo4.d(k);
        int iFindEntryByKey = findEntryByKey(k, iD);
        if (iFindEntryByKey != -1) {
            V v2 = this.values[iFindEntryByKey];
            if (kc7.a(v2, v)) {
                return v;
            }
            replaceValueInEntry(iFindEntryByKey, v, z);
            return v2;
        }
        int iD2 = mo4.d(v);
        int iFindEntryByValue = findEntryByValue(v, iD2);
        if (!z) {
            xd8.j(iFindEntryByValue == -1, "Value already present: %s", v);
        } else if (iFindEntryByValue != -1) {
            removeEntryValueHashKnown(iFindEntryByValue, iD2);
        }
        ensureCapacity(this.size + 1);
        K[] kArr = this.keys;
        int i = this.size;
        kArr[i] = k;
        this.values[i] = v;
        insertIntoTableKToV(i, iD);
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
