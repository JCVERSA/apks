package com.squareup.moshi;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

final class LinkedHashTreeMap<K, V> extends AbstractMap<K, V> implements Serializable {
    static final boolean $assertionsDisabled = false;
    public static final Comparator b = new Comparator<Comparable>() {
        @Override
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    };
    final Comparator<? super K> comparator;
    private LinkedHashTreeMap<K, V>.c entrySet;
    final f header;
    private LinkedHashTreeMap<K, V>.d keySet;
    int modCount;
    int size;
    f[] table;
    int threshold;

    public static final class a {
        public f a;
        public int b;
        public int c;
        public int d;

        public void a(f fVar) {
            fVar.d = null;
            fVar.b = null;
            fVar.c = null;
            fVar.j = 1;
            int i = this.b;
            if (i > 0) {
                int i2 = this.d;
                if ((i2 & 1) == 0) {
                    this.d = i2 + 1;
                    this.b = i - 1;
                    this.c++;
                }
            }
            fVar.b = this.a;
            this.a = fVar;
            int i3 = this.d;
            int i4 = i3 + 1;
            this.d = i4;
            int i5 = this.b;
            if (i5 > 0 && (i4 & 1) == 0) {
                this.d = i3 + 2;
                this.b = i5 - 1;
                this.c++;
            }
            int i6 = 4;
            while (true) {
                int i7 = i6 - 1;
                if ((this.d & i7) != i7) {
                    return;
                }
                int i8 = this.c;
                if (i8 == 0) {
                    f fVar2 = this.a;
                    f fVar3 = fVar2.b;
                    f fVar4 = fVar3.b;
                    fVar3.b = fVar4.b;
                    this.a = fVar3;
                    fVar3.c = fVar4;
                    fVar3.d = fVar2;
                    fVar3.j = fVar2.j + 1;
                    fVar4.b = fVar3;
                    fVar2.b = fVar3;
                } else if (i8 == 1) {
                    f fVar5 = this.a;
                    f fVar6 = fVar5.b;
                    this.a = fVar6;
                    fVar6.d = fVar5;
                    fVar6.j = fVar5.j + 1;
                    fVar5.b = fVar6;
                    this.c = 0;
                } else if (i8 == 2) {
                    this.c = 0;
                }
                i6 *= 2;
            }
        }

        public void b(int i) {
            this.b = ((Integer.highestOneBit(i) * 2) - 1) - i;
            this.d = 0;
            this.c = 0;
            this.a = null;
        }

        public f c() {
            f fVar = this.a;
            if (fVar.b == null) {
                return fVar;
            }
            throw new IllegalStateException();
        }
    }

    public static class b {
        public f a;

        public f a() {
            f fVar = this.a;
            if (fVar == null) {
                return null;
            }
            f fVar2 = fVar.b;
            fVar.b = null;
            f fVar3 = fVar.d;
            while (true) {
                f fVar4 = fVar2;
                fVar2 = fVar3;
                if (fVar2 == null) {
                    this.a = fVar4;
                    return fVar;
                }
                fVar2.b = fVar4;
                fVar3 = fVar2.c;
            }
        }

        public void b(f fVar) {
            f fVar2 = null;
            while (fVar != null) {
                fVar.b = fVar2;
                fVar2 = fVar;
                fVar = fVar.c;
            }
            this.a = fVar2;
        }
    }

    public final class c extends AbstractSet {

        public class a extends e {
            public a() {
                super();
            }

            @Override
            public Map.Entry next() {
                return a();
            }
        }

        public c() {
        }

        @Override
        public void clear() {
            LinkedHashTreeMap.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && LinkedHashTreeMap.this.findByEntry((Map.Entry) obj) != null;
        }

        @Override
        public Iterator iterator() {
            return new a();
        }

        @Override
        public boolean remove(Object obj) {
            f fVarFindByEntry;
            if (!(obj instanceof Map.Entry) || (fVarFindByEntry = LinkedHashTreeMap.this.findByEntry((Map.Entry) obj)) == null) {
                return false;
            }
            LinkedHashTreeMap.this.removeInternal(fVarFindByEntry, true);
            return true;
        }

        @Override
        public int size() {
            return LinkedHashTreeMap.this.size;
        }
    }

    public final class d extends AbstractSet {

        public class a extends e {
            public a() {
                super();
            }

            @Override
            public Object next() {
                return a().g;
            }
        }

        public d() {
        }

        @Override
        public void clear() {
            LinkedHashTreeMap.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            return LinkedHashTreeMap.this.containsKey(obj);
        }

        @Override
        public Iterator iterator() {
            return new a();
        }

        @Override
        public boolean remove(Object obj) {
            return LinkedHashTreeMap.this.removeInternalByKey(obj) != null;
        }

        @Override
        public int size() {
            return LinkedHashTreeMap.this.size;
        }
    }

    public abstract class e implements Iterator {
        public f b;
        public f c = null;
        public int d;

        public e() {
            this.b = LinkedHashTreeMap.this.header.e;
            this.d = LinkedHashTreeMap.this.modCount;
        }

        public final f a() {
            f fVar = this.b;
            LinkedHashTreeMap linkedHashTreeMap = LinkedHashTreeMap.this;
            if (fVar == linkedHashTreeMap.header) {
                throw new NoSuchElementException();
            }
            if (linkedHashTreeMap.modCount != this.d) {
                throw new ConcurrentModificationException();
            }
            this.b = fVar.e;
            this.c = fVar;
            return fVar;
        }

        @Override
        public final boolean hasNext() {
            return this.b != LinkedHashTreeMap.this.header;
        }

        @Override
        public final void remove() {
            f fVar = this.c;
            if (fVar == null) {
                throw new IllegalStateException();
            }
            LinkedHashTreeMap.this.removeInternal(fVar, true);
            this.c = null;
            this.d = LinkedHashTreeMap.this.modCount;
        }
    }

    public LinkedHashTreeMap() {
        this(null);
    }

    public static <K, V> f[] doubleCapacity(f[] fVarArr) {
        int length = fVarArr.length;
        f[] fVarArr2 = new f[length * 2];
        b bVar = new b();
        a aVar = new a();
        a aVar2 = new a();
        for (int i = 0; i < length; i++) {
            f fVar = fVarArr[i];
            if (fVar != null) {
                bVar.b(fVar);
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    f fVarA = bVar.a();
                    if (fVarA == null) {
                        break;
                    }
                    if ((fVarA.h & length) == 0) {
                        i2++;
                    } else {
                        i3++;
                    }
                }
                aVar.b(i2);
                aVar2.b(i3);
                bVar.b(fVar);
                while (true) {
                    f fVarA2 = bVar.a();
                    if (fVarA2 == null) {
                        break;
                    }
                    if ((fVarA2.h & length) == 0) {
                        aVar.a(fVarA2);
                    } else {
                        aVar2.a(fVarA2);
                    }
                }
                fVarArr2[i] = i2 > 0 ? aVar.c() : null;
                fVarArr2[i + length] = i3 > 0 ? aVar2.c() : null;
            }
        }
        return fVarArr2;
    }

    public static int g(int i) {
        int i2 = i ^ ((i >>> 20) ^ (i >>> 12));
        return (i2 >>> 4) ^ ((i2 >>> 7) ^ i2);
    }

    private Object writeReplace() throws ObjectStreamException {
        return new LinkedHashMap(this);
    }

    public final void a() {
        f[] fVarArrDoubleCapacity = doubleCapacity(this.table);
        this.table = fVarArrDoubleCapacity;
        this.threshold = (fVarArrDoubleCapacity.length / 2) + (fVarArrDoubleCapacity.length / 4);
    }

    public final boolean b(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public final void c(f fVar, boolean z) {
        while (fVar != null) {
            f fVar2 = fVar.c;
            f fVar3 = fVar.d;
            int i = fVar2 != null ? fVar2.j : 0;
            int i2 = fVar3 != null ? fVar3.j : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                f fVar4 = fVar3.c;
                f fVar5 = fVar3.d;
                int i4 = (fVar4 != null ? fVar4.j : 0) - (fVar5 != null ? fVar5.j : 0);
                if (i4 != -1 && (i4 != 0 || z)) {
                    f(fVar3);
                }
                e(fVar);
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                f fVar6 = fVar2.c;
                f fVar7 = fVar2.d;
                int i5 = (fVar6 != null ? fVar6.j : 0) - (fVar7 != null ? fVar7.j : 0);
                if (i5 != 1 && (i5 != 0 || z)) {
                    e(fVar2);
                }
                f(fVar);
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                fVar.j = i + 1;
                if (z) {
                    return;
                }
            } else {
                fVar.j = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            fVar = fVar.b;
        }
    }

    @Override
    public void clear() {
        Arrays.fill(this.table, (Object) null);
        this.size = 0;
        this.modCount++;
        f fVar = this.header;
        f fVar2 = fVar.e;
        while (fVar2 != fVar) {
            f fVar3 = fVar2.e;
            fVar2.f = null;
            fVar2.e = null;
            fVar2 = fVar3;
        }
        fVar.f = fVar;
        fVar.e = fVar;
    }

    @Override
    public boolean containsKey(Object obj) {
        return findByObject(obj) != null;
    }

    public final void d(f fVar, f fVar2) {
        f fVar3 = fVar.b;
        fVar.b = null;
        if (fVar2 != null) {
            fVar2.b = fVar3;
        }
        if (fVar3 == null) {
            int i = fVar.h;
            f[] fVarArr = this.table;
            fVarArr[i & (fVarArr.length - 1)] = fVar2;
        } else if (fVar3.c == fVar) {
            fVar3.c = fVar2;
        } else {
            fVar3.d = fVar2;
        }
    }

    public final void e(f fVar) {
        f fVar2 = fVar.c;
        f fVar3 = fVar.d;
        f fVar4 = fVar3.c;
        f fVar5 = fVar3.d;
        fVar.d = fVar4;
        if (fVar4 != null) {
            fVar4.b = fVar;
        }
        d(fVar, fVar3);
        fVar3.c = fVar;
        fVar.b = fVar3;
        int iMax = Math.max(fVar2 != null ? fVar2.j : 0, fVar4 != null ? fVar4.j : 0) + 1;
        fVar.j = iMax;
        fVar3.j = Math.max(iMax, fVar5 != null ? fVar5.j : 0) + 1;
    }

    @Override
    public Set<Map.Entry<K, V>> entrySet() {
        LinkedHashTreeMap<K, V>.c cVar = this.entrySet;
        if (cVar != null) {
            return cVar;
        }
        LinkedHashTreeMap<K, V>.c cVar2 = new c();
        this.entrySet = cVar2;
        return cVar2;
    }

    public final void f(f fVar) {
        f fVar2 = fVar.c;
        f fVar3 = fVar.d;
        f fVar4 = fVar2.c;
        f fVar5 = fVar2.d;
        fVar.c = fVar5;
        if (fVar5 != null) {
            fVar5.b = fVar;
        }
        d(fVar, fVar2);
        fVar2.d = fVar;
        fVar.b = fVar2;
        int iMax = Math.max(fVar3 != null ? fVar3.j : 0, fVar5 != null ? fVar5.j : 0) + 1;
        fVar.j = iMax;
        fVar2.j = Math.max(iMax, fVar4 != null ? fVar4.j : 0) + 1;
    }

    public f find(K k, boolean z) {
        int iCompareTo;
        f fVar;
        Comparator<? super K> comparator = this.comparator;
        f[] fVarArr = this.table;
        int iG = g(k.hashCode());
        int length = (fVarArr.length - 1) & iG;
        f fVar2 = fVarArr[length];
        if (fVar2 != null) {
            Comparable comparable = comparator == b ? (Comparable) k : null;
            while (true) {
                iCompareTo = comparable != null ? comparable.compareTo(fVar2.g) : comparator.compare(k, (Object) fVar2.g);
                if (iCompareTo == 0) {
                    return fVar2;
                }
                f fVar3 = iCompareTo < 0 ? fVar2.c : fVar2.d;
                if (fVar3 == null) {
                    break;
                }
                fVar2 = fVar3;
            }
        } else {
            iCompareTo = 0;
        }
        f fVar4 = fVar2;
        int i = iCompareTo;
        if (!z) {
            return null;
        }
        f fVar5 = this.header;
        if (fVar4 != null) {
            fVar = new f(fVar4, k, iG, fVar5, fVar5.f);
            if (i < 0) {
                fVar4.c = fVar;
            } else {
                fVar4.d = fVar;
            }
            c(fVar4, true);
        } else {
            if (comparator == b && !(k instanceof Comparable)) {
                throw new ClassCastException(k.getClass().getName() + " is not Comparable");
            }
            fVar = new f(fVar4, k, iG, fVar5, fVar5.f);
            fVarArr[length] = fVar;
        }
        int i2 = this.size;
        this.size = i2 + 1;
        if (i2 > this.threshold) {
            a();
        }
        this.modCount++;
        return fVar;
    }

    public f findByEntry(Map.Entry<?, ?> entry) {
        f fVarFindByObject = findByObject(entry.getKey());
        if (fVarFindByObject == null || !b(fVarFindByObject.i, entry.getValue())) {
            return null;
        }
        return fVarFindByObject;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public f findByObject(Object obj) {
        if (obj == 0) {
            return null;
        }
        try {
            return find(obj, false);
        } catch (ClassCastException unused) {
            return null;
        }
    }

    @Override
    public V get(Object obj) {
        f fVarFindByObject = findByObject(obj);
        if (fVarFindByObject != null) {
            return (V) fVarFindByObject.i;
        }
        return null;
    }

    @Override
    public Set<K> keySet() {
        LinkedHashTreeMap<K, V>.d dVar = this.keySet;
        if (dVar != null) {
            return dVar;
        }
        LinkedHashTreeMap<K, V>.d dVar2 = new d();
        this.keySet = dVar2;
        return dVar2;
    }

    @Override
    public V put(K k, V v) {
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        f fVarFind = find(k, true);
        V v2 = (V) fVarFind.i;
        fVarFind.i = v;
        return v2;
    }

    @Override
    public V remove(Object obj) {
        f fVarRemoveInternalByKey = removeInternalByKey(obj);
        if (fVarRemoveInternalByKey != null) {
            return (V) fVarRemoveInternalByKey.i;
        }
        return null;
    }

    public void removeInternal(f fVar, boolean z) {
        int i;
        if (z) {
            f fVar2 = fVar.f;
            fVar2.e = fVar.e;
            fVar.e.f = fVar2;
            fVar.f = null;
            fVar.e = null;
        }
        f fVar3 = fVar.c;
        f fVar4 = fVar.d;
        f fVar5 = fVar.b;
        int i2 = 0;
        if (fVar3 == null || fVar4 == null) {
            if (fVar3 != null) {
                d(fVar, fVar3);
                fVar.c = null;
            } else if (fVar4 != null) {
                d(fVar, fVar4);
                fVar.d = null;
            } else {
                d(fVar, null);
            }
            c(fVar5, false);
            this.size--;
            this.modCount++;
            return;
        }
        f fVarB = fVar3.j > fVar4.j ? fVar3.b() : fVar4.a();
        removeInternal(fVarB, false);
        f fVar6 = fVar.c;
        if (fVar6 != null) {
            i = fVar6.j;
            fVarB.c = fVar6;
            fVar6.b = fVarB;
            fVar.c = null;
        } else {
            i = 0;
        }
        f fVar7 = fVar.d;
        if (fVar7 != null) {
            i2 = fVar7.j;
            fVarB.d = fVar7;
            fVar7.b = fVarB;
            fVar.d = null;
        }
        fVarB.j = Math.max(i, i2) + 1;
        d(fVar, fVarB);
    }

    public f removeInternalByKey(Object obj) {
        f fVarFindByObject = findByObject(obj);
        if (fVarFindByObject != null) {
            removeInternal(fVarFindByObject, true);
        }
        return fVarFindByObject;
    }

    @Override
    public int size() {
        return this.size;
    }

    public LinkedHashTreeMap(Comparator<? super K> comparator) {
        this.size = 0;
        this.modCount = 0;
        this.comparator = comparator == null ? b : comparator;
        this.header = new f();
        f[] fVarArr = new f[16];
        this.table = fVarArr;
        this.threshold = (fVarArr.length / 2) + (fVarArr.length / 4);
    }

    public static final class f implements Map.Entry {
        public f b;
        public f c;
        public f d;
        public f e;
        public f f;
        public final Object g;
        public final int h;
        public Object i;
        public int j;

        public f() {
            this.g = null;
            this.h = -1;
            this.f = this;
            this.e = this;
        }

        public f a() {
            f fVar = this.c;
            while (true) {
                f fVar2 = fVar;
                f fVar3 = this;
                this = fVar2;
                if (this == null) {
                    return fVar3;
                }
                fVar = this.c;
            }
        }

        public f b() {
            f fVar = this.d;
            while (true) {
                f fVar2 = fVar;
                f fVar3 = this;
                this = fVar2;
                if (this == null) {
                    return fVar3;
                }
                fVar = this.d;
            }
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = this.g;
            if (obj2 == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!obj2.equals(entry.getKey())) {
                return false;
            }
            Object obj3 = this.i;
            if (obj3 == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!obj3.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override
        public Object getKey() {
            return this.g;
        }

        @Override
        public Object getValue() {
            return this.i;
        }

        @Override
        public int hashCode() {
            Object obj = this.g;
            int iHashCode = obj == null ? 0 : obj.hashCode();
            Object obj2 = this.i;
            return iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
        }

        @Override
        public Object setValue(Object obj) {
            Object obj2 = this.i;
            this.i = obj;
            return obj2;
        }

        public String toString() {
            return this.g + "=" + this.i;
        }

        public f(f fVar, Object obj, int i, f fVar2, f fVar3) {
            this.b = fVar;
            this.g = obj;
            this.h = i;
            this.j = 1;
            this.e = fVar2;
            this.f = fVar3;
            fVar3.e = this;
            fVar2.f = this;
        }
    }
}
