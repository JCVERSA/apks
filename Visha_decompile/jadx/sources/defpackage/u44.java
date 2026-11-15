package defpackage;

import com.google.common.collect.Iterators;
import com.google.common.collect.g;
import java.util.Collection;
import java.util.Iterator;

public abstract class u44 extends c54 implements Collection {
    public boolean add(Object obj) {
        return f().add(obj);
    }

    public boolean addAll(Collection<Object> collection) {
        return f().addAll(collection);
    }

    public void clear() {
        f().clear();
    }

    public boolean contains(Object obj) {
        return f().contains(obj);
    }

    public boolean containsAll(Collection<?> collection) {
        return f().containsAll(collection);
    }

    @Override
    public abstract Collection f();

    @Override
    public boolean isEmpty() {
        return f().isEmpty();
    }

    public Iterator<Object> iterator() {
        return f().iterator();
    }

    public boolean remove(Object obj) {
        return f().remove(obj);
    }

    public boolean removeAll(Collection<?> collection) {
        return f().removeAll(collection);
    }

    public boolean retainAll(Collection<?> collection) {
        return f().retainAll(collection);
    }

    @Override
    public int size() {
        return f().size();
    }

    public boolean standardAddAll(Collection<Object> collection) {
        return Iterators.a(this, collection.iterator());
    }

    public void standardClear() {
        Iterators.d(iterator());
    }

    public boolean standardContains(Object obj) {
        return Iterators.f(iterator(), obj);
    }

    public boolean standardContainsAll(Collection<?> collection) {
        return g.a(this, collection);
    }

    public boolean standardIsEmpty() {
        return !iterator().hasNext();
    }

    public boolean standardRemove(Object obj) {
        Iterator<Object> it = iterator();
        while (it.hasNext()) {
            if (kc7.a(it.next(), obj)) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    public boolean standardRemoveAll(Collection<?> collection) {
        return Iterators.u(iterator(), collection);
    }

    public boolean standardRetainAll(Collection<?> collection) {
        return Iterators.w(iterator(), collection);
    }

    public Object[] standardToArray() {
        return toArray(new Object[size()]);
    }

    public String standardToString() {
        return g.e(this);
    }

    public Object[] toArray() {
        return f().toArray();
    }

    public <T> T[] toArray(T[] tArr) {
        return (T[]) f().toArray(tArr);
    }

    public <T> T[] standardToArray(T[] tArr) {
        return (T[]) vb7.g(this, tArr);
    }
}
