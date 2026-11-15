package defpackage;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class bbd implements Set {
    public final Set b;
    public final Set c = new HashSet();

    public bbd(Set set) {
        this.b = set;
    }

    public Set a() {
        return this.b;
    }

    @Override
    public boolean add(Object obj) {
        return this.c.add(obj);
    }

    @Override
    public boolean addAll(Collection collection) {
        return this.c.addAll(collection);
    }

    @Override
    public void clear() {
        this.c.clear();
    }

    @Override
    public boolean contains(Object obj) {
        return this.c.contains(obj) || this.b.contains(obj);
    }

    @Override
    public boolean containsAll(Collection collection) {
        return this.c.containsAll(collection) || this.b.containsAll(collection);
    }

    @Override
    public boolean isEmpty() {
        return this.c.isEmpty() && this.b.isEmpty();
    }

    @Override
    public Iterator iterator() {
        return new l9d(this.c, this.b);
    }

    @Override
    public boolean remove(Object obj) {
        return this.c.remove(obj);
    }

    @Override
    public boolean removeAll(Collection collection) {
        return this.c.removeAll(collection);
    }

    @Override
    public boolean retainAll(Collection collection) {
        return this.c.retainAll(collection);
    }

    @Override
    public int size() {
        return this.c.size() + this.b.size();
    }

    @Override
    public Object[] toArray() {
        Object[] array = this.c.toArray();
        Object[] array2 = this.b.toArray();
        Object[] objArr = new Object[array.length + array2.length];
        System.arraycopy(array, 0, objArr, 0, array.length);
        System.arraycopy(array2, 0, objArr, array.length, array2.length);
        return objArr;
    }

    @Override
    public Object[] toArray(Object[] objArr) {
        throw new IllegalStateException("Not implemeneted");
    }
}
