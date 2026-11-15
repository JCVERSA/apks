package com.google.common.collect;

import com.google.common.primitives.Ints;
import defpackage.e54;
import defpackage.k71;
import defpackage.r15;
import defpackage.v55;
import defpackage.xd8;
import defpackage.z44;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;

public final class ConcurrentHashMultiset<E> extends com.google.common.collect.b implements Serializable {
    private static final long serialVersionUID = 1;
    private final transient ConcurrentMap<E, AtomicInteger> countMap;

    public class b extends AbstractIterator {
        public final Iterator d;

        public b() {
            this.d = ConcurrentHashMultiset.this.countMap.entrySet().iterator();
        }

        @Override
        public j.a a() {
            while (this.d.hasNext()) {
                Map.Entry entry = (Map.Entry) this.d.next();
                int i = ((AtomicInteger) entry.getValue()).get();
                if (i != 0) {
                    return Multisets.g(entry.getKey(), i);
                }
            }
            return (j.a) b();
        }
    }

    public class c extends z44 {
        public j.a b;
        public final Iterator c;
        public final ConcurrentHashMultiset d;

        public c(ConcurrentHashMultiset concurrentHashMultiset, Iterator it) {
            this.c = it;
            this.d = concurrentHashMultiset;
        }

        @Override
        public Iterator f() {
            return this.c;
        }

        @Override
        public j.a next() {
            j.a aVar = (j.a) super.next();
            this.b = aVar;
            return aVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void remove() {
            xd8.v(this.b != null, "no calls to next() since the last call to remove()");
            this.d.setCount(this.b.getElement(), 0);
            this.b = null;
        }
    }

    public class d extends com.google.common.collect.b.C0105b {
        public d() {
            super();
        }

        @Override
        public ConcurrentHashMultiset b() {
            return ConcurrentHashMultiset.this;
        }

        public final List f() {
            ArrayList arrayListN = Lists.n(size());
            Iterators.a(arrayListN, iterator());
            return arrayListN;
        }

        @Override
        public Object[] toArray() {
            return f().toArray();
        }

        public d(ConcurrentHashMultiset concurrentHashMultiset, a aVar) {
            this();
        }

        @Override
        public Object[] toArray(Object[] objArr) {
            return f().toArray(objArr);
        }
    }

    public static class e {
        public static final n.b a = n.a(ConcurrentHashMultiset.class, "countMap");
    }

    public ConcurrentHashMultiset(ConcurrentMap<E, AtomicInteger> concurrentMap) {
        xd8.j(concurrentMap.isEmpty(), "the backing map (%s) must be empty", concurrentMap);
        this.countMap = concurrentMap;
    }

    public static <E> ConcurrentHashMultiset<E> create() {
        return new ConcurrentHashMultiset<>(new ConcurrentHashMap());
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        Object object = objectInputStream.readObject();
        Objects.requireNonNull(object);
        e.a.b(this, (ConcurrentMap) object);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private List<E> snapshot() {
        ArrayList arrayListN = Lists.n(size());
        for (j.a aVar : entrySet()) {
            Object element = aVar.getElement();
            for (int count = aVar.getCount(); count > 0; count--) {
                arrayListN.add(element);
            }
        }
        return arrayListN;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.countMap);
    }

    @Override
    public int add(E e2, int i) {
        AtomicInteger atomicIntegerPutIfAbsent;
        int i2;
        AtomicInteger atomicInteger;
        xd8.o(e2);
        if (i == 0) {
            return count(e2);
        }
        k71.d(i, "occurrences");
        do {
            atomicIntegerPutIfAbsent = (AtomicInteger) Maps.v(this.countMap, e2);
            if (atomicIntegerPutIfAbsent == null && (atomicIntegerPutIfAbsent = this.countMap.putIfAbsent(e2, new AtomicInteger(i))) == null) {
                return 0;
            }
            do {
                i2 = atomicIntegerPutIfAbsent.get();
                if (i2 == 0) {
                    atomicInteger = new AtomicInteger(i);
                    if (this.countMap.putIfAbsent(e2, atomicInteger) == null) {
                        break;
                    }
                } else {
                    try {
                    } catch (ArithmeticException unused) {
                        throw new IllegalArgumentException("Overflow adding " + i + " occurrences to a count of " + i2);
                    }
                }
            } while (!atomicIntegerPutIfAbsent.compareAndSet(i2, r15.a(i2, i)));
            return i2;
        } while (!this.countMap.replace(e2, atomicIntegerPutIfAbsent, atomicInteger));
        return 0;
    }

    @Override
    public void clear() {
        this.countMap.clear();
    }

    @Override
    public boolean contains(Object obj) {
        return super.contains(obj);
    }

    @Override
    public int count(Object obj) {
        AtomicInteger atomicInteger = (AtomicInteger) Maps.v(this.countMap, obj);
        if (atomicInteger == null) {
            return 0;
        }
        return atomicInteger.get();
    }

    @Override
    public Set<E> createElementSet() {
        return new a(this, this.countMap.keySet());
    }

    @Override
    @Deprecated
    public Set<j.a> createEntrySet() {
        return new d(this, null);
    }

    @Override
    public int distinctElements() {
        return this.countMap.size();
    }

    @Override
    public Iterator<E> elementIterator() {
        throw new AssertionError("should never be called");
    }

    @Override
    public Set elementSet() {
        return super.elementSet();
    }

    @Override
    public Iterator<j.a> entryIterator() {
        return new c(this, new b());
    }

    @Override
    public Set entrySet() {
        return super.entrySet();
    }

    @Override
    public boolean isEmpty() {
        return this.countMap.isEmpty();
    }

    @Override
    public Iterator<E> iterator() {
        return Multisets.i(this);
    }

    @Override
    public int remove(Object obj, int i) {
        int i2;
        int iMax;
        if (i == 0) {
            return count(obj);
        }
        k71.d(i, "occurrences");
        AtomicInteger atomicInteger = (AtomicInteger) Maps.v(this.countMap, obj);
        if (atomicInteger == null) {
            return 0;
        }
        do {
            i2 = atomicInteger.get();
            if (i2 == 0) {
                return 0;
            }
            iMax = Math.max(0, i2 - i);
        } while (!atomicInteger.compareAndSet(i2, iMax));
        if (iMax == 0) {
            this.countMap.remove(obj, atomicInteger);
        }
        return i2;
    }

    public boolean removeExactly(Object obj, int i) {
        int i2;
        int i3;
        if (i == 0) {
            return true;
        }
        k71.d(i, "occurrences");
        AtomicInteger atomicInteger = (AtomicInteger) Maps.v(this.countMap, obj);
        if (atomicInteger == null) {
            return false;
        }
        do {
            i2 = atomicInteger.get();
            if (i2 < i) {
                return false;
            }
            i3 = i2 - i;
        } while (!atomicInteger.compareAndSet(i2, i3));
        if (i3 == 0) {
            this.countMap.remove(obj, atomicInteger);
        }
        return true;
    }

    @Override
    public int setCount(E e2, int i) {
        AtomicInteger atomicIntegerPutIfAbsent;
        AtomicInteger atomicInteger;
        xd8.o(e2);
        k71.b(i, "count");
        do {
            atomicIntegerPutIfAbsent = (AtomicInteger) Maps.v(this.countMap, e2);
            if (atomicIntegerPutIfAbsent != null || (i != 0 && (atomicIntegerPutIfAbsent = this.countMap.putIfAbsent(e2, new AtomicInteger(i))) != null)) {
                while (true) {
                    int i2 = atomicIntegerPutIfAbsent.get();
                    if (i2 == 0) {
                        break;
                    }
                    if (atomicIntegerPutIfAbsent.compareAndSet(i2, i)) {
                        if (i == 0) {
                            this.countMap.remove(e2, atomicIntegerPutIfAbsent);
                        }
                        return i2;
                    }
                }
                if (i != 0) {
                    atomicInteger = new AtomicInteger(i);
                    if (this.countMap.putIfAbsent(e2, atomicInteger) == null) {
                        break;
                    }
                } else {
                    return 0;
                }
            } else {
                return 0;
            }
        } while (!this.countMap.replace(e2, atomicIntegerPutIfAbsent, atomicInteger));
        return 0;
    }

    @Override
    public int size() {
        Iterator<AtomicInteger> it = this.countMap.values().iterator();
        long j = 0;
        while (it.hasNext()) {
            j += (long) it.next().get();
        }
        return Ints.n(j);
    }

    @Override
    public Object[] toArray() {
        return snapshot().toArray();
    }

    public class a extends e54 {
        public final Set b;
        public final ConcurrentHashMultiset c;

        public a(ConcurrentHashMultiset concurrentHashMultiset, Set set) {
            this.b = set;
            this.c = concurrentHashMultiset;
        }

        @Override
        public boolean contains(Object obj) {
            return obj != null && g.c(this.b, obj);
        }

        @Override
        public boolean containsAll(Collection collection) {
            return standardContainsAll(collection);
        }

        @Override
        public boolean remove(Object obj) {
            return obj != null && g.d(this.b, obj);
        }

        @Override
        public boolean removeAll(Collection collection) {
            return standardRemoveAll(collection);
        }

        @Override
        public Set f() {
            return this.b;
        }
    }

    public static <E> ConcurrentHashMultiset<E> create(Iterable<? extends E> iterable) {
        ConcurrentHashMultiset<E> concurrentHashMultisetCreate = create();
        v55.a(concurrentHashMultisetCreate, iterable);
        return concurrentHashMultisetCreate;
    }

    @Override
    public <T> T[] toArray(T[] tArr) {
        return (T[]) snapshot().toArray(tArr);
    }

    public static <E> ConcurrentHashMultiset<E> create(ConcurrentMap<E, AtomicInteger> concurrentMap) {
        return new ConcurrentHashMultiset<>(concurrentMap);
    }

    @Override
    public boolean setCount(E e2, int i, int i2) {
        xd8.o(e2);
        k71.b(i, "oldCount");
        k71.b(i2, "newCount");
        AtomicInteger atomicInteger = (AtomicInteger) Maps.v(this.countMap, e2);
        if (atomicInteger == null) {
            if (i != 0) {
                return false;
            }
            return i2 == 0 || this.countMap.putIfAbsent(e2, new AtomicInteger(i2)) == null;
        }
        int i3 = atomicInteger.get();
        if (i3 == i) {
            if (i3 == 0) {
                if (i2 == 0) {
                    this.countMap.remove(e2, atomicInteger);
                    return true;
                }
                AtomicInteger atomicInteger2 = new AtomicInteger(i2);
                return this.countMap.putIfAbsent(e2, atomicInteger2) == null || this.countMap.replace(e2, atomicInteger, atomicInteger2);
            }
            if (atomicInteger.compareAndSet(i3, i2)) {
                if (i2 == 0) {
                    this.countMap.remove(e2, atomicInteger);
                }
                return true;
            }
        }
        return false;
    }
}
