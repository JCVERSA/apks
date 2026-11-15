package com.alibaba.fastjson.util;

import androidx.datastore.preferences.protobuf.DescriptorProtos$Edition;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Random;
import java.util.Set;

public class AntiCollisionHashMap<K, V> extends AbstractMap<K, V> implements Map<K, V>, Cloneable, Serializable {
    static final int DEFAULT_INITIAL_CAPACITY = 16;
    static final float DEFAULT_LOAD_FACTOR = 0.75f;
    static final int KEY = 16777619;
    static final int MAXIMUM_CAPACITY = 1073741824;
    static final int M_MASK = -2023358765;
    static final int SEED = -2128831035;
    private static final long serialVersionUID = 362498820763181265L;
    private transient Set<Map.Entry<K, V>> entrySet;
    volatile transient Set<K> keySet;
    final float loadFactor;
    volatile transient int modCount;
    final int random;
    transient int size;
    transient b[] table;
    int threshold;
    volatile transient Collection<V> values;

    static class b implements Map.Entry {

        final Object f17531a;

        Object f17532b;

        b f17533c;

        final int f17534d;

        b(int i10, Object obj, Object obj2, b bVar) {
            this.f17532b = obj2;
            this.f17533c = bVar;
            this.f17531a = obj;
            this.f17534d = i10;
        }

        @Override
        public final boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = getKey();
            Object key2 = entry.getKey();
            if (key != key2 && (key == null || !key.equals(key2))) {
                return false;
            }
            Object value = getValue();
            Object value2 = entry.getValue();
            return value == value2 || (value != null && value.equals(value2));
        }

        @Override
        public final Object getKey() {
            return this.f17531a;
        }

        @Override
        public final Object getValue() {
            return this.f17532b;
        }

        @Override
        public final int hashCode() {
            Object obj = this.f17531a;
            int iHashCode = obj == null ? 0 : obj.hashCode();
            Object obj2 = this.f17532b;
            return iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
        }

        @Override
        public final Object setValue(Object obj) {
            Object obj2 = this.f17532b;
            this.f17532b = obj;
            return obj2;
        }

        public final String toString() {
            return getKey() + UrlUtils.EQUAL_MARK + getValue();
        }
    }

    private final class c extends e {
        private c() {
            super();
        }

        @Override
        public Map.Entry next() {
            return a();
        }
    }

    private final class d extends AbstractSet {
        private d() {
        }

        @Override
        public void clear() {
            AntiCollisionHashMap.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            b entry2 = AntiCollisionHashMap.this.getEntry(entry.getKey());
            return entry2 != null && entry2.equals(entry);
        }

        @Override
        public Iterator iterator() {
            return AntiCollisionHashMap.this.newEntryIterator();
        }

        @Override
        public boolean remove(Object obj) {
            return AntiCollisionHashMap.this.removeMapping(obj) != null;
        }

        @Override
        public int size() {
            return AntiCollisionHashMap.this.size;
        }
    }

    private abstract class e implements Iterator {

        b f17537a;

        int f17538b;

        int f17539c;

        b f17540d;

        e() {
            b bVar;
            this.f17538b = AntiCollisionHashMap.this.modCount;
            if (AntiCollisionHashMap.this.size > 0) {
                b[] bVarArr = AntiCollisionHashMap.this.table;
                do {
                    int i10 = this.f17539c;
                    if (i10 >= bVarArr.length) {
                        return;
                    }
                    this.f17539c = i10 + 1;
                    bVar = bVarArr[i10];
                    this.f17537a = bVar;
                } while (bVar == null);
            }
        }

        final b a() {
            b bVar;
            if (AntiCollisionHashMap.this.modCount != this.f17538b) {
                throw new ConcurrentModificationException();
            }
            b bVar2 = this.f17537a;
            if (bVar2 == null) {
                throw new NoSuchElementException();
            }
            b bVar3 = bVar2.f17533c;
            this.f17537a = bVar3;
            if (bVar3 == null) {
                b[] bVarArr = AntiCollisionHashMap.this.table;
                do {
                    int i10 = this.f17539c;
                    if (i10 >= bVarArr.length) {
                        break;
                    }
                    this.f17539c = i10 + 1;
                    bVar = bVarArr[i10];
                    this.f17537a = bVar;
                } while (bVar == null);
            }
            this.f17540d = bVar2;
            return bVar2;
        }

        @Override
        public final boolean hasNext() {
            return this.f17537a != null;
        }

        @Override
        public void remove() {
            if (this.f17540d == null) {
                throw new IllegalStateException();
            }
            if (AntiCollisionHashMap.this.modCount != this.f17538b) {
                throw new ConcurrentModificationException();
            }
            Object obj = this.f17540d.f17531a;
            this.f17540d = null;
            AntiCollisionHashMap.this.removeEntryForKey(obj);
            this.f17538b = AntiCollisionHashMap.this.modCount;
        }
    }

    private final class f extends e {
        private f() {
            super();
        }

        @Override
        public Object next() {
            return a().getKey();
        }
    }

    private final class g extends AbstractSet {
        private g() {
        }

        @Override
        public void clear() {
            AntiCollisionHashMap.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            return AntiCollisionHashMap.this.containsKey(obj);
        }

        @Override
        public Iterator iterator() {
            return AntiCollisionHashMap.this.newKeyIterator();
        }

        @Override
        public boolean remove(Object obj) {
            return AntiCollisionHashMap.this.removeEntryForKey(obj) != null;
        }

        @Override
        public int size() {
            return AntiCollisionHashMap.this.size;
        }
    }

    private final class h extends e {
        private h() {
            super();
        }

        @Override
        public Object next() {
            return a().f17532b;
        }
    }

    private final class i extends AbstractCollection {
        private i() {
        }

        @Override
        public void clear() {
            AntiCollisionHashMap.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            return AntiCollisionHashMap.this.containsValue(obj);
        }

        @Override
        public Iterator iterator() {
            return AntiCollisionHashMap.this.newValueIterator();
        }

        @Override
        public int size() {
            return AntiCollisionHashMap.this.size;
        }
    }

    public AntiCollisionHashMap(int i10, float f10) {
        this.keySet = null;
        this.values = null;
        this.random = new Random().nextInt(DescriptorProtos$Edition.EDITION_99999_TEST_ONLY_VALUE);
        this.entrySet = null;
        if (i10 < 0) {
            throw new IllegalArgumentException("Illegal initial capacity: " + i10);
        }
        i10 = i10 > 1073741824 ? 1073741824 : i10;
        if (f10 <= 0.0f || Float.isNaN(f10)) {
            throw new IllegalArgumentException("Illegal load factor: " + f10);
        }
        int i11 = 1;
        while (i11 < i10) {
            i11 <<= 1;
        }
        this.loadFactor = f10;
        this.threshold = (int) (i11 * f10);
        this.table = new b[i11];
        init();
    }

    private boolean containsNullValue() {
        for (b bVar : this.table) {
            for (; bVar != null; bVar = bVar.f17533c) {
                if (bVar.f17532b == null) {
                    return true;
                }
            }
        }
        return false;
    }

    private Set<Map.Entry<K, V>> entrySet0() {
        Set<Map.Entry<K, V>> set = this.entrySet;
        if (set != null) {
            return set;
        }
        d dVar = new d();
        this.entrySet = dVar;
        return dVar;
    }

    private V getForNullKey() {
        for (b bVar = this.table[0]; bVar != null; bVar = bVar.f17533c) {
            if (bVar.f17531a == null) {
                return (V) bVar.f17532b;
            }
        }
        return null;
    }

    static int hash(int i10) {
        int i11 = i10 * i10;
        int i12 = i11 ^ ((i11 >>> 20) ^ (i11 >>> 12));
        return (i12 >>> 4) ^ ((i12 >>> 7) ^ i12);
    }

    private int hashString(String str) {
        int iCharAt = this.random * SEED;
        for (int i10 = 0; i10 < str.length(); i10++) {
            iCharAt = (iCharAt * KEY) ^ str.charAt(i10);
        }
        return ((iCharAt >> 1) ^ iCharAt) & M_MASK;
    }

    static int indexFor(int i10, int i11) {
        return i10 & (i11 - 1);
    }

    private void putAllForCreate(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            putForCreate(entry.getKey(), entry.getValue());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void putForCreate(K k10, V v10) {
        Object obj;
        int iHash = k10 == 0 ? 0 : k10 instanceof String ? hash(hashString((String) k10)) : hash(k10.hashCode());
        int iIndexFor = indexFor(iHash, this.table.length);
        for (b bVar = this.table[iIndexFor]; bVar != null; bVar = bVar.f17533c) {
            if (bVar.f17534d == iHash && ((obj = bVar.f17531a) == k10 || (k10 != 0 && k10.equals(obj)))) {
                bVar.f17532b = v10;
                return;
            }
        }
        createEntry(iHash, k10, v10, iIndexFor);
    }

    private V putForNullKey(V v10) {
        for (b bVar = this.table[0]; bVar != null; bVar = bVar.f17533c) {
            if (bVar.f17531a == null) {
                V v11 = (V) bVar.f17532b;
                bVar.f17532b = v10;
                return v11;
            }
        }
        this.modCount++;
        addEntry(0, null, v10, 0);
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.table = new b[objectInputStream.readInt()];
        init();
        int i10 = objectInputStream.readInt();
        for (int i11 = 0; i11 < i10; i11++) {
            putForCreate(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        Iterator<Map.Entry<K, V>> it = this.size > 0 ? entrySet0().iterator() : null;
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(this.table.length);
        objectOutputStream.writeInt(this.size);
        if (it != null) {
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                objectOutputStream.writeObject(next.getKey());
                objectOutputStream.writeObject(next.getValue());
            }
        }
    }

    void addEntry(int i10, K k10, V v10, int i11) {
        b[] bVarArr = this.table;
        bVarArr[i11] = new b(i10, k10, v10, bVarArr[i11]);
        int i12 = this.size;
        this.size = i12 + 1;
        if (i12 >= this.threshold) {
            resize(this.table.length * 2);
        }
    }

    @Override
    public void clear() {
        this.modCount++;
        b[] bVarArr = this.table;
        for (int i10 = 0; i10 < bVarArr.length; i10++) {
            bVarArr[i10] = null;
        }
        this.size = 0;
    }

    @Override
    public Object clone() {
        AntiCollisionHashMap antiCollisionHashMap;
        try {
            antiCollisionHashMap = (AntiCollisionHashMap) super.clone();
        } catch (CloneNotSupportedException unused) {
            antiCollisionHashMap = null;
        }
        antiCollisionHashMap.table = new b[this.table.length];
        antiCollisionHashMap.entrySet = null;
        antiCollisionHashMap.modCount = 0;
        antiCollisionHashMap.size = 0;
        antiCollisionHashMap.init();
        antiCollisionHashMap.putAllForCreate(this);
        return antiCollisionHashMap;
    }

    @Override
    public boolean containsKey(Object obj) {
        return getEntry(obj) != null;
    }

    @Override
    public boolean containsValue(Object obj) {
        if (obj == null) {
            return containsNullValue();
        }
        for (b bVar : this.table) {
            for (; bVar != null; bVar = bVar.f17533c) {
                if (obj.equals(bVar.f17532b)) {
                    return true;
                }
            }
        }
        return false;
    }

    void createEntry(int i10, K k10, V v10, int i11) {
        b[] bVarArr = this.table;
        bVarArr[i11] = new b(i10, k10, v10, bVarArr[i11]);
        this.size++;
    }

    @Override
    public Set<Map.Entry<K, V>> entrySet() {
        return entrySet0();
    }

    @Override
    public V get(Object obj) {
        Object obj2;
        if (obj == null) {
            return getForNullKey();
        }
        int iHash = obj instanceof String ? hash(hashString((String) obj)) : hash(obj.hashCode());
        b[] bVarArr = this.table;
        for (b bVar = bVarArr[indexFor(iHash, bVarArr.length)]; bVar != null; bVar = bVar.f17533c) {
            if (bVar.f17534d == iHash && ((obj2 = bVar.f17531a) == obj || obj.equals(obj2))) {
                return (V) bVar.f17532b;
            }
        }
        return null;
    }

    final b getEntry(Object obj) {
        Object obj2;
        int iHash = obj == null ? 0 : obj instanceof String ? hash(hashString((String) obj)) : hash(obj.hashCode());
        for (b bVar = r1[indexFor(iHash, this.table.length)]; bVar != null; bVar = bVar.f17533c) {
            if (bVar.f17534d == iHash && ((obj2 = bVar.f17531a) == obj || (obj != null && obj.equals(obj2)))) {
                return bVar;
            }
        }
        return null;
    }

    @Override
    public boolean isEmpty() {
        return this.size == 0;
    }

    @Override
    public Set<K> keySet() {
        Set<K> set = this.keySet;
        if (set != null) {
            return set;
        }
        g gVar = new g();
        this.keySet = gVar;
        return gVar;
    }

    Iterator<Map.Entry<K, V>> newEntryIterator() {
        return new c();
    }

    Iterator<K> newKeyIterator() {
        return new f();
    }

    Iterator<V> newValueIterator() {
        return new h();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public V put(K k10, V v10) {
        Object obj;
        if (k10 == 0) {
            return putForNullKey(v10);
        }
        int iHash = k10 instanceof String ? hash(hashString((String) k10)) : hash(k10.hashCode());
        int iIndexFor = indexFor(iHash, this.table.length);
        for (b bVar = this.table[iIndexFor]; bVar != null; bVar = bVar.f17533c) {
            if (bVar.f17534d == iHash && ((obj = bVar.f17531a) == k10 || k10.equals(obj))) {
                V v11 = (V) bVar.f17532b;
                bVar.f17532b = v10;
                return v11;
            }
        }
        this.modCount++;
        addEntry(iHash, k10, v10, iIndexFor);
        return null;
    }

    @Override
    public void putAll(Map<? extends K, ? extends V> map) {
        int size = map.size();
        if (size == 0) {
            return;
        }
        if (size > this.threshold) {
            int i10 = (int) ((size / this.loadFactor) + 1.0f);
            if (i10 > 1073741824) {
                i10 = 1073741824;
            }
            int length = this.table.length;
            while (length < i10) {
                length <<= 1;
            }
            if (length > this.table.length) {
                resize(length);
            }
        }
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override
    public V remove(Object obj) {
        b bVarRemoveEntryForKey = removeEntryForKey(obj);
        if (bVarRemoveEntryForKey == null) {
            return null;
        }
        return (V) bVarRemoveEntryForKey.f17532b;
    }

    final b removeEntryForKey(Object obj) {
        int iHash;
        Object obj2;
        if (obj == null) {
            iHash = 0;
        } else {
            iHash = obj instanceof String ? hash(hashString((String) obj)) : hash(obj.hashCode());
        }
        int iIndexFor = indexFor(iHash, this.table.length);
        b bVar = this.table[iIndexFor];
        b bVar2 = bVar;
        while (bVar != null) {
            b bVar3 = bVar.f17533c;
            if (bVar.f17534d == iHash && ((obj2 = bVar.f17531a) == obj || (obj != null && obj.equals(obj2)))) {
                this.modCount++;
                this.size--;
                if (bVar2 == bVar) {
                    this.table[iIndexFor] = bVar3;
                } else {
                    bVar2.f17533c = bVar3;
                }
                return bVar;
            }
            bVar2 = bVar;
            bVar = bVar3;
        }
        return bVar;
    }

    final b removeMapping(Object obj) {
        int iHash;
        if (!(obj instanceof Map.Entry)) {
            return null;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        if (key == null) {
            iHash = 0;
        } else {
            iHash = key instanceof String ? hash(hashString((String) key)) : hash(key.hashCode());
        }
        int iIndexFor = indexFor(iHash, this.table.length);
        b bVar = this.table[iIndexFor];
        b bVar2 = bVar;
        while (bVar != null) {
            b bVar3 = bVar.f17533c;
            if (bVar.f17534d == iHash && bVar.equals(entry)) {
                this.modCount++;
                this.size--;
                if (bVar2 == bVar) {
                    this.table[iIndexFor] = bVar3;
                } else {
                    bVar2.f17533c = bVar3;
                }
                return bVar;
            }
            bVar2 = bVar;
            bVar = bVar3;
        }
        return bVar;
    }

    void resize(int i10) {
        if (this.table.length == 1073741824) {
            this.threshold = Integer.MAX_VALUE;
            return;
        }
        b[] bVarArr = new b[i10];
        transfer(bVarArr);
        this.table = bVarArr;
        this.threshold = (int) (i10 * this.loadFactor);
    }

    @Override
    public int size() {
        return this.size;
    }

    void transfer(b[] bVarArr) {
        b[] bVarArr2 = this.table;
        int length = bVarArr.length;
        for (int i10 = 0; i10 < bVarArr2.length; i10++) {
            b bVar = bVarArr2[i10];
            if (bVar != null) {
                bVarArr2[i10] = null;
                while (true) {
                    b bVar2 = bVar.f17533c;
                    int iIndexFor = indexFor(bVar.f17534d, length);
                    bVar.f17533c = bVarArr[iIndexFor];
                    bVarArr[iIndexFor] = bVar;
                    if (bVar2 == null) {
                        break;
                    } else {
                        bVar = bVar2;
                    }
                }
            }
        }
    }

    @Override
    public Collection<V> values() {
        Collection<V> collection = this.values;
        if (collection != null) {
            return collection;
        }
        i iVar = new i();
        this.values = iVar;
        return iVar;
    }

    public AntiCollisionHashMap(int i10) {
        this(i10, 0.75f);
    }

    public AntiCollisionHashMap() {
        this.keySet = null;
        this.values = null;
        this.random = new Random().nextInt(DescriptorProtos$Edition.EDITION_99999_TEST_ONLY_VALUE);
        this.entrySet = null;
        this.loadFactor = 0.75f;
        this.threshold = 12;
        this.table = new b[16];
        init();
    }

    void init() {
    }

    public AntiCollisionHashMap(Map<? extends K, ? extends V> map) {
        this(Math.max(((int) (map.size() / 0.75f)) + 1, 16), 0.75f);
        putAllForCreate(map);
    }
}
