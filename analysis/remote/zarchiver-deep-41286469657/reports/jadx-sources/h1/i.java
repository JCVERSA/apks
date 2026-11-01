package h1;

import java.util.Collection;
import java.util.Iterator;
import java.util.WeakHashMap;

public final class i<T> implements Collection<T> {

    public final WeakHashMap<T, Boolean> f1130a = new WeakHashMap<>();

    @Override
    public final boolean add(T t2) {
        WeakHashMap<T, Boolean> weakHashMap = this.f1130a;
        if (weakHashMap.containsKey(t2)) {
            return false;
        }
        weakHashMap.put(t2, Boolean.TRUE);
        return true;
    }

    @Override
    public final boolean addAll(Collection<? extends T> collection) {
        return false;
    }

    @Override
    public final void clear() {
        this.f1130a.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f1130a.containsKey(obj);
    }

    @Override
    public final boolean containsAll(Collection<?> collection) {
        return false;
    }

    @Override
    public final boolean isEmpty() {
        return this.f1130a.isEmpty();
    }

    @Override
    public final Iterator<T> iterator() {
        return this.f1130a.keySet().iterator();
    }

    @Override
    public final boolean remove(Object obj) {
        return this.f1130a.remove(obj) != null;
    }

    @Override
    public final boolean removeAll(Collection<?> collection) {
        return false;
    }

    @Override
    public final boolean retainAll(Collection<?> collection) {
        return false;
    }

    @Override
    public final int size() {
        return this.f1130a.size();
    }

    @Override
    public final Object[] toArray() {
        return this.f1130a.keySet().toArray();
    }

    @Override
    public final <T> T[] toArray(T[] tArr) {
        return (T[]) this.f1130a.keySet().toArray(tArr);
    }
}
