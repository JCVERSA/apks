package com.google.common.collect;

import com.google.common.primitives.Ints;
import defpackage.i3;
import defpackage.k71;
import defpackage.kc7;
import defpackage.mo4;
import defpackage.r37;
import defpackage.ta1;
import defpackage.xd8;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

class CompactHashMap<K, V> extends AbstractMap<K, V> implements Serializable {
    static final double HASH_FLOODING_FPP = 0.001d;
    public static final Object h = new Object();
    public transient Object b;
    public transient int c;
    public transient int d;
    public transient Set e;
    transient int[] entries;
    public transient Set f;
    public transient Collection g;
    transient Object[] keys;
    transient Object[] values;

    public class a extends e {
        public a() {
            super(CompactHashMap.this, null);
        }

        @Override
        public Object b(int i) {
            return CompactHashMap.this.d(i);
        }
    }

    public class b extends e {
        public b() {
            super(CompactHashMap.this, null);
        }

        @Override
        public Map.Entry b(int i) {
            return new g(i);
        }
    }

    public class c extends e {
        public c() {
            super(CompactHashMap.this, null);
        }

        @Override
        public Object b(int i) {
            return CompactHashMap.this.r(i);
        }
    }

    public class d extends AbstractSet {
        public d() {
        }

        @Override
        public void clear() {
            CompactHashMap.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            Map<K, V> mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            if (mapDelegateOrNull != null) {
                return mapDelegateOrNull.entrySet().contains(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int iC = CompactHashMap.this.c(entry.getKey());
            return iC != -1 && kc7.a(CompactHashMap.this.r(iC), entry.getValue());
        }

        @Override
        public Iterator iterator() {
            return CompactHashMap.this.entrySetIterator();
        }

        @Override
        public boolean remove(Object obj) {
            Map<K, V> mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            if (mapDelegateOrNull != null) {
                return mapDelegateOrNull.entrySet().remove(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (CompactHashMap.this.needsAllocArrays()) {
                return false;
            }
            int iB = CompactHashMap.this.b();
            int iF = ta1.f(entry.getKey(), entry.getValue(), iB, CompactHashMap.this.h(), CompactHashMap.this.f(), CompactHashMap.this.g(), CompactHashMap.this.k());
            if (iF == -1) {
                return false;
            }
            CompactHashMap.this.moveLastEntry(iF, iB);
            CompactHashMap.access$1210(CompactHashMap.this);
            CompactHashMap.this.incrementModCount();
            return true;
        }

        @Override
        public int size() {
            return CompactHashMap.this.size();
        }
    }

    public class f extends AbstractSet {
        public f() {
        }

        @Override
        public void clear() {
            CompactHashMap.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            return CompactHashMap.this.containsKey(obj);
        }

        @Override
        public Iterator iterator() {
            return CompactHashMap.this.keySetIterator();
        }

        @Override
        public boolean remove(Object obj) {
            Map<K, V> mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            if (mapDelegateOrNull != null) {
                return mapDelegateOrNull.keySet().remove(obj);
            }
            return CompactHashMap.this.e(obj) != CompactHashMap.h;
        }

        @Override
        public int size() {
            return CompactHashMap.this.size();
        }
    }

    public final class g extends i3 {
        public final Object b;
        public int c;

        public g(int i) {
            this.b = CompactHashMap.this.d(i);
            this.c = i;
        }

        public final void a() {
            int i = this.c;
            if (i == -1 || i >= CompactHashMap.this.size() || !kc7.a(this.b, CompactHashMap.this.d(this.c))) {
                this.c = CompactHashMap.this.c(this.b);
            }
        }

        @Override
        public Object getKey() {
            return this.b;
        }

        @Override
        public Object getValue() {
            Map<K, V> mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            if (mapDelegateOrNull != null) {
                return r37.a(mapDelegateOrNull.get(this.b));
            }
            a();
            int i = this.c;
            return i == -1 ? r37.b() : CompactHashMap.this.r(i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Object setValue(Object obj) {
            Map mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            if (mapDelegateOrNull != 0) {
                return r37.a(mapDelegateOrNull.put(this.b, obj));
            }
            a();
            int i = this.c;
            if (i == -1) {
                CompactHashMap.this.put(this.b, obj);
                return r37.b();
            }
            Object objR = CompactHashMap.this.r(i);
            CompactHashMap.this.q(this.c, obj);
            return objR;
        }
    }

    public class h extends AbstractCollection {
        public h() {
        }

        @Override
        public void clear() {
            CompactHashMap.this.clear();
        }

        @Override
        public Iterator iterator() {
            return CompactHashMap.this.valuesIterator();
        }

        @Override
        public int size() {
            return CompactHashMap.this.size();
        }
    }

    public CompactHashMap() {
        init(3);
    }

    public static int access$1210(CompactHashMap compactHashMap) {
        int i = compactHashMap.d;
        compactHashMap.d = i - 1;
        return i;
    }

    public static <K, V> CompactHashMap<K, V> create() {
        return new CompactHashMap<>();
    }

    public static <K, V> CompactHashMap<K, V> createWithExpectedSize(int i) {
        return new CompactHashMap<>(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i = objectInputStream.readInt();
        if (i < 0) {
            throw new InvalidObjectException("Invalid size: " + i);
        }
        init(i);
        for (int i2 = 0; i2 < i; i2++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        Iterator<Map.Entry<K, V>> itEntrySetIterator = entrySetIterator();
        while (itEntrySetIterator.hasNext()) {
            Map.Entry<K, V> next = itEntrySetIterator.next();
            objectOutputStream.writeObject(next.getKey());
            objectOutputStream.writeObject(next.getValue());
        }
    }

    public final int a(int i) {
        return f()[i];
    }

    public void accessEntry(int i) {
    }

    public int adjustAfterRemove(int i, int i2) {
        return i - 1;
    }

    public int allocArrays() {
        xd8.v(needsAllocArrays(), "Arrays already allocated");
        int i = this.c;
        int iJ = ta1.j(i);
        this.b = ta1.a(iJ);
        o(iJ - 1);
        this.entries = new int[i];
        this.keys = new Object[i];
        this.values = new Object[i];
        return i;
    }

    public final int b() {
        return (1 << (this.c & 31)) - 1;
    }

    public final int c(Object obj) {
        if (needsAllocArrays()) {
            return -1;
        }
        int iD = mo4.d(obj);
        int iB = b();
        int iH = ta1.h(h(), iD & iB);
        if (iH == 0) {
            return -1;
        }
        int iB2 = ta1.b(iD, iB);
        do {
            int i = iH - 1;
            int iA = a(i);
            if (ta1.b(iA, iB) == iB2 && kc7.a(obj, d(i))) {
                return i;
            }
            iH = ta1.c(iA, iB);
        } while (iH != 0);
        return -1;
    }

    @Override
    public void clear() {
        if (needsAllocArrays()) {
            return;
        }
        incrementModCount();
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            this.c = Ints.f(size(), 3, 1073741823);
            mapDelegateOrNull.clear();
            this.b = null;
            this.d = 0;
            return;
        }
        Arrays.fill(g(), 0, this.d, (Object) null);
        Arrays.fill(k(), 0, this.d, (Object) null);
        ta1.g(h());
        Arrays.fill(f(), 0, this.d, 0);
        this.d = 0;
    }

    @Override
    public boolean containsKey(Object obj) {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.containsKey(obj);
        }
        return c(obj) != -1;
    }

    @Override
    public boolean containsValue(Object obj) {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.containsValue(obj);
        }
        for (int i = 0; i < this.d; i++) {
            if (kc7.a(obj, r(i))) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Map<K, V> convertToHashFloodingResistantImplementation() {
        Map<K, V> mapCreateHashFloodingResistantDelegate = createHashFloodingResistantDelegate(b() + 1);
        int iFirstEntryIndex = firstEntryIndex();
        while (iFirstEntryIndex >= 0) {
            mapCreateHashFloodingResistantDelegate.put(d(iFirstEntryIndex), r(iFirstEntryIndex));
            iFirstEntryIndex = getSuccessor(iFirstEntryIndex);
        }
        this.b = mapCreateHashFloodingResistantDelegate;
        this.entries = null;
        this.keys = null;
        this.values = null;
        incrementModCount();
        return mapCreateHashFloodingResistantDelegate;
    }

    public Set<Map.Entry<K, V>> createEntrySet() {
        return new d();
    }

    public Map<K, V> createHashFloodingResistantDelegate(int i) {
        return new LinkedHashMap(i, 1.0f);
    }

    public Set<K> createKeySet() {
        return new f();
    }

    public Collection<V> createValues() {
        return new h();
    }

    public final Object d(int i) {
        return g()[i];
    }

    public Map<K, V> delegateOrNull() {
        Object obj = this.b;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    public final Object e(Object obj) {
        if (needsAllocArrays()) {
            return h;
        }
        int iB = b();
        int iF = ta1.f(obj, null, iB, h(), f(), g(), null);
        if (iF == -1) {
            return h;
        }
        Object objR = r(iF);
        moveLastEntry(iF, iB);
        this.d--;
        incrementModCount();
        return objR;
    }

    @Override
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f;
        if (set != null) {
            return set;
        }
        Set<Map.Entry<K, V>> setCreateEntrySet = createEntrySet();
        this.f = setCreateEntrySet;
        return setCreateEntrySet;
    }

    public Iterator<Map.Entry<K, V>> entrySetIterator() {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        return mapDelegateOrNull != null ? mapDelegateOrNull.entrySet().iterator() : new b();
    }

    public final int[] f() {
        int[] iArr = this.entries;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    public int firstEntryIndex() {
        return isEmpty() ? -1 : 0;
    }

    public final Object[] g() {
        Object[] objArr = this.keys;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    @Override
    public V get(Object obj) {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.get(obj);
        }
        int iC = c(obj);
        if (iC == -1) {
            return null;
        }
        accessEntry(iC);
        return (V) r(iC);
    }

    public int getSuccessor(int i) {
        int i2 = i + 1;
        if (i2 < this.d) {
            return i2;
        }
        return -1;
    }

    public final Object h() {
        Object obj = this.b;
        Objects.requireNonNull(obj);
        return obj;
    }

    public void incrementModCount() {
        this.c += 32;
    }

    public void init(int i) {
        xd8.e(i >= 0, "Expected size must be >= 0");
        this.c = Ints.f(i, 1, 1073741823);
    }

    public void insertEntry(int i, K k, V v, int i2, int i3) {
        n(i, ta1.d(i2, 0, i3));
        p(i, k);
        q(i, v);
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public final Object[] k() {
        Object[] objArr = this.values;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    @Override
    public Set<K> keySet() {
        Set<K> set = this.e;
        if (set != null) {
            return set;
        }
        Set<K> setCreateKeySet = createKeySet();
        this.e = setCreateKeySet;
        return setCreateKeySet;
    }

    public Iterator<K> keySetIterator() {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        return mapDelegateOrNull != null ? mapDelegateOrNull.keySet().iterator() : new a();
    }

    public final void l(int i) {
        int iMin;
        int length = f().length;
        if (i <= length || (iMin = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) == length) {
            return;
        }
        resizeEntries(iMin);
    }

    public final int m(int i, int i2, int i3, int i4) {
        Object objA = ta1.a(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            ta1.i(objA, i3 & i5, i4 + 1);
        }
        Object objH = h();
        int[] iArrF = f();
        for (int i6 = 0; i6 <= i; i6++) {
            int iH = ta1.h(objH, i6);
            while (iH != 0) {
                int i7 = iH - 1;
                int i8 = iArrF[i7];
                int iB = ta1.b(i8, i) | i6;
                int i9 = iB & i5;
                int iH2 = ta1.h(objA, i9);
                ta1.i(objA, i9, iH);
                iArrF[i7] = ta1.d(iB, iH2, i5);
                iH = ta1.c(i8, i);
            }
        }
        this.b = objA;
        o(i5);
        return i5;
    }

    public void moveLastEntry(int i, int i2) {
        Object objH = h();
        int[] iArrF = f();
        Object[] objArrG = g();
        Object[] objArrK = k();
        int size = size();
        int i3 = size - 1;
        if (i >= i3) {
            objArrG[i] = null;
            objArrK[i] = null;
            iArrF[i] = 0;
            return;
        }
        Object obj = objArrG[i3];
        objArrG[i] = obj;
        objArrK[i] = objArrK[i3];
        objArrG[i3] = null;
        objArrK[i3] = null;
        iArrF[i] = iArrF[i3];
        iArrF[i3] = 0;
        int iD = mo4.d(obj) & i2;
        int iH = ta1.h(objH, iD);
        if (iH == size) {
            ta1.i(objH, iD, i + 1);
            return;
        }
        while (true) {
            int i4 = iH - 1;
            int i5 = iArrF[i4];
            int iC = ta1.c(i5, i2);
            if (iC == size) {
                iArrF[i4] = ta1.d(i5, i + 1, i2);
                return;
            }
            iH = iC;
        }
    }

    public final void n(int i, int i2) {
        f()[i] = i2;
    }

    public boolean needsAllocArrays() {
        return this.b == null;
    }

    public final void o(int i) {
        this.c = ta1.d(this.c, 32 - Integer.numberOfLeadingZeros(i), 31);
    }

    public final void p(int i, Object obj) {
        g()[i] = obj;
    }

    @Override
    public V put(K k, V v) {
        int iM;
        int i;
        if (needsAllocArrays()) {
            allocArrays();
        }
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.put(k, v);
        }
        int[] iArrF = f();
        Object[] objArrG = g();
        Object[] objArrK = k();
        int i2 = this.d;
        int i3 = i2 + 1;
        int iD = mo4.d(k);
        int iB = b();
        int i4 = iD & iB;
        int iH = ta1.h(h(), i4);
        if (iH != 0) {
            int iB2 = ta1.b(iD, iB);
            int i5 = 0;
            while (true) {
                int i6 = iH - 1;
                int i7 = iArrF[i6];
                if (ta1.b(i7, iB) == iB2 && kc7.a(k, objArrG[i6])) {
                    V v2 = (V) objArrK[i6];
                    objArrK[i6] = v;
                    accessEntry(i6);
                    return v2;
                }
                int iC = ta1.c(i7, iB);
                i5++;
                if (iC != 0) {
                    iH = iC;
                } else {
                    if (i5 >= 9) {
                        return convertToHashFloodingResistantImplementation().put(k, v);
                    }
                    if (i3 > iB) {
                        iM = m(iB, ta1.e(iB), iD, i2);
                        i = iM;
                    } else {
                        iArrF[i6] = ta1.d(i7, i3, iB);
                        i = iB;
                    }
                }
            }
        } else if (i3 > iB) {
            iM = m(iB, ta1.e(iB), iD, i2);
            i = iM;
        } else {
            ta1.i(h(), i4, i3);
            i = iB;
        }
        l(i3);
        insertEntry(i2, k, v, iD, i);
        this.d = i3;
        incrementModCount();
        return null;
    }

    public final void q(int i, Object obj) {
        k()[i] = obj;
    }

    public final Object r(int i) {
        return k()[i];
    }

    @Override
    public V remove(Object obj) {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.remove(obj);
        }
        V v = (V) e(obj);
        if (v == h) {
            return null;
        }
        return v;
    }

    public void resizeEntries(int i) {
        this.entries = Arrays.copyOf(f(), i);
        this.keys = Arrays.copyOf(g(), i);
        this.values = Arrays.copyOf(k(), i);
    }

    @Override
    public int size() {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        return mapDelegateOrNull != null ? mapDelegateOrNull.size() : this.d;
    }

    public void trimToSize() {
        if (needsAllocArrays()) {
            return;
        }
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            Map<K, V> mapCreateHashFloodingResistantDelegate = createHashFloodingResistantDelegate(size());
            mapCreateHashFloodingResistantDelegate.putAll(mapDelegateOrNull);
            this.b = mapCreateHashFloodingResistantDelegate;
            return;
        }
        int i = this.d;
        if (i < f().length) {
            resizeEntries(i);
        }
        int iJ = ta1.j(i);
        int iB = b();
        if (iJ < iB) {
            m(iB, iJ, 0, 0);
        }
    }

    @Override
    public Collection<V> values() {
        Collection<V> collection = this.g;
        if (collection != null) {
            return collection;
        }
        Collection<V> collectionCreateValues = createValues();
        this.g = collectionCreateValues;
        return collectionCreateValues;
    }

    public Iterator<V> valuesIterator() {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        return mapDelegateOrNull != null ? mapDelegateOrNull.values().iterator() : new c();
    }

    public CompactHashMap(int i) {
        init(i);
    }

    public abstract class e implements Iterator {
        public int b;
        public int c;
        public int d;

        public e() {
            this.b = CompactHashMap.this.c;
            this.c = CompactHashMap.this.firstEntryIndex();
            this.d = -1;
        }

        public final void a() {
            if (CompactHashMap.this.c != this.b) {
                throw new ConcurrentModificationException();
            }
        }

        public abstract Object b(int i);

        public void c() {
            this.b += 32;
        }

        @Override
        public boolean hasNext() {
            return this.c >= 0;
        }

        @Override
        public Object next() {
            a();
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            int i = this.c;
            this.d = i;
            Object objB = b(i);
            this.c = CompactHashMap.this.getSuccessor(this.c);
            return objB;
        }

        @Override
        public void remove() {
            a();
            k71.e(this.d >= 0);
            c();
            CompactHashMap compactHashMap = CompactHashMap.this;
            compactHashMap.remove(compactHashMap.d(this.d));
            this.c = CompactHashMap.this.adjustAfterRemove(this.c, this.d);
            this.d = -1;
        }

        public e(CompactHashMap compactHashMap, a aVar) {
            this();
        }
    }
}
