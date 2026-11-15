package defpackage;

import java.util.Collection;
import java.util.Iterator;

public abstract class r2 implements Collection, qe5 {
    public static final CharSequence c(r2 r2Var, Object obj) {
        return obj == r2Var ? "(this Collection)" : String.valueOf(obj);
    }

    @Override
    public boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean addAll(Collection<Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean contains(Object obj) {
        if (isEmpty()) {
            return false;
        }
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            if (y45.e(it.next(), obj)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean containsAll(Collection<? extends Object> collection) {
        y45.j(collection, "elements");
        Collection<? extends Object> collection2 = collection;
        if (collection2.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection2.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public abstract int getSize();

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final int size() {
        return getSize();
    }

    @Override
    public Object[] toArray() {
        return r71.a(this);
    }

    public String toString() {
        return i81.y0(this, ", ", "[", "]", 0, null, new e74() {
            @Override
            public final Object invoke(Object obj) {
                return r2.c(this.b, obj);
            }
        }, 24, null);
    }

    @Override
    public <T> T[] toArray(T[] tArr) {
        y45.j(tArr, "array");
        return (T[]) r71.b(this, tArr);
    }
}
