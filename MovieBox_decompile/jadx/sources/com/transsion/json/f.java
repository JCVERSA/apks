package com.transsion.json;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class f implements Set {

    final Set f44699a;

    final Set f44700b = new HashSet();

    public f(Set set) {
        this.f44699a = set;
    }

    public Set a() {
        return this.f44699a;
    }

    @Override
    public boolean add(Object obj) {
        return this.f44700b.add(obj);
    }

    @Override
    public boolean addAll(Collection collection) {
        return this.f44700b.addAll(collection);
    }

    @Override
    public void clear() {
        this.f44700b.clear();
    }

    @Override
    public boolean contains(Object obj) {
        return this.f44700b.contains(obj) || this.f44699a.contains(obj);
    }

    @Override
    public boolean containsAll(Collection collection) {
        return this.f44700b.containsAll(collection) || this.f44699a.containsAll(collection);
    }

    @Override
    public boolean isEmpty() {
        return this.f44700b.isEmpty() && this.f44699a.isEmpty();
    }

    @Override
    public Iterator iterator() {
        return new e(this.f44700b, this.f44699a);
    }

    @Override
    public boolean remove(Object obj) {
        return this.f44700b.remove(obj);
    }

    @Override
    public boolean removeAll(Collection collection) {
        return this.f44700b.removeAll(collection);
    }

    @Override
    public boolean retainAll(Collection collection) {
        return this.f44700b.retainAll(collection);
    }

    @Override
    public int size() {
        return this.f44700b.size() + this.f44699a.size();
    }

    @Override
    public Object[] toArray() {
        Object[] array = this.f44700b.toArray();
        Object[] array2 = this.f44699a.toArray();
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
