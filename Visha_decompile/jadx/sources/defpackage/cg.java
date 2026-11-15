package defpackage;

import java.util.Collection;
import java.util.Iterator;

public final class cg implements Collection, qe5 {
    public final Object[] b;
    public final boolean c;

    public cg(Object[] objArr, boolean z) {
        y45.j(objArr, "values");
        this.b = objArr;
        this.c = z;
    }

    @Override
    public boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public int b() {
        return this.b.length;
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean contains(Object obj) {
        return hi.P(this.b, obj);
    }

    @Override
    public boolean containsAll(Collection collection) {
        y45.j(collection, "elements");
        Collection collection2 = collection;
        if (collection2.isEmpty()) {
            return true;
        }
        Iterator it = collection2.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean isEmpty() {
        return this.b.length == 0;
    }

    @Override
    public Iterator iterator() {
        return xg.a(this.b);
    }

    @Override
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final int size() {
        return b();
    }

    @Override
    public Object[] toArray(Object[] objArr) {
        y45.j(objArr, "array");
        return r71.b(this, objArr);
    }

    @Override
    public final Object[] toArray() {
        return x71.b(this.b, this.c);
    }
}
