package com.google.common.collect;

import com.google.common.primitives.Ints;
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

public final class ConcurrentHashMultiset<E> extends com.google.common.collect.d implements Serializable {
    private static final long serialVersionUID = 1;
    private final transient ConcurrentMap<E, AtomicInteger> countMap;

    class b extends AbstractIterator {

        private final Iterator f29539c;

        b() {
            this.f29539c = ConcurrentHashMultiset.this.countMap.entrySet().iterator();
        }

        @Override
        public l3.a a() {
            while (this.f29539c.hasNext()) {
                Map.Entry entry = (Map.Entry) this.f29539c.next();
                int i10 = ((AtomicInteger) entry.getValue()).get();
                if (i10 != 0) {
                    return Multisets.g(entry.getKey(), i10);
                }
            }
            return (l3.a) b();
        }
    }

    class c extends m2 {

        private l3.a f29541a;

        final Iterator f29542b;

        final ConcurrentHashMultiset f29543c;

        c(ConcurrentHashMultiset concurrentHashMultiset, Iterator it) {
            this.f29542b = it;
            this.f29543c = concurrentHashMultiset;
        }

        @Override
        public Iterator l() {
            return this.f29542b;
        }

        @Override
        public l3.a next() {
            l3.a aVar = (l3.a) super.next();
            this.f29541a = aVar;
            return aVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void remove() {
            com.google.common.base.m.v(this.f29541a != null, "no calls to next() since the last call to remove()");
            this.f29543c.setCount(this.f29541a.getElement(), 0);
            this.f29541a = null;
        }
    }

    private class d extends com.google.common.collect.d.b {
        private d() {
            super();
        }

        private List c() {
            ArrayList arrayListN = Lists.n(size());
            Iterators.a(arrayListN, iterator());
            return arrayListN;
        }

        @Override
        public ConcurrentHashMultiset a() {
            return ConcurrentHashMultiset.this;
        }

        @Override
        public Object[] toArray() {
            return c().toArray();
        }

        d(ConcurrentHashMultiset concurrentHashMultiset, a aVar) {
            this();
        }

        @Override
        public Object[] toArray(Object[] objArr) {
            return c().toArray(objArr);
        }
    }

    private static class e {

        static final w3.b f29545a = w3.a(ConcurrentHashMultiset.class, "countMap");
    }

    ConcurrentHashMultiset(ConcurrentMap<E, AtomicInteger> concurrentMap) {
        com.google.common.base.m.j(concurrentMap.isEmpty(), "the backing map (%s) must be empty", concurrentMap);
        this.countMap = concurrentMap;
    }

    public static <E> ConcurrentHashMultiset<E> create() {
        return new ConcurrentHashMultiset<>(new ConcurrentHashMap());
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        Object object = objectInputStream.readObject();
        Objects.requireNonNull(object);
        e.f29545a.b(this, (ConcurrentMap) object);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private List<E> snapshot() {
        ArrayList arrayListN = Lists.n(size());
        for (l3.a aVar : entrySet()) {
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
    public int add(E e10, int i10) {
        AtomicInteger atomicIntegerPutIfAbsent;
        int i11;
        AtomicInteger atomicInteger;
        com.google.common.base.m.o(e10);
        if (i10 == 0) {
            return count(e10);
        }
        e2.d(i10, "occurrences");
        do {
            atomicIntegerPutIfAbsent = (AtomicInteger) Maps.v(this.countMap, e10);
            if (atomicIntegerPutIfAbsent == null && (atomicIntegerPutIfAbsent = this.countMap.putIfAbsent(e10, new AtomicInteger(i10))) == null) {
                return 0;
            }
            do {
                i11 = atomicIntegerPutIfAbsent.get();
                if (i11 == 0) {
                    atomicInteger = new AtomicInteger(i10);
                    if (this.countMap.putIfAbsent(e10, atomicInteger) == null) {
                        break;
                    }
                } else {
                    try {
                    } catch (ArithmeticException unused) {
                        throw new IllegalArgumentException("Overflow adding " + i10 + " occurrences to a count of " + i11);
                    }
                }
            } while (!atomicIntegerPutIfAbsent.compareAndSet(i11, com.google.common.math.d.a(i11, i10)));
            return i11;
        } while (!this.countMap.replace(e10, atomicIntegerPutIfAbsent, atomicInteger));
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
    Set<E> createElementSet() {
        return new a(this, this.countMap.keySet());
    }

    @Override
    @Deprecated
    public Set<l3.a> createEntrySet() {
        return new d(this, null);
    }

    @Override
    int distinctElements() {
        return this.countMap.size();
    }

    @Override
    Iterator<E> elementIterator() {
        throw new AssertionError("should never be called");
    }

    @Override
    public Set elementSet() {
        return super.elementSet();
    }

    @Override
    Iterator<l3.a> entryIterator() {
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
    public int remove(Object obj, int i10) {
        int i11;
        int iMax;
        if (i10 == 0) {
            return count(obj);
        }
        e2.d(i10, "occurrences");
        AtomicInteger atomicInteger = (AtomicInteger) Maps.v(this.countMap, obj);
        if (atomicInteger == null) {
            return 0;
        }
        do {
            i11 = atomicInteger.get();
            if (i11 == 0) {
                return 0;
            }
            iMax = Math.max(0, i11 - i10);
        } while (!atomicInteger.compareAndSet(i11, iMax));
        if (iMax == 0) {
            this.countMap.remove(obj, atomicInteger);
        }
        return i11;
    }

    public boolean removeExactly(Object obj, int i10) {
        int i11;
        int i12;
        if (i10 == 0) {
            return true;
        }
        e2.d(i10, "occurrences");
        AtomicInteger atomicInteger = (AtomicInteger) Maps.v(this.countMap, obj);
        if (atomicInteger == null) {
            return false;
        }
        do {
            i11 = atomicInteger.get();
            if (i11 < i10) {
                return false;
            }
            i12 = i11 - i10;
        } while (!atomicInteger.compareAndSet(i11, i12));
        if (i12 == 0) {
            this.countMap.remove(obj, atomicInteger);
        }
        return true;
    }

    @Override
    public int setCount(E e10, int i10) {
        AtomicInteger atomicIntegerPutIfAbsent;
        AtomicInteger atomicInteger;
        com.google.common.base.m.o(e10);
        e2.b(i10, "count");
        do {
            atomicIntegerPutIfAbsent = (AtomicInteger) Maps.v(this.countMap, e10);
            if (atomicIntegerPutIfAbsent != null || (i10 != 0 && (atomicIntegerPutIfAbsent = this.countMap.putIfAbsent(e10, new AtomicInteger(i10))) != null)) {
                while (true) {
                    int i11 = atomicIntegerPutIfAbsent.get();
                    if (i11 == 0) {
                        break;
                    }
                    if (atomicIntegerPutIfAbsent.compareAndSet(i11, i10)) {
                        if (i10 == 0) {
                            this.countMap.remove(e10, atomicIntegerPutIfAbsent);
                        }
                        return i11;
                    }
                }
                if (i10 != 0) {
                    atomicInteger = new AtomicInteger(i10);
                    if (this.countMap.putIfAbsent(e10, atomicInteger) == null) {
                        break;
                    }
                } else {
                    return 0;
                }
            } else {
                return 0;
            }
        } while (!this.countMap.replace(e10, atomicIntegerPutIfAbsent, atomicInteger));
        return 0;
    }

    @Override
    public int size() {
        Iterator<AtomicInteger> it = this.countMap.values().iterator();
        long j10 = 0;
        while (it.hasNext()) {
            j10 += (long) it.next().get();
        }
        return Ints.n(j10);
    }

    @Override
    public Object[] toArray() {
        return snapshot().toArray();
    }

    class a extends s2 {

        final Set f29537a;

        final ConcurrentHashMultiset f29538b;

        a(ConcurrentHashMultiset concurrentHashMultiset, Set set) {
            this.f29537a = set;
            this.f29538b = concurrentHashMultiset;
        }

        @Override
        public boolean contains(Object obj) {
            return obj != null && f2.c(this.f29537a, obj);
        }

        @Override
        public boolean containsAll(Collection collection) {
            return standardContainsAll(collection);
        }

        @Override
        public boolean remove(Object obj) {
            return obj != null && f2.d(this.f29537a, obj);
        }

        @Override
        public boolean removeAll(Collection collection) {
            return standardRemoveAll(collection);
        }

        @Override
        public Set l() {
            return this.f29537a;
        }
    }

    public static <E> ConcurrentHashMultiset<E> create(Iterable<? extends E> iterable) {
        ConcurrentHashMultiset<E> concurrentHashMultisetCreate = create();
        g3.a(concurrentHashMultisetCreate, iterable);
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
    public boolean setCount(E e10, int i10, int i11) {
        com.google.common.base.m.o(e10);
        e2.b(i10, "oldCount");
        e2.b(i11, "newCount");
        AtomicInteger atomicInteger = (AtomicInteger) Maps.v(this.countMap, e10);
        if (atomicInteger == null) {
            if (i10 != 0) {
                return false;
            }
            return i11 == 0 || this.countMap.putIfAbsent(e10, new AtomicInteger(i11)) == null;
        }
        int i12 = atomicInteger.get();
        if (i12 == i10) {
            if (i12 == 0) {
                if (i11 == 0) {
                    this.countMap.remove(e10, atomicInteger);
                    return true;
                }
                AtomicInteger atomicInteger2 = new AtomicInteger(i11);
                return this.countMap.putIfAbsent(e10, atomicInteger2) == null || this.countMap.replace(e10, atomicInteger, atomicInteger2);
            }
            if (atomicInteger.compareAndSet(i12, i11)) {
                if (i11 == 0) {
                    this.countMap.remove(e10, atomicInteger);
                }
                return true;
            }
        }
        return false;
    }
}
