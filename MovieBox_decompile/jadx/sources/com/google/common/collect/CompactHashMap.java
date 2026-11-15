package com.google.common.collect;

import com.google.common.primitives.Ints;
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

    private static final Object f29503g = new Object();

    private transient Object f29504a;

    private transient int f29505b;

    private transient int f29506c;

    private transient Set f29507d;

    private transient Set f29508e;
    transient int[] entries;

    private transient Collection f29509f;
    transient Object[] keys;
    transient Object[] values;

    class a extends e {
        a() {
            super(CompactHashMap.this, null);
        }

        @Override
        Object b(int i10) {
            return CompactHashMap.this.e(i10);
        }
    }

    class b extends e {
        b() {
            super(CompactHashMap.this, null);
        }

        @Override
        public Map.Entry b(int i10) {
            return new g(i10);
        }
    }

    class c extends e {
        c() {
            super(CompactHashMap.this, null);
        }

        @Override
        Object b(int i10) {
            return CompactHashMap.this.r(i10);
        }
    }

    class d extends AbstractSet {
        d() {
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
            int iD = CompactHashMap.this.d(entry.getKey());
            return iD != -1 && com.google.common.base.j.a(CompactHashMap.this.r(iD), entry.getValue());
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
            int iC = CompactHashMap.this.c();
            int iF = g2.f(entry.getKey(), entry.getValue(), iC, CompactHashMap.this.j(), CompactHashMap.this.h(), CompactHashMap.this.i(), CompactHashMap.this.k());
            if (iF == -1) {
                return false;
            }
            CompactHashMap.this.moveLastEntry(iF, iC);
            CompactHashMap.access$1210(CompactHashMap.this);
            CompactHashMap.this.incrementModCount();
            return true;
        }

        @Override
        public int size() {
            return CompactHashMap.this.size();
        }
    }

    class f extends AbstractSet {
        f() {
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
            return CompactHashMap.this.f(obj) != CompactHashMap.f29503g;
        }

        @Override
        public int size() {
            return CompactHashMap.this.size();
        }
    }

    final class g extends com.google.common.collect.b {

        private final Object f29519a;

        private int f29520b;

        g(int i10) {
            this.f29519a = CompactHashMap.this.e(i10);
            this.f29520b = i10;
        }

        private void a() {
            int i10 = this.f29520b;
            if (i10 == -1 || i10 >= CompactHashMap.this.size() || !com.google.common.base.j.a(this.f29519a, CompactHashMap.this.e(this.f29520b))) {
                this.f29520b = CompactHashMap.this.d(this.f29519a);
            }
        }

        @Override
        public Object getKey() {
            return this.f29519a;
        }

        @Override
        public Object getValue() {
            Map<K, V> mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            if (mapDelegateOrNull != null) {
                return m3.a(mapDelegateOrNull.get(this.f29519a));
            }
            a();
            int i10 = this.f29520b;
            return i10 == -1 ? m3.b() : CompactHashMap.this.r(i10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Object setValue(Object obj) {
            Map mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            if (mapDelegateOrNull != 0) {
                return m3.a(mapDelegateOrNull.put(this.f29519a, obj));
            }
            a();
            int i10 = this.f29520b;
            if (i10 == -1) {
                CompactHashMap.this.put(this.f29519a, obj);
                return m3.b();
            }
            Object objR = CompactHashMap.this.r(i10);
            CompactHashMap.this.q(this.f29520b, obj);
            return objR;
        }
    }

    class h extends AbstractCollection {
        h() {
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

    CompactHashMap() {
        init(3);
    }

    private int a(int i10) {
        return h()[i10];
    }

    static int access$1210(CompactHashMap compactHashMap) {
        int i10 = compactHashMap.f29506c;
        compactHashMap.f29506c = i10 - 1;
        return i10;
    }

    public int c() {
        return (1 << (this.f29505b & 31)) - 1;
    }

    public static <K, V> CompactHashMap<K, V> create() {
        return new CompactHashMap<>();
    }

    public static <K, V> CompactHashMap<K, V> createWithExpectedSize(int i10) {
        return new CompactHashMap<>(i10);
    }

    public int d(Object obj) {
        if (needsAllocArrays()) {
            return -1;
        }
        int iD = v2.d(obj);
        int iC = c();
        int iH = g2.h(j(), iD & iC);
        if (iH == 0) {
            return -1;
        }
        int iB = g2.b(iD, iC);
        do {
            int i10 = iH - 1;
            int iA = a(i10);
            if (g2.b(iA, iC) == iB && com.google.common.base.j.a(obj, e(i10))) {
                return i10;
            }
            iH = g2.c(iA, iC);
        } while (iH != 0);
        return -1;
    }

    public Object e(int i10) {
        return i()[i10];
    }

    public Object f(Object obj) {
        if (needsAllocArrays()) {
            return f29503g;
        }
        int iC = c();
        int iF = g2.f(obj, null, iC, j(), h(), i(), null);
        if (iF == -1) {
            return f29503g;
        }
        Object objR = r(iF);
        moveLastEntry(iF, iC);
        this.f29506c--;
        incrementModCount();
        return objR;
    }

    public int[] h() {
        int[] iArr = this.entries;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    public Object[] i() {
        Object[] objArr = this.keys;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    public Object j() {
        Object obj = this.f29504a;
        Objects.requireNonNull(obj);
        return obj;
    }

    public Object[] k() {
        Object[] objArr = this.values;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    private void l(int i10) {
        int iMin;
        int length = h().length;
        if (i10 <= length || (iMin = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) == length) {
            return;
        }
        resizeEntries(iMin);
    }

    private int m(int i10, int i11, int i12, int i13) {
        Object objA = g2.a(i11);
        int i14 = i11 - 1;
        if (i13 != 0) {
            g2.i(objA, i12 & i14, i13 + 1);
        }
        Object objJ = j();
        int[] iArrH = h();
        for (int i15 = 0; i15 <= i10; i15++) {
            int iH = g2.h(objJ, i15);
            while (iH != 0) {
                int i16 = iH - 1;
                int i17 = iArrH[i16];
                int iB = g2.b(i17, i10) | i15;
                int i18 = iB & i14;
                int iH2 = g2.h(objA, i18);
                g2.i(objA, i18, iH);
                iArrH[i16] = g2.d(iB, iH2, i14);
                iH = g2.c(i17, i10);
            }
        }
        this.f29504a = objA;
        o(i14);
        return i14;
    }

    private void n(int i10, int i11) {
        h()[i10] = i11;
    }

    private void o(int i10) {
        this.f29505b = g2.d(this.f29505b, 32 - Integer.numberOfLeadingZeros(i10), 31);
    }

    private void p(int i10, Object obj) {
        i()[i10] = obj;
    }

    public void q(int i10, Object obj) {
        k()[i10] = obj;
    }

    public Object r(int i10) {
        return k()[i10];
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i10 = objectInputStream.readInt();
        if (i10 < 0) {
            throw new InvalidObjectException("Invalid size: " + i10);
        }
        init(i10);
        for (int i11 = 0; i11 < i10; i11++) {
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

    void accessEntry(int i10) {
    }

    int adjustAfterRemove(int i10, int i11) {
        return i10 - 1;
    }

    int allocArrays() {
        com.google.common.base.m.v(needsAllocArrays(), "Arrays already allocated");
        int i10 = this.f29505b;
        int iJ = g2.j(i10);
        this.f29504a = g2.a(iJ);
        o(iJ - 1);
        this.entries = new int[i10];
        this.keys = new Object[i10];
        this.values = new Object[i10];
        return i10;
    }

    @Override
    public void clear() {
        if (needsAllocArrays()) {
            return;
        }
        incrementModCount();
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            this.f29505b = Ints.f(size(), 3, 1073741823);
            mapDelegateOrNull.clear();
            this.f29504a = null;
            this.f29506c = 0;
            return;
        }
        Arrays.fill(i(), 0, this.f29506c, (Object) null);
        Arrays.fill(k(), 0, this.f29506c, (Object) null);
        g2.g(j());
        Arrays.fill(h(), 0, this.f29506c, 0);
        this.f29506c = 0;
    }

    @Override
    public boolean containsKey(Object obj) {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.containsKey(obj);
        }
        return d(obj) != -1;
    }

    @Override
    public boolean containsValue(Object obj) {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.containsValue(obj);
        }
        for (int i10 = 0; i10 < this.f29506c; i10++) {
            if (com.google.common.base.j.a(obj, r(i10))) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    Map<K, V> convertToHashFloodingResistantImplementation() {
        Map<K, V> mapCreateHashFloodingResistantDelegate = createHashFloodingResistantDelegate(c() + 1);
        int iFirstEntryIndex = firstEntryIndex();
        while (iFirstEntryIndex >= 0) {
            mapCreateHashFloodingResistantDelegate.put(e(iFirstEntryIndex), r(iFirstEntryIndex));
            iFirstEntryIndex = getSuccessor(iFirstEntryIndex);
        }
        this.f29504a = mapCreateHashFloodingResistantDelegate;
        this.entries = null;
        this.keys = null;
        this.values = null;
        incrementModCount();
        return mapCreateHashFloodingResistantDelegate;
    }

    Set<Map.Entry<K, V>> createEntrySet() {
        return new d();
    }

    Map<K, V> createHashFloodingResistantDelegate(int i10) {
        return new LinkedHashMap(i10, 1.0f);
    }

    Set<K> createKeySet() {
        return new f();
    }

    Collection<V> createValues() {
        return new h();
    }

    Map<K, V> delegateOrNull() {
        Object obj = this.f29504a;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    @Override
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f29508e;
        if (set != null) {
            return set;
        }
        Set<Map.Entry<K, V>> setCreateEntrySet = createEntrySet();
        this.f29508e = setCreateEntrySet;
        return setCreateEntrySet;
    }

    Iterator<Map.Entry<K, V>> entrySetIterator() {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        return mapDelegateOrNull != null ? mapDelegateOrNull.entrySet().iterator() : new b();
    }

    int firstEntryIndex() {
        return isEmpty() ? -1 : 0;
    }

    @Override
    public V get(Object obj) {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.get(obj);
        }
        int iD = d(obj);
        if (iD == -1) {
            return null;
        }
        accessEntry(iD);
        return (V) r(iD);
    }

    int getSuccessor(int i10) {
        int i11 = i10 + 1;
        if (i11 < this.f29506c) {
            return i11;
        }
        return -1;
    }

    void incrementModCount() {
        this.f29505b += 32;
    }

    void init(int i10) {
        com.google.common.base.m.e(i10 >= 0, "Expected size must be >= 0");
        this.f29505b = Ints.f(i10, 1, 1073741823);
    }

    void insertEntry(int i10, K k10, V v10, int i11, int i12) {
        n(i10, g2.d(i11, 0, i12));
        p(i10, k10);
        q(i10, v10);
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public Set<K> keySet() {
        Set<K> set = this.f29507d;
        if (set != null) {
            return set;
        }
        Set<K> setCreateKeySet = createKeySet();
        this.f29507d = setCreateKeySet;
        return setCreateKeySet;
    }

    Iterator<K> keySetIterator() {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        return mapDelegateOrNull != null ? mapDelegateOrNull.keySet().iterator() : new a();
    }

    void moveLastEntry(int i10, int i11) {
        Object objJ = j();
        int[] iArrH = h();
        Object[] objArrI = i();
        Object[] objArrK = k();
        int size = size();
        int i12 = size - 1;
        if (i10 >= i12) {
            objArrI[i10] = null;
            objArrK[i10] = null;
            iArrH[i10] = 0;
            return;
        }
        Object obj = objArrI[i12];
        objArrI[i10] = obj;
        objArrK[i10] = objArrK[i12];
        objArrI[i12] = null;
        objArrK[i12] = null;
        iArrH[i10] = iArrH[i12];
        iArrH[i12] = 0;
        int iD = v2.d(obj) & i11;
        int iH = g2.h(objJ, iD);
        if (iH == size) {
            g2.i(objJ, iD, i10 + 1);
            return;
        }
        while (true) {
            int i13 = iH - 1;
            int i14 = iArrH[i13];
            int iC = g2.c(i14, i11);
            if (iC == size) {
                iArrH[i13] = g2.d(i14, i10 + 1, i11);
                return;
            }
            iH = iC;
        }
    }

    boolean needsAllocArrays() {
        return this.f29504a == null;
    }

    @Override
    public V put(K k10, V v10) {
        int iM;
        int i10;
        if (needsAllocArrays()) {
            allocArrays();
        }
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.put(k10, v10);
        }
        int[] iArrH = h();
        Object[] objArrI = i();
        Object[] objArrK = k();
        int i11 = this.f29506c;
        int i12 = i11 + 1;
        int iD = v2.d(k10);
        int iC = c();
        int i13 = iD & iC;
        int iH = g2.h(j(), i13);
        if (iH != 0) {
            int iB = g2.b(iD, iC);
            int i14 = 0;
            while (true) {
                int i15 = iH - 1;
                int i16 = iArrH[i15];
                if (g2.b(i16, iC) == iB && com.google.common.base.j.a(k10, objArrI[i15])) {
                    V v11 = (V) objArrK[i15];
                    objArrK[i15] = v10;
                    accessEntry(i15);
                    return v11;
                }
                int iC2 = g2.c(i16, iC);
                i14++;
                if (iC2 != 0) {
                    iH = iC2;
                } else {
                    if (i14 >= 9) {
                        return convertToHashFloodingResistantImplementation().put(k10, v10);
                    }
                    if (i12 > iC) {
                        iM = m(iC, g2.e(iC), iD, i11);
                        i10 = iM;
                    } else {
                        iArrH[i15] = g2.d(i16, i12, iC);
                        i10 = iC;
                    }
                }
            }
        } else if (i12 > iC) {
            iM = m(iC, g2.e(iC), iD, i11);
            i10 = iM;
        } else {
            g2.i(j(), i13, i12);
            i10 = iC;
        }
        l(i12);
        insertEntry(i11, k10, v10, iD, i10);
        this.f29506c = i12;
        incrementModCount();
        return null;
    }

    @Override
    public V remove(Object obj) {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.remove(obj);
        }
        V v10 = (V) f(obj);
        if (v10 == f29503g) {
            return null;
        }
        return v10;
    }

    void resizeEntries(int i10) {
        this.entries = Arrays.copyOf(h(), i10);
        this.keys = Arrays.copyOf(i(), i10);
        this.values = Arrays.copyOf(k(), i10);
    }

    @Override
    public int size() {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        return mapDelegateOrNull != null ? mapDelegateOrNull.size() : this.f29506c;
    }

    public void trimToSize() {
        if (needsAllocArrays()) {
            return;
        }
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            Map<K, V> mapCreateHashFloodingResistantDelegate = createHashFloodingResistantDelegate(size());
            mapCreateHashFloodingResistantDelegate.putAll(mapDelegateOrNull);
            this.f29504a = mapCreateHashFloodingResistantDelegate;
            return;
        }
        int i10 = this.f29506c;
        if (i10 < h().length) {
            resizeEntries(i10);
        }
        int iJ = g2.j(i10);
        int iC = c();
        if (iJ < iC) {
            m(iC, iJ, 0, 0);
        }
    }

    @Override
    public Collection<V> values() {
        Collection<V> collection = this.f29509f;
        if (collection != null) {
            return collection;
        }
        Collection<V> collectionCreateValues = createValues();
        this.f29509f = collectionCreateValues;
        return collectionCreateValues;
    }

    Iterator<V> valuesIterator() {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        return mapDelegateOrNull != null ? mapDelegateOrNull.values().iterator() : new c();
    }

    CompactHashMap(int i10) {
        init(i10);
    }

    private abstract class e implements Iterator {

        int f29514a;

        int f29515b;

        int f29516c;

        private e() {
            this.f29514a = CompactHashMap.this.f29505b;
            this.f29515b = CompactHashMap.this.firstEntryIndex();
            this.f29516c = -1;
        }

        private void a() {
            if (CompactHashMap.this.f29505b != this.f29514a) {
                throw new ConcurrentModificationException();
            }
        }

        abstract Object b(int i10);

        void c() {
            this.f29514a += 32;
        }

        @Override
        public boolean hasNext() {
            return this.f29515b >= 0;
        }

        @Override
        public Object next() {
            a();
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            int i10 = this.f29515b;
            this.f29516c = i10;
            Object objB = b(i10);
            this.f29515b = CompactHashMap.this.getSuccessor(this.f29515b);
            return objB;
        }

        @Override
        public void remove() {
            a();
            e2.e(this.f29516c >= 0);
            c();
            CompactHashMap compactHashMap = CompactHashMap.this;
            compactHashMap.remove(compactHashMap.e(this.f29516c));
            this.f29515b = CompactHashMap.this.adjustAfterRemove(this.f29515b, this.f29516c);
            this.f29516c = -1;
        }

        e(CompactHashMap compactHashMap, a aVar) {
            this();
        }
    }
}
