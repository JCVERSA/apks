package defpackage;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

public class c1d extends h1d {
    public final Object[] b;

    public c1d(Object[] objArr) {
        this.b = objArr;
    }

    @Override
    public boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean contains(Object obj) {
        return Arrays.binarySearch(this.b, obj) >= 0;
    }

    @Override
    public Iterator iterator() {
        return new yzc(this.b);
    }

    @Override
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.b.length;
    }
}
