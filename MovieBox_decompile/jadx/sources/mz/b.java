package mz;

import java.util.ConcurrentModificationException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.WeakHashMap;

class b implements Iterator {

    private static final WeakHashMap f66830c = new WeakHashMap();

    private Object f66831a;

    private Iterator f66832b;

    b(Object obj, Iterator it) {
        if (obj == null) {
            throw new IllegalArgumentException("parent object is null");
        }
        if (it == null) {
            throw new IllegalArgumentException("cannot wrap null iterator");
        }
        this.f66831a = obj;
        if (it.hasNext()) {
            this.f66832b = it;
            a(this);
        }
    }

    private static synchronized void a(b bVar) {
        try {
            WeakHashMap weakHashMap = f66830c;
            Set hashSet = (Set) weakHashMap.get(bVar.f66831a);
            if (hashSet == null) {
                hashSet = new HashSet();
                weakHashMap.put(bVar.f66831a, hashSet);
            }
            hashSet.add(bVar);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private static synchronized void b(b bVar) {
        if (!((Set) f66830c.get(bVar.f66831a)).contains(bVar)) {
            throw new ConcurrentModificationException();
        }
    }

    static synchronized void c(Object obj) {
        Set set = (Set) f66830c.get(obj);
        if (set != null) {
            set.clear();
        }
    }

    private static synchronized void d(b bVar) {
        Set set = (Set) f66830c.get(bVar.f66831a);
        if (set != null) {
            set.remove(bVar);
        }
    }

    @Override
    public boolean hasNext() {
        if (this.f66832b == null) {
            return false;
        }
        b(this);
        return this.f66832b.hasNext();
    }

    @Override
    public Object next() {
        Iterator it = this.f66832b;
        if (it == null || !it.hasNext()) {
            throw new NoSuchElementException();
        }
        b(this);
        try {
            return this.f66832b.next();
        } finally {
            if (!this.f66832b.hasNext()) {
                this.f66832b = null;
                d(this);
            }
        }
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
